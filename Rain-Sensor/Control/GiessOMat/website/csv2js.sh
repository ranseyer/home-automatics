#!/bin/sh

titcount=99
title_1="Hallo"
giessdata=$(cat giess.csv | tr ";" "\n" | tr -d "\r" ) 

echo "function getTitle(Index) {" 
for data1 in $giessdata 
do
  if [ $data1 = "Zeit" ]; then
  	titcount=0
  elif [ $titcount -lt 6 ]; then
    titcount=$((titcount+1)) 
  	echo "if(Index == $titcount) { return '$data1'; }"
  elif [ $titcount -eq 7 ]; then
	  break
  fi
done
echo "}"

echo "function getPumpData(Index) {" 
for pidx in 1 2 3 4 5 6
do
  count=99
  scount=99
  echo -n "if(Index == $pidx) { return ["
  first="j"
	for data1 in $giessdata 
	do
	  if [ $data1 = "#P" ]; then
	  	count=0
	  else
		  count=$((count+1))
 	 
		  if [ $count -eq 1 ]; then
	      if [ $first = "j" ]; then
          first="n"
        else
          echo -n ","
        fi
	    	echo -n "['$data1 "
		  elif [ $count -eq 2 ]; then
		    echo -n "$data1'"
		  elif [ $count -eq $((pidx+2)) ]; then
		    echo -n ",$data1]"
        lastvalue=$data1
		  fi
	  fi  

	  if [ $data1 = "#S" ]; then
	  	scount=0
	  else
		  scount=$((scount+1))
 	 
		  if [ $scount -eq 1 ]; then
	    	lastdate=$data1
		  elif [ $scount -eq 2 ]; then
		    lastdate="'$lastdate $data1'"
		  fi
	  fi 
	done
  echo -n ",[$lastdate,$lastvalue]"
	echo "]; }"
done
echo "}"

echo "function getSensorData(Index) {" 
for pidx in 1 2 3 4 5 6
do
  count=99
  scount=99
  echo -n "if(Index == $pidx) { return ["
  first="j"
	for data1 in $giessdata 
	do
	  if [ $data1 = "#S" ]; then
	  	count=0
	  else
		  count=$((count+1))
 	 
		  if [ $count -eq 1 ]; then
	      if [ $first = "j" ]; then
          first="n"
        else
          echo -n ","
        fi
	    	echo -n "['$data1 "
		  elif [ $count -eq 2 ]; then
		    echo -n "$data1'"
		  elif [ $count -eq $((pidx+2)) ]; then
		    echo -n ",$data1]"
		  fi
	  fi  
	done
	echo "]; }"
done
echo "}"

