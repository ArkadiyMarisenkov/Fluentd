#!/bin/bash
for (( i=1; i <= 12; i++ ))
do
  curl -i -X POST -d 'json={"action":"login","user":"'"$((RANDOM%100))"'", "current_timestamp": '$(date +%s)'}' http://localhost:8080/applogs
  sleep 5
done

