dice1=$(($RANDOM % 6 + 1)) 
dice2=$(($RANDOM % 6 + 1))
add=$(( $dice1 + $dice2 ))
echo $add