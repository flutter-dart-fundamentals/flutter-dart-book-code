/* Smart Home Devices (mixin)
Listing 7-11: Composing smart home devices from mixins */

mixin WiFiConnectable   { void connectToWiFi(String n) => print('Connecting to $n...'); }
mixin VoiceControllable { void listenForCommand()      => print('Listening...'); }

// SmartTV wants WiFi, activity logging, and voice control
class SmartTV with WiFiConnectable, ActivityLogger, VoiceControllable { ... }

// SmartFridge wants WiFi and activity logging only
class SmartFridge with WiFiConnectable, ActivityLogger { ... }

// SmartSpeaker wants WiFi and voice control only
class SmartSpeaker with WiFiConnectable, VoiceControllable { ... }

// SmartFridge cannot call listenForCommand() -- COMPILER ERROR
// SmartSpeaker cannot call logActivity("x") -- COMPILER ERROR
