# Network Tap 
Use this Raspberry PI implementation of Network tap to capture all the traffic from a SPAN\MIRROR port of a switch\router.


## How it works
Plug the network cable and the power cord to the Network Tap to power it on. The device will boot up and automatically start capturing packets in [promiscuous mode](https://en.wikipedia.org/wiki/Promiscuous_mode) mode. When you finish with the capture, push the power button to initiate the safe shutdown procedure, and when the activity led turns off and the power led is steady red, you can remove the device. Unplug the external drive and plug it into your PC in order to view the captures.
The Real Time Clock (RTC) is used to store the time even when the Network Tap is not used in order to correctly timestamp the captures. In the specific configuration, we use the I2C0 bus on GPIO Pins 0 and 1 as per [documentation](https://github.com/raspberrypi/firmware/blob/master/boot/overlays/README).

## Bill of Materials
- Raspberry PI 4 Model B
- Micro SD Card and Power Supply (as per [documentation](https://www.raspberrypi.com/documentation/computers/getting-started.html))
- [Joy-it Aluminium Case](https://joy-it.net/en/products/RB-AlucaseP4+01)
- Kingston SA400S37/240G
- Startech USB312SAT3CB - USB 3.1 to 2.5" SATA Hard Drive Adapter
- Tiny RTC I2C Module DS1307 Real Time Clock
- Tactile Push Button 12 x 12 mm
  
## Schematic
<p align="center">
  <img src="/schematic/networkTap.png">
</p>


[Read more at novamostra.com](https://novamostra.com/2023/11/12/plug-and-play-raspberry-pi-4-network-tap/)

For a similar implementation which intercept the network traffic between two devices see [Network Tap MiTM Edition](https://novamostra.com/2023/12/29/network-tap-v2-man-in-the-middle-edition/)
