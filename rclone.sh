#!/bin/sh
# Download a github project's latest release
# $1: username/repo
# $2: regex to match download file
# example: ./gh-download-latest atom/atom gz

rm -rf rclone*.zip
repo=$1
regex=${2:-gz}

wget -qO-   https://api.github.com/repos/$repo/releases/latest | \
  awk -v regex="$regex" -F '"' '/browser_download_url/ && match($4, regex) { print $4 }' | \
  xargs wget

