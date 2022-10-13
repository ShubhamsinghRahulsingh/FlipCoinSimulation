echo " Welcome to the flip coin simulation program"

read -p "Enter the time upto which you want to flip a coin: " n;

count_1=0
count_2=0

for (( i=1; i<=n; i++ ))
do
       flip=$(($(($RANDOM%10))%2))
       if [ $flip -eq 1 ]
       then
            count_1=$(($count_1 + 1))
       else
            count_2=$(($count_2 + 1))
       fi
done

echo "Heads won $count_1 times"
echo "Tails won $count_2 times"

