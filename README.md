# Network Tap v2 MiTM Edition
Use a Raspberry PI 4 between two network devices to intercept and capture both incoming and outgoing traffic on an external Disk Drive. This is actually a *hardware* variance of the Man in the Middle Attack (MiTM) which eliminates the requirement for network speed degradation of the [Passive Taps](https://greatscottgadgets.com/throwingstar/).


## How it works
Plug Network Tap v2 between the device you want to monitor and your network equipment and power the device. Network Tap will boot up and set a network bridge between the two Network Interfaces capturing all incoming and outgoing traffic. When you finish with the capture, push the power button to initiate the safe shutdown procedure, and when the activity led turns off and the power led is steady red, you can remove the device. Unplug the external drive and plug it into your PC in order to view the captures.
The Real Time Clock (RTC) is used to store the time even when the Network Tap v2 is not powered, in order to correctly timestamp the captures. In the specific configuration, we use the I2C0 bus on GPIO Pins 0 and 1 as per [documentation](https://github.com/raspberrypi/firmware/blob/master/boot/overlays/README).

## Bill of Materials
- Raspberry PI 4 Model B
- Micro SD Card and Power Supply (as per [documentation](https://www.raspberrypi.com/documentation/computers/getting-started.html))
- [Joy-it Aluminium Case](https://joy-it.net/en/products/RB-AlucaseP4+01)
- Kingston SA400S37/240G
- Startech USB312SAT3CB - USB 3.1 to 2.5" SATA Hard Drive Adapter
- Tiny RTC I2C Module DS1307 Real Time Clock
- Tactile Push Button 12 x 12 mm
- **USB to ethernet adapter (TP-Link UE300)**
## Schematic
<p align="center">
  <img src="/schematic/networkTap.png">
</p>

<a href="https://novamostra.com/2023/12/29/network-tap-v2-man-in-the-middle-edition/">Read more at novamostra.com</a>

For a similar implementation which capture all the traffic from a Network's device SPAN port see [my previous Network Tap implementation](https://novamostra.com/2023/11/12/plug-and-play-raspberry-pi-4-network-tap/)
