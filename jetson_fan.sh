#!/bin/bash

#This bash script sets the 5V PWM fan speed for Nvidia Jetson Nano Developer Kit

echo -n "Enter fan speed mode: 0 - 1 - 2 - 3 - 4? "
read REQUESTEDSPEEDMODE

if [[ $REQUESTEDSPEEDMODE -eq 0 ]]
then
  echo "PWM Fan Turning Off!"
  sudo sh -c 'echo 0 > /sys/devices/pwm-fan/target_pwm'
elif [[ $REQUESTEDSPEEDMODE -eq 1 ]]
then
  echo "PWM Fan running in Low Speed!"
  sudo sh -c 'echo 64 > /sys/devices/pwm-fan/target_pwm'
  elif [[ $REQUESTEDSPEEDMODE -eq 2 ]]
then
  echo "PWM Fan running in Medium Speed!"
  sudo sh -c 'echo 128 > /sys/devices/pwm-fan/target_pwm'
  elif [[ $REQUESTEDSPEEDMODE -eq 3 ]]
then
  echo "PWM Fan running in High Speed!"
  sudo sh -c 'echo 192 > /sys/devices/pwm-fan/target_pwm'
  elif [[ $REQUESTEDSPEEDMODE -eq 4 ]]
then
  echo "PWM Fan running in Full Speed!"
  sudo sh -c 'echo 255 > /sys/devices/pwm-fan/target_pwm' 
else
  echo "Unavailable Fan Speed Command. Exiting..."
fi