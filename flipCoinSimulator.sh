echo " Welcome to the flip coin simulation program"


flip=$(($(($RANDOM%10))%2))
echo "coin flip is $flip"
if [ $flip -eq 1 ]
      then
          echo "Heads"
          echo "Winner"
      else
          echo "Tails"
fi

