# Network Tap
Use a Raspberry PI 4 to capture network traffic on an external Disk Drive.

## How it works
Plug the network cable and the power cord to the Network Tap to power it on. The device will boot on and automatically start capturing packets in [promiscuous mode](https://en.wikipedia.org/wiki/Promiscuous_mode). When you finish with the capture push the power button to initiate the safe shutdown procedure and when the activity led turn of and the power led is steady red, you can remove the device. Unplug the external drive and plug it to your pc in order to view the captures.
The Real Time Clock(RTC) is used to store the time even when the Network Tap is not used, in order to correctly timestamp the captures. In the specific configuration we use the I2C0 bus on GPIO Pins 0&1 as per [documentation](https://github.com/raspberrypi/firmware/blob/master/boot/overlays/README)

## Bill of Materials
Raspberry PI 4 Model B
Micro SD Card and Power Supply as per [documentation](https://www.raspberrypi.com/documentation/computers/getting-started.html))
Kingston SA400S37/240G
Startech USB312SAT3CB - USB 3.1 to 2.5" SATA Hard Drive Adapter
Tiny RTC I2C Module DS1307 Real Time Clock
Tactile Push Button 12 x 12 mm
## Schematic
<p align="center">
  <img src="/schematic/networTap.png">
</p>

<a href="https://novamostra.com/2023/11/12/plug-and-play-raspberry-pi-4-network-tap/">Read more at novamostra.com</a>
