## How to use it
Local file to youtube 4k stream by ffmpeg

## STEP 1:

Before doing anything you need to have “ffmpeg” already installed in your system . You can install it through Software manager ( Software Center) or command line terminal. Here the command for installing “ffmpeg”.

```bash
sudo apt-get install ffmpeg
```

If you have centos this please check this installation guide : https://linuxize.com/post/how-to-install-ffmpeg-on-centos-7/

## STEP 2:
Download the file of script “streem.sh” from this link : https://raw.githubusercontent.com/shivsingh7150/Local-file-to-Youtube-4k-stream/master/stream.sh.

## Make Changes

Edit file and update your Key and RTMP (if need)


## Give permsion by 

```bash
chmod +x stream.sh
```

## Run

```bash
./stream.sh
```

## Check

Wait for few seconds and open the YouTube live dashboard page. You would now see the status changed from OFFLINE to ONLINE. To close the live streaming, just go to the terminal again and press “Ctrl+c” to stop the process. The live streaming would automatically stop and the video archive would be exported to the video manager of your YouTube channel.



