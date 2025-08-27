#run a loop for the number of folder inside
#for loop or while loop there are still files
# to be accessed 
#for each iteration we do the following
#   1. enter a folder
#   2. run a command in this case i'm trying to delete files
#.   in a folder earlier than a specific date using the following command 
#.     find . -maxdepth 1 -type f ! -newermt "2025-07-30" -exec rm {} \;
#   OR
#   1. in the parent folder execute the command using the path


#to run the loop we need to know how many times 
#we're running the loop for
numberOfFolders=$(ls . | wc -l) #using command substitution
echo "number of files are $numberOfFolders"
ls */ | 

# Loop over all folders in parent_dir
for folder in */; do # the "*/" glob retrieves an array of strings for the subdirectories of the path passed
    echo "Entering folder: $folder"
    cd "$folder" || continue # the double pipe is an if statement telling bash that 
    #if the left statement runs successfully, skip the right statement and don't exit the loop
    
    cd "$folder" && echo "it worked"
    #you'd guess that for the && operator, if the statement on the left runs successfully
    #it should execute the statement on the right as well, meaning if the left doesn't work, the statement on the right is not executed

    cd "$folder" ; echo "i'll always run"
    #while for the semi-colon operator, the right statement would always run regardless of the left working or not

    echo $(ls ./)
    cd - >/dev/null  # go back to parent directory, just like the back button in a file directory application
done

for dir in */; do
    echo dir
done