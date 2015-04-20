// Written by Jeff Meunier for CSE1010

// You can probably understand this program quite well.
// Things you might not understand:
// - Variables work like they do in Matlab, except when you first create a
//   variable you must indicate its type: int, float, double, etc.
// - Constant values are defined like variables are, but using the const keyword.
//   In Matlab, you create a constant by having a function return it.
// - Functions may return only one value, and the type of the value must be specified
//   in the function header definition.
// - A function that does not return a value uses the return type specifier 'void'.
// - Arrays are declared and accessed using square brackets, not parentheses.

// The light sensor will be connected to analog input pin A5.
const int LIGHT_SENSOR = 5;

// The LED will be connected to digital pin labeled ~5. This pin will be
// used as an analog output pin. It uses a PWM frequency of 62.5KHz.
const int LED = 5;

// These are the brightness settings to be used for the digits 0 through 9.
// The values can be anywhere in the range 0 to 255, where 0 is off
// and 255 is fully on. Here I provide 10 evenly spaced values for your
// LED viewing enjoyment.
int settings[10] = {
  0, 28, 57, 85, 113, 142, 170, 198, 227, 255
};

// The setup function is called only:
// A) When the program is uploaded to the board.
// B) When the power is turned on.
// C) When the on-board reset button is pressed.
void setup()
{
  // Make sure all pins are put in high impedence state and that their
  // registers are set low before doing anything. This is not strictly
  // necessary, but it puts the board in a known and harmless state.
  for(int i=0; i<20; i++) // count from 0 to 19
  {
    pinMode(i, INPUT);
    digitalWrite(i, 0);
  }

  // Set the output modes of the specific pins that we will use.
  pinMode(13, OUTPUT); // on-board LED
  pinMode(LED, OUTPUT);
  pinMode(LIGHT_SENSOR, INPUT);

  // Set the serial port to communicate at 115200 bits per second.
  // This is the fastest a serial port can go.
  Serial.begin(115200);
}

// The loop function is called repeatedly after the setup function finishes.
// In other words, the loop function is called by the Arduino board in an
// unbounded loop. There is a loop inside the Arduino that looks like this:
//   while(true) { loop(); }
// So we have only to fill in the loop function.
void loop()
{
  // If there is a character available from the serial port, process it.
  // Otherwise skip over everything until the next iteration of the loop.
  if(Serial.available())
  {
    // read a character from the serial port
    int chr = Serial.read();
    // determine what character it is
    switch(chr)
    {
      // choose 1 of 10 light level settings
      case '0': // without a break statement, each of these cases falls through
      case '1':
      case '2':
      case '3':
      case '4':
      case '5':
      case '6':
      case '7':
      case '8':
      case '9':
      {
        // this changes the character '0' to '9' into a number 0 to 9
        int index = chr - '0';
        // get one of the light levels from the settings array
        // thus, '0' to '9' is converted into a pre-set level from 0 to 255
        int level = settings[index];
        // set the LED to that level
        analogWrite(LED, level);
        break; // skip over the remaining cases
      }
      
      // read the light sensor
      case 'R':
      case 'r':
      {
        // read the light sensor
        int level = analogRead(LIGHT_SENSOR);
        // send the light level value to the client (Matlab)
        // The light level is a 16-bit value, so send the first 8 bits as
        // a single byte, then send the second 8 bits.
        Serial.write(level >> 8);
        Serial.write(level & 0xFF);
        break;
      }
      
      // switch on the on-board LED
      case 'T': // true
      case 't':
      case 'Y': // yes
      case 'y':
      {
        digitalWrite(13, 1);
        break;
      }

      // switch off the on-board LED
      case 'F': // false
      case 'f':
      case 'N': // no
      case 'n':
      {
        digitalWrite(13, 0);
        break;
      }

    } // end switch
  } // end if
} // end function

