
/* A simple server in the internet domain using TCP
   The port number is passed as an argument */
#define Phoenix_No_WPI // remove WPI dependencies
#include <string>
#include <iostream>
#include <chrono>
#include <thread>
#include <SDL2/SDL.h>
#include <wiringPi.h>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <unistd.h>
#include <sys/types.h> 
#include <sys/socket.h>
#include <netinet/in.h>

void error(const char *msg)
{
    perror(msg);
    exit(1);
}

/** simple wrapper for code cleanup */
void sleepApp(int ms)
{
	std::this_thread::sleep_for(std::chrono::milliseconds(ms));
}

int main(int argc, char *argv[])
{
     int sockfd, newsockfd, portno;
     socklen_t clilen;
     char buffer[256];
     struct sockaddr_in serv_addr, cli_addr;
     int n;
     if (argc < 1) {
         fprintf(stderr,"ERROR, no port provided\n");
         exit(1);
     }
     sockfd = socket(AF_INET, SOCK_STREAM, 0);
     if (sockfd < 0) 
        error("ERROR opening socket");
     int true_val = 1;
     if (setsockopt(sockfd, SOL_SOCKET, SO_REUSEADDR, &true_val, sizeof(int)))
        error("ERROR setting socket options");
     bzero((char *) &serv_addr, sizeof(serv_addr));
     portno = 5007;
     serv_addr.sin_family = AF_INET;
     serv_addr.sin_addr.s_addr = INADDR_ANY;
     serv_addr.sin_port = htons(portno);
     if (bind(sockfd, (struct sockaddr *) &serv_addr,
              sizeof(serv_addr)) < 0) 
              error("ERROR on binding");
     listen(sockfd,5);
     clilen = sizeof(cli_addr);
     newsockfd = accept(sockfd, 
                 (struct sockaddr *) &cli_addr, 
                 &clilen);
     if (newsockfd < 0) 
          error("ERROR on accept");
     int exit = 0;
          
     while (true) {
		/* we are looking for gamepad (first time or after disconnect),
			neutral drive until gamepad (re)connected. */
	        
		// wait for controller
		printf("Waiting for controller...\n");
		while (true) {
			/* SDL seems somewhat fragile, shut it down and bring it up */
			SDL_Quit();
			SDL_Init(SDL_INIT_GAMECONTROLLER);

			/* poll for gamepad */
			int res = SDL_NumJoysticks();
			if (res > 0) { break; }
			if (res < 0) { printf("Err = %i\n", res); }

			/* yield for a bit */
			sleepApp(20);
		}
		printf("Waiting for controller...Found one\n");

		// Open the joystick for reading and store its handle in the joy variable
		SDL_Joystick *joy = SDL_JoystickOpen(0);
		if (joy == NULL) {
			/* back to top of while loop */
			continue;
		}

		// Get information about the joystick
		const char *name = SDL_JoystickName(joy);
		const int num_axes = SDL_JoystickNumAxes(joy);
		const int num_buttons = SDL_JoystickNumButtons(joy);
		const int num_hats = SDL_JoystickNumHats(joy);
		printf("Now reading from joystick '%s' with:\n"
			"%d axes\n"
			"%d buttons\n"
			"%d hats\n\n",
			name,
			num_axes,
			num_buttons,
			num_hats);
          // Keep reading the state of the joystick in a loop
                printf("Press circle to exit\n");
		while (true) {
			/* poll for disconnects or bad things */
			SDL_Event event;
			if (SDL_PollEvent(&event)) {
				if (event.type == SDL_QUIT) { break; }
				if (event.jdevice.type == SDL_JOYDEVICEREMOVED) { break; }
			}

			/* grab some stick values */
			int steer = (SDL_JoystickGetAxis(joy, 0) + 32768);
			int throttle = (SDL_JoystickGetAxis(joy, 5) + 32768);
			/*int axis1 = SDL_JoystickGetAxis(joy, 1);
			int axis2 = SDL_JoystickGetAxis(joy, 2);
			int axis3 = SDL_JoystickGetAxis(joy, 3);
			int axis4 = SDL_JoystickGetAxis(joy, 4);*/
			
			//char button0 = SDL_JoystickGetButton(joy, 0);
			char button1 = SDL_JoystickGetButton(joy, 1);
			/*char button2 = SDL_JoystickGetButton(joy, 2);
			char button3 = SDL_JoystickGetButton(joy, 3);
			char button4 = SDL_JoystickGetButton(joy, 4);
			char button5 = SDL_JoystickGetButton(joy, 5);
			char button6 = SDL_JoystickGetButton(joy, 6);
			char button7 = SDL_JoystickGetButton(joy, 7);
			char button8 = SDL_JoystickGetButton(joy, 8);
			char button9 = SDL_JoystickGetButton(joy, 9);
			char button10 = SDL_JoystickGetButton(joy, 10);
			char button11 = SDL_JoystickGetButton(joy, 11);
			char button12 = SDL_JoystickGetButton(joy, 12);*/
               
               bzero(buffer, 5);
               buffer[0] = (char)(steer & 0xFF);
               buffer[1] = (char)((steer >> 8) & 0xFF);
	       /*buffer[2] = (char)(axis1 & 0xFF);
	       buffer[3] = (char)((axis1 >> 8) & 0xFF);
	       buffer[4] = (char)(axis2 & 0xFF);
	       buffer[5] = (char)((axis2 >> 8) & 0xFF);
	       buffer[6] = (char)(axis3 & 0xFF);
	       buffer[7] = (char)((axis3 >> 8) & 0xFF);
	       buffer[8] = (char)(axis4 & 0xFF);
	       buffer[9] = (char)((axis4 >> 8) & 0xFF);*/
               buffer[2] = (char)((throttle & 0xFF));
               buffer[3] = (char)(((throttle >> 8) & 0xFF));
	       //buffer[12] = button0;
	       buffer[4] = button1;
	       /*buffer[14] = button2;
	       buffer[15] = button3;
	       buffer[16] = button4;
	       buffer[17] = button5;
	       buffer[18] = button6;
	       buffer[19] = button7;
	       buffer[20] = button8;
	       buffer[21] = button9;
	       buffer[22] = button10;
	       buffer[23] = button11;
	       buffer[24] = button12;*/
	       n = write(newsockfd,buffer,5);
               if (n < 0) error("ERROR writing to socket");
			
	       sleepApp(20);
	       if (button1 != 0) {
		 exit = 1;
		 break;
	       }
          }
            
          /* we've left the loop, likely due to gamepad disconnect */
		//drive(0, 0);
		SDL_JoystickClose(joy);
		printf("controller disconnected\n");
                if (exit != 0) {
		  break;
		}
     }
     
     SDL_Quit();
     close(newsockfd);
     close(sockfd);
     printf("Socket closed\n");
     return 0; 
}
