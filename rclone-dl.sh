#!/bin/sh
             
             echo "Installing unzip"
             apt install unzip
            echo "Installing rclone Linux AMD64"
            rm -rf rclone*.zip
            bash <(curl -Ss https://raw.githubusercontent.com/compliment/rclone-dl/master/rclone.sh) ncw/rclone linux-amd64 zip
            unzip -o rclone-*-linux-amd64.zip
            echo "Assuming root"
            
            cd rclone-*-linux-amd64
            cp rclone /usr/bin/
             chown $USER:$USER /usr/bin/rclone
             chmod 755 /usr/bin/rclone
             echo "Assuming finished installing rclone"
             echo "I guess I'm done!" 
