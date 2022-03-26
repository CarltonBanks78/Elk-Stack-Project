#!/bin/bash
#This script will show the times of the losses at roulette tables.

echo "Times of losses:" > Notes_Player_Analysis
sed 's/win_loss_player_data//1' Roulette_Losses > Notes_Player_Analysis1 
awk '{print $1, $2}' Notes_Player_Analysis1 >> Notes_Player_Analysis
rm Notes_Player_Analysis1
grep 'Mylie Schmidt' Roulette_Losses| wc -l >> Notes_Player_Analysis
