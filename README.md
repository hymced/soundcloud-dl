<p align="center">
  <img src="http://soundcloud-dl.com/soundcloud-download-logo.png" alt="Logo"/>
</p>
# Souncloud Music Downloader

## Description

This shell script is able to download music from http://www.soundcloud.com.
It should work with OS X, any Linux OS.

## System requirements

* Unix like OS with a proper shell
* Tools we use : `sed` ; `tr` ; `echo` ; `grep` ; `cut` ; `sort` ; `uniq`.


## Required tools

* You will need `eyeD3` ; `curl`
* The installer install all the required tools except for Mac Os X.


## Instructions

1. Download [this](https://github.com/lukapusic/soundcloud-dl/archive/master.zip)
2. Unzip
3. You can use the auto installer : `./install` (Support Debian/arch)
4. Type `scdl {URL} {OPTION}`

* MORE : For help type `scdl -h` or `scdl -help` or `scdl`

##OPTIONS available
* `--onlyrepost` used with an user's page will download only the user's repost. It will be ignored otherwise.

## Features

* Easy Installer
* Autodetect wich kind of Soundcloud's link it is
* Download all song of an user's page
* Download all repost of an user's page
* Download all song of a song page
* Download all song of an user's playlist page
* Download all song of an user's list of playlist page
* Download all song of a group page
* Download all song of an user's liked song
* Set tags with eyeD3 (skip the tag if eyeD3 is not installed)
* The script stop when he see one song that is already downloaded
* You can use it as a sync script as i do with my Raspberry PI, each night it launch the script with my soudncloud and if new song has been reposted it download it and stop when it encounter a song that has already been downloaded.


## More information

Changelogs of the latest update : [Here](https://github.com/lukapusic/soundcloud-dl/commit/372f1cafd20868c58d0d6edd940a96071fd9449f#commitcomment-7174011)


## License

[GPL v2](https://www.gnu.org/licenses/gpl-2.0.txt), orignal author [Luka Pusic](http://pusic.si)
