#!/bin/bash


# Prompt the user for input
echo "Enter a Domain name: "
read userInput

# Display the input
echo "You entered: $userInput"

openssl s_client -connect "$userInput:443" 2>/dev/null | openssl x509 -noout -dates




