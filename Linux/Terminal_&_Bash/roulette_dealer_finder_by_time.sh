#!/bin/bash

# Aanalyze the employee schedule to easily find the roulette dealer at a specific time.


cat $1_Dealer_schedule | awk -F" " '{print $1, $2, $5, $6}'| grep "$2"