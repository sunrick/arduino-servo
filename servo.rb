require 'artoo'

connection :arduino, adaptor: :firmata, port: '/dev/cu.usbmodem1411'

device :board, :driver => :device_info
device :servo, :driver => :servo, :pin => 9 # pin must be a PWM pin

work do
  puts "Firmware name: #{board.firmware_name}"
  puts "Firmata version: #{board.version}"
  puts "We about to do some MAGIC!"

  servo.min
  every 0.25 do
    integer = File.read('./arduino.txt').to_i
    if servo.current_angle != integer
      servo.move(integer)
    end
    puts "Servo current angle is: #{servo.current_angle} degrees."
  end

end
