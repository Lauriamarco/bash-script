#!/bin/bash
# Set variables
FLAG=0
############################################################
# Help                                                     #
############################################################
Help()
{
   # Display Help
   echo "Add description of the script functions here."
   echo
   echo "Syntax: scriptTemplate [-n|f|h|v]"
   echo "options:"
   echo "n     insert the name"
   echo "h     Help."
   echo "f     add flag"
   echo "v     version"
   echo
}

############################################################
#Flag                                                      #
############################################################
Flag()
{
    if [[ $FLAG -eq 1 ]]
    then
        echo "YEEEAH"    
}

############################################################
#Print name                                                #
############################################################
Name()
{
    echo "The insert number is: "$NEW_NAME
}

############################################################
#Print version                                             #
############################################################
Version()
{
    echo "script version 1.0.0"
    echo "$(cat /etc/os-release)"
}

############################################################
# Main program                                             #
############################################################
# Process the input options. Add options as needed.        #
############################################################
# Get the options
while getopts ":hn:fv" option; do
   case $option in
      h) # display Help
         Help
         exit;;
      v) # display default
         Version
         exit;;
      n) # Enter a name
         NEW_NAME=$OPTARG
         ;;
      f) FLAG=1;;
     \?) # Invalid option
         echo "Error: Invalid option"
         exit;;
   esac
done

echo ""
echo "---------------------START------------------------------------"
Name
echo ""
Flag
echo ""
echo "---------------------END------------------------------------"
