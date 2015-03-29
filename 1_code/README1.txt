# Tennis Assistant Code #

## Web Application ##
The web application is located in SEVABTR-appspot
Dependencies
- Python 2.7 
- Google App Engine (https://cloud.google.com/appengine/docs) 
To run the local web server, download the Google App Engine (it should download to a directory 
named google_app_engine). Then, through bash, change directories to google_app_engine and 
run 
python dev_appserver.py ~/Downloads/1_code/SEVABTR-appspot 
 
If you have 1_code/SEVABTR­appspot in a different directory, change your command 
accordingly. 

Once the development server is running, you should be able to see the website by navigating to 
http://localhost:8080 in your browser.

The Web application can also be accessed by the url http://sevatbr-v002.appspot.com with
correct login key for a specific robot. For this particular robot, the TEST KEY is:

General23

## Computer Vision ##
Dependencies
Our computer vision has the following dependencies: 
- Python 2.7 
- SimpleCV (http://simplecv.org/download.html) 
- OpenCV (http://opencv.org) 
- A webcam 
Running Tennis Ball Detection
To run the continuous ball detection, through bash, change directories to SEVABTR/visual and run: 
python tennis_ball_runner.py 
 
This will continuously read video input from your connected webcam and display it. If it detects 
a tennis ball in the middle of the screen then it will outline it with a green circle. 
 
Running Tennis Ball Detection Tests
To run the unit tests for Tennis Ball detection change directories to SEVABTR/visual and run: 
python tennis_ball_test.py

Running Basket Detection
To run the continuous basket detection, through bash, change directories to visual and run: 
python basket_runner.py 
 
## Text to Speech ##
Dependencies
- Festival 
- Speakers 
Running Text to Speech
To be able to hear a text command converted to speech run the file specified below which can be 
found in SEVATBR/speech/text­to­speech/ directory. You will be prompted to enter a command 
which then will be played through your speakers. 
./text­to­speech.sh

## Speech to Text ##
Dependencies
- Microphone
- Gstreamer
- Pocketsphinx
Running Speech to Text
To test out to to if the speech to text engine can recognize your voice, the program is located
in the SEVATBR/speech/speech-to-text directory. You can compile the program and test it out
with either the following commands:

  $ make clean
  $ make
  $ ./test
 
## Robot Movement ##
Dependencies
- Robot  
- Robot Controller (Xbox controller) 
- USB keyboard/mouse 
- HDMI Lilliput screen 
Running Robot Movement
In order to run robot manual control connect all the dependencies listed. Make sure that all the 
motors are connected and batteries are fully loaded. Once ready navigate to SEVATBR/core/ 
directory and compile necessary files using ‘make’ command. Once compiled successfully run 
the command below and control the robot via controler. The joystick can be used for 
left/right/forward/backwards movement while L1/R1 can be used to scoop/release ball and 
L2/R2 can be used to move the robot arm up/down. 
sudo ./core

## Serial Communication ##

Much of the serial communication can be observed through either the arduino program or through
the console. In order to access any particular arduino, you can connect open any serial port
labelled with /dev/ttyACM* at B38400. The feedback will start printing immediately, and to control:
[1]:
  w\n   go forward
  s\n   go backward
  a\n   turn left
  d\n   turn right
   \n   stop everything
[2]:
  o\n   raise arm
  k\n   lower arm
[3]:
  p\n   spin outward
  l\n   spin inward

## Socket Communication ##
Dependencies
- Wireless dongle or Ethernet

The sockets can be communicated to by their speech signals, which is continuously polled in the
executable test found in SEVATBR/manual. In order to run the executable, go into the folder,
type make test, and then run ./test to view a continuous poll of poses. These poses are derived
from the bitfield received from the server at 10 times per second.

