#!/bin/sh

            echo "Installing rclone Linux AMD64"
            rm -rf rclone*.zip
            bash <(curl -Ss https://raw.githubusercontent.com/compliment/rclone-dl/master/rclone.sh) ncw/rclone linux-amd64 zip
            unzip -o rclone-*-linux-amd64.zip
            echo "Assuming root"
            
            cd rclone-*-linux-amd64
            cp rclone /usr/bin/
            sudo chown $USER:$USER /usr/bin/rclone
            sudo chmod 755 /usr/bin/rclone
             echo "Assuming finished installing rclone"
             
             echo "Attempting installing youtube-dl from rg3/youtube-dl"             
            sudo wget https://yt-dl.org/downloads/latest/youtube-dl -O /usr/local/bin/youtube-dl
            sudo chmod a+rx /usr/local/bin/youtube-dl
      esac
