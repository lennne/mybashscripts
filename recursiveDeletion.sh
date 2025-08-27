#run a loop for the number of folder inside
#for loop or while loop there are still files
# to be accessed 
#for each iteration we do the following
#   1. enter a folder
#   2. run a command 
#   OR
#   1. in the parent folder execute the command using the path


#to run the loop we need to know how long 
#we're running the loop for
read -p "Enter your name: " name
name=$((name * 2))
for i in $(seq 1 $name); do
name=$((name-1))
echo $name
done