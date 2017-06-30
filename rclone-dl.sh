#!/bin/sh

  
      
            echo "Installing rclone Linux AMD64"
            rm -rf rclone*.zip
            bash <(curl -Ss https://raw.githubusercontent.com/DEDS3C/rclone-dl/master/rclone.sh) ncw/rclone linux-amd64 zip
            unzip -o rclone-*-linux-amd64.zip
            echo "Please elevate to sudo / root in order to copy files to your bin folder"
            su
            cd rclone-*-linux-amd64
            cp rclone /usr/bin/
            chown $USER:$USER /usr/bin/rclone
            chmod 755 /usr/bin/rclone
            ;;
      
esac
