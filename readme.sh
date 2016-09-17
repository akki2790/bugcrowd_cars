# cars.json - Command to generate the cars.json file (input file)

curl http://www.carqueryapi.com/api/0.3/?cmd=getMakes -o cars.json

# Command to generate the names of the unique countries in the data

cat cars.json | jq ".Makes[] .make_country" | sort -r | uniq > countries.json

# Output file: countries.json

# .json format taken by choice.

# This file is used as an input to the script test2.sh which generates the required output.
