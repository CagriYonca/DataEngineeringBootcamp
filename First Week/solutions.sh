# Remove 2's from string and filter lines which includes 3
echo 111213212223313233 | sed 's/2/\n/g' | grep 3
echo 111213212223313233 | sed 's/2/\n/g' | grep -n 3

# Print all 2 digit numbers
for i in {0..9}; do for j in {0..9}; do echo $i$j; done; done

# Show date of last week's date
for i in {0..7}; do echo `date -v-${i}d`; done

# Show files and folders, we can also use find to do that
ls -l | awk '{ if (substr($1,0,1) == "d") print $9" is folder"; else if (substr($1,0,1) == "-") print $9" is file"}'
find . type -f | awk '{ print $1" is file"  }'
find . type -d | awk '{ print $1" is folder" }'

# Do arithmatical operations
bash calc.sh

# Aliasing Taxes column in homes.csv
cat homes.csv | awk '{ if ($9 > 3000)  print "Above"; else print "Below" }'

# Printing entries which has taxes under 3000
awk -F ',' '{ if ($9 < 3000)  print $1 $2 $3 $4 $5 $6 $7 $8 $9 }' homes.csv

# Print sum of a column
awk -F ',' '{a+=$2}; END { print a }' airtravel.csv





