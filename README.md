# OpenPlotter-HALPI OS Images

This repository contains the necessary files to build the OpenPlotter-HALPI OS images. OpenPlotter-HALPI is a Raspberry Pi OS image based on Raspberry Pi OS with the addition of OpenPlotter and customizations for Hat Labs HALPI series of Raspberry Pi computers. These customizations include native support for the SH-RPi power management board and support for NMEA 2000 and NMEA 0183 data interfaces.

## Downloading the Images

The images are available for download on the [releases page](https://github.com/hatlabs/openplotter-halpi/releases).

## Flashing the Images

The images can be flashed to an SSD drive (or a micro-SD card) using the Raspberry Pi Imager. The Raspberry Pi Imager can be downloaded from the [Raspberry Pi website](https://www.raspberrypi.org/software/). Use an SSD USB adapter to connect the SSD drive to your computer. Open the Raspberry Pi Imager and select the OpenPlotter-HALPI image you downloaded. Select the SSD drive as the target and click Write. Do not apply any customizations.

## Building the Images

The image can be built manually using the [act](https://nektosact.com/) GitHub Actions local runner. You also need Docker installed and running on your computer, and the GH-CLI GitHub command line tool needs to be installed and configured.

With the prerequisites in place, run the following commands to build the image:

```bash
./run build
```

The build will nominally end with an error due to a failing upload, but if you scroll back a little, you'll notice the image has been built successfully. However, the image still resides in the Docker container. To extract the image, run the following command:

```bash
./run copy-images
```

Once run, the image will be copied to the `deploy` directory. The image can then be flashed to an SSD drive or SD card using the Raspberry Pi Imager as described above.
