# Docker Airconnect
This is a dockerized version of AirConnect (https://github.com/philippe44/AirConnect) which bridges AirPlay with Sonos and the Google Cast protocol.

## How to launch
Simply run `docker run -d --net="host" swilsonau/docker-airconnect` on your Docker host.

# Changes between this and swilsonau image
I have moved to reduce the size, update to the latest ubuntu, and ensure the package is updated more often.
