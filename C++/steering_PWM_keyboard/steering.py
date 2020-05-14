import RPi.GPIO as GPIO
from getch import getch, pause

GPIO.setmode(GPIO.BCM)

GPIO.setup(21, GPIO.OUT)
steering_pwm = GPIO.PWM(21, 100)

tolerance = 0.2
duty_cycle = 15.0
steering_pwm.start(duty_cycle)

while True:
  print(duty_cycle)
  input = getch()

  if (input == 'a' or input == 'A'):
    new_duty = duty_cycle - tolerance
    if ((new_duty >= 10.0) and (new_duty <= 20.0)):
      steering_pwm.ChangeDutyCycle(new_duty)
      duty_cycle = new_duty
    
  if (input == 'd' or input == 'D'):
    new_duty = duty_cycle + tolerance
    if ((new_duty >= 10.0) and (new_duty <= 20.0)):
      steering_pwm.ChangeDutyCycle(new_duty)
      duty_cycle = new_duty

  if (input == 's' or input == 'S'):
    steering_pwm.ChangeDutyCycle(15)
    duty_cycle = 15.0

  if (input == 'w' or input == 'W'):
    steering_pwm.ChangeDutyCycle(10)
    duty_cycle = 10.0

  if (input == 'x' or input == 'X'):
    steering_pwm.ChangeDutyCycle(20)
    duty_cycle = 20.0

  if (input == 'q' or input == 'Q'):
    break;
