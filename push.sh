#!/bin/bash

# Define the conventional commit types with emojis
TYPES=("feat 🎉" "fix 🐞" "docs 📚" "style 💅" "refactor 🔨" "perf ⚡️" "test 🧪" "build 🛠️" "ci 🤖" "chore 🧹" "revert ⏪️")

# Prompt the user to select a commit type
echo "Select a commit type:"
select type in "${TYPES[@]}"; do
  break
done

# Extract the commit type and emoji from the selection
type_emoji=${type}
type=${type_emoji% *}
emoji=${type_emoji#* }

# Prompt the user to enter a scope (optional)
read -p "Enter a scope (optional): " scope

# Prompt the user to enter a short description
read -p "Enter a short description: " desc

# Prompt the user to enter a longer description (optional)
read -p "Enter a longer description (optional): " long_desc

# Create the commit message
commit_msg="[$type($scope)] $desc $emoji"

# If a longer description was provided, add it to the commit message
if [ -n "$long_desc" ]; then
  commit_msg+="

$long_desc"
fi

# Print the commit message to the console
echo "Commit message:"
echo "$commit_msg"

# Stage all changes
git add .

# Commit the changes with the conventional commit message
git commit -m "$commit_msg"

# Push the changes to the remote repository
git push origin $(git rev-parse --abbrev-ref HEAD)