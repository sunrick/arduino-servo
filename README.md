# Arduino Servo Controller

### Summary

Fun little programs to remotely control an arduino servo motor. Everything is super hardcoded and gross. I use a text file to share data from sinatra to the arduino program because it just works. (I know its gross)

### Installation Commands

In order to get going you need an Arduino, a servo motor, the artoo and sinatra gems, gort cli tool thing.

`gem install artoo-arduino`
`gem install sinatra`
`brew install hybridgroup/tools/gort`

Plug in your Arduino.

`gort scan serial`

You should see something that looks like this:

`/dev/cu.usbmodem1411`

Or this:

`/dev/tty.usbmodem1411`

`.usbmodem1411` will look different on other computers, also `cu` worked for me, but examples say to use `tty`. (who knows lawl)

`gort arduino upload firmata /dev/cu.usbmodem1411`

Change `connection :arduino, adaptor: :firmata, port: '/dev/cu.usbmodem1411'` to whatever port is right. Again `cu` worked for me.


### Run the project

Make sure your servo motor has power connected to 5V (black cable to 5V), ground to ground (red cable to ground), white cable to PIN9.

Run in terminal tab 1:

`ruby servo.rb`

If you don't see "We about to do some MAGIC!" in terminal try changing the port option (see above).

Run in terminal tab 2:

`ruby sinatra.rb`

Go to:

`localhost:4567`

Give access to other haxxors:

`ngrok http 4567`

### Use the project

Click the buttons or change the input and the servo motor should move. My servo motor can only use 30 to 150 degrees. Change whatever you want.


### Resources

* Artoo Arduino documentation (google it i am lazy). Search for servo motor!
* Google search brah

