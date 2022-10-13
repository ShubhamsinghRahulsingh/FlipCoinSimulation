echo " Welcome to the flip coin simulation program"


count_1=0
count_2=0
while true
do
        flip=$((RANDOM%2))
        if [ $flip -eq 1 ]
        then
              count_1=$(($count_1+1))
              if [ $count_1 -eq 21 ]
              then
                   break
              fi
        else
              count_2=$(($count_2+1))
              if [ $count_2 -eq 21 ]
              then
                   break
              fi
        fi
done

if [ $count_1 -eq 21 ]
then
     diff=$(( $count_1 - $count_2 ))
     echo "Heads Wins by $diff"
elif [ $count_2 -eq 21 ]
then
     diff=$(( $count_2 - $count_1 ))
     echo "Tails Wins by $diff"
elif [ $count_1 -eq $count_2 ]
then
     echo "Its a Tie"
     head=0
     tails=0
     while true
     do
          flip=$((RANDOM%2))
          if [ $flip -eq 1 ]
          then
               heads=$(($heads+1))
               if [ $(($heads-$tails)) -eq 2 ]
               then
                   echo "Heads win"
               break
               fi
          else
               tails=$(($tails+1))
               if [ $(($tails-$heads)) -eq 2 ]
               then
                   echo "Tails win"
               break
               fi
          fi
     done

fi

