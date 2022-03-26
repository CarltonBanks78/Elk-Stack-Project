#!/bin/bash

# This script is to find the fraud on the future Lucky Duck Games.

cat $1_Dealer_schedule | awk -F" " '{print $1, $2, '$3','$4' }'| grep "$2" >> Possible_Names_of_Dealers_during_Losses