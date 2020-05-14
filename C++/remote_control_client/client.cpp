#define Phoenix_No_WPI // remove WPI dependencies
#include <string>
#include <iostream>
#include <chrono>
#include <thread>
#include <cstdio>
#include <cstdlib>
#include <unistd.h>
#include <cstring>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <netdb.h> 
#include <wiringPi.h>
#include <softPwm.h>

void error(const char *msg)
{
    perror(msg);
    exit(0);
}

/** simple wrapper for code cleanup */
void sleepApp(int ms)
{
	std::this_thread::sleep_for(std::chrono::milliseconds(ms));
}

int main(int argc, char *argv[])
{
    int sockfd, portno, n;
    struct sockaddr_in serv_addr;
    struct hostent *server;

    char buffer[256];
    if (argc < 1) {
       fprintf(stderr,"usage %s hostname port\n", argv[0]);
       exit(0);
    }
    char *ip_address = "10.191.25.250";
    portno = 5007;
    sockfd = socket(AF_INET, SOCK_STREAM, 0);
    if (sockfd < 0) 
        error("ERROR opening socket");
    server = gethostbyname(ip_address);
    if (server == NULL) {
        fprintf(stderr,"ERROR, no such host\n");
        exit(0);
    }
    bzero((char *) &serv_addr, sizeof(serv_addr));
    serv_addr.sin_family = AF_INET;
    bcopy((char *)server->h_addr, 
         (char *)&serv_addr.sin_addr.s_addr,
         server->h_length);
    serv_addr.sin_port = htons(portno);
    if (connect(sockfd,(struct sockaddr *) &serv_addr,sizeof(serv_addr)) < 0) 
        error("ERROR connecting");
    
    wiringPiSetup();

    pinMode(0, OUTPUT); // Steering
    softPwmCreate(0, 15, 100);

    pinMode(2, OUTPUT); // Throttle
    softPwmCreate(2, 0, 100);
    
    while (true) {
        bzero(buffer, 5);
        n = read(sockfd, buffer, 5);
        if (n < 0) {
            error("ERROR reading from socket");
	    break;
	}
        int steer_int = (int)buffer[0] + 256*((int)buffer[1]);
        int throttle_int = (int)buffer[2] + 256*((int)buffer[3]);
	//int button0 = (int)buffer[12];
        int button1 = (int)buffer[4];
        /*int button2 = (int)buffer[14];
        int button3 = (int)buffer[15];
        int button4 = (int)buffer[16];
        int button5 = (int)buffer[17];
        int button6 = (int)buffer[18];
        int button7 = (int)buffer[19];
        int button8 = (int)buffer[20];
        int button9 = (int)buffer[21];
        int button10 = (int)buffer[22];
        int button11 = (int)buffer[23];
        int button12 = (int)buffer[24];*/
        double steer = (double)((steer_int / 32768.0) - 1);
        double throttle = (double) throttle_int / 65535.0;
        double steering_duty = 15 + 5*steer;
	double throttle_duty = 100*throttle;
	printf("steering: %f, throttle: %f\n", steering_duty, throttle_duty);
        //printf("B0: %d, B1: %d, B2: %d, B3: %d, B4: %d, B5: %d, B6: %d, B7: %d, B8: %d, B9: %d, B10: %d, B11: %d, B12: %d\n", button0, button1, button2, button3, button4, button5, button6, button7, button8, button9, button10, button11, button12);
	softPwmWrite(0, steering_duty);
	softPwmWrite(2, throttle_duty);
	
	sleepApp(20);
	if (button1 != 0) {
	  break;
	}
    }
    close(sockfd);
    printf("Socket closed\n");
    return 0;
}
