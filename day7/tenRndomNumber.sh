for i in {1..10}
do
   arr[i]=$RANDOM
   arr[i]=$((arr[i] % 900 + 100)) 
done

echo "Random numbers generated: ${arr[@]}"

# find the second largest number by sorting the array 
IFS=$'\n' sorted_arr=($(sort <<<"${arr[*]}"))
second_largest=${sorted_arr[8]}

# find the second smallest number by sorting the array in reverse order 
IFS=$'\n' reverse_sorted_arr=($(sort -r <<<"${arr[*]}"))
second_smallest=${reverse_sorted_arr[8]}

echo "Second largest number: $second_largest"
echo "Second smallest number: $second_smallest"