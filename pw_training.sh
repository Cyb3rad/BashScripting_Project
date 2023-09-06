#!/bin/bash

company=Cyb3radSecurity
date=$(date)
cowsay=$(cowsay Thank you for being such a wonderful asset to our team!)

echo "Hi, what is your name?"
read name
echo "Hi, $name! Welcome to this mandatory team member password training module! Today is: $date"
sleep 5
echo "At $company, we take information security very seriously and are thankful you do, too!"
sleep 5
echo "Our Password Policy states that each member of our team must create a new password every 90 days."
sleep 5
echo "$name, your password should be unique and randomly generated. No dictionary words."
sleep 5
echo "Additionally, your password should have 12-16 characters long."
sleep 5
echo "Finally, your password should contain a combination of uppercase and lowercase letters, numbers, and one or more of the following special characters: ($, @, #, *, ?, %, !)."
sleep 5
echo "Now. it's time for a quick quiz, $name. Ready?"
sleep 5


# Function used to ask a question and confirm if the answer is correct
ask_question() {
  local question="$1"
  local correct_answer="$2"

  echo "$question"
  read -p "Your answer: " user_answer

  if [ "$user_answer" == "$correct_answer" ]; then
    echo "Correct! You got it right."
  else
    echo "Wrong answer. The correct answer is: $correct_answer"
  fi
}

# Password Security Quiz Questions
clear  # Clear the screen
ask_question "True (T) or False (F): Password security policies are important because a secure password is the first line of defense against unauthorized access." "T"
ask_question "At $company, after how many days are you required to change your password?" "90"
ask_question "True (T) or False (F): You can create your own password using words found in a dictionary that are easiest to remember." "F"
ask_question "What is the minimum password character length you can have, according to our password policy?" "12"
ask_question "True (T) or False (F): Your new password should contain uppercase/lowercase letters and numbers, and cannot have special characters." "F" 

sleep 2
echo "Congratulations, $name! You have completed the Password Security Quiz for $company."
sleep 5
echo "Now, feel free to use this unique, 16-character, password and change your team member login password credentials."
sleep 5

# Define character sets
uppercase="ABCDEFGHIJKLMNOPQRSTUVWXYZ"
lowercase="abcdefghijklmnopqrstuvwxyz"
numbers="0123456789"
special_chars="$@#*?%!"

# Combine all character sets
all_characters="${uppercase}${lowercase}${numbers}${special_chars}"

# Function to generate a random character
generate_random_character() {
  local length=${#all_characters}
  local random_index=$((RANDOM % length))
  echo -n "${all_characters:random_index:1}"
}

# Function to generate a random password
generate_random_password() {
  local password=""
  for ((i = 0; i < 16; i++)); do
    password="${password}$(generate_random_character)"
  done
  echo "$password"
}

# Generate and print a random password
random_password=$(generate_random_password)
echo "Random Password: $random_password"
sleep 3
echo "Module Complete!"
sleep 3
echo "$cowsay"
