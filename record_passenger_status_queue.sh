#!/bin/sh
touch /tmp/captured_passenger_status.csv
ruby ./capture_passenger_status_queue.rb >> /tmp/captured_passenger_status.csv
