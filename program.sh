count2=$(cat cars.json | jq ".[] | length")

#ca= $(cat cars.json)

echo $count2 

while read line
do
    count=0
    count3=0
    echo $line
    echo "----------"
    while [ $count -lt $count2 ]
    do
        if [ "$(cat cars.json | jq ".Makes[$count].make_country")" == "$line" ]
        then
           #echo "Inside"
           echo $(cat cars.json | jq ".Makes[$count].make_id")
           count3=`expr $count3 + 1`
        fi

        count=`expr $count + 1`
        #echo $count
    done
    echo "----------"
    echo $count3
    echo " "
done <countries.json
