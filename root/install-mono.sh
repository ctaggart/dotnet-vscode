#!/bin/sh
# an Ionide dependency for its language service
export DEBIAN_FRONTEND=noninteractive
# http://www.jimmybyrd.me/Get-Latest-Mono-On-Debian/
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb http://download.mono-project.com/repo/debian wheezy main" | tee /etc/apt/sources.list.d/mono-xamarin.list
echo "deb http://download.mono-project.com/repo/debian wheezy-libjpeg62-compat main" | tee -a /etc/apt/sources.list.d/mono-xamarin.list
apt-get update
# https://github.com/mono/docker/blob/master/4.2.3.4/Dockerfile
apt-get install -y mono-devel ca-certificates-mono fsharp nuget