#!/bin/bash
# Intermediate-to-Advanced Shell Scripting Practice File
# Run: bash advanced_practice.sh

# --- FUNCTIONS ---
echo "--- FUNCTIONS ---"
hello() {
    echo "Hey there, you're inside a function now!"
}
hello
echo

# --- ARGUMENT HANDLING ---
echo "--- ARGUMENTS ---"
echo "You passed $# arguments: $@"
echo "First arg: $1"
echo

# --- CASE STATEMENT ---
echo "--- CASE STATEMENT ---"
read -p "Type a fruit (apple, banana, cherry): " fruit
case $fruit in
    apple)
        echo "You picked apple — solid choice";;
    banana)
        echo "Banana gang rise 🟡";;
    cherry)
        echo "Cherry vibes 🍒";;
    *)
        echo "Unknown fruit, bro";;
esac
echo

# --- ARRAYS ---
echo "--- ARRAYS ---"
foods=(rice beans yam plantain)
echo "Foods array: ${foods[@]}"
echo "Second item: ${foods[1]}"
foods+=("noodles")
echo "Updated array: ${foods[@]}"
echo

# --- LOOPS WITH ARRAY ---
echo "--- LOOPING ARRAYS ---"
for food in "${foods[@]}"; do
    echo "Food: $food"
done
echo

# --- COMMAND SUBSTITUTION ---
echo "--- COMMAND SUBSTITUTION ---"
today=$(date +%A)
echo "Today is: $today"
echo

# --- TRAPS ---
echo "--- TRAPS ---"
trap 'echo "Bro chill, script got interrupted 😭"; exit' INT

echo "Press CTRL+C to test trap or wait 3 seconds..."
sleep 3
echo "You didn't interrupt. Respect."
echo

# --- WHILE LOOPS ---
echo "--- WHILE LOOPS ---"
count=1
while [ $count -le 3 ]; do
    echo "While loop iteration $count"
    count=$((count+1))
done
echo

# --- SELECT MENU ---
echo "--- SELECT MENU ---"
select opt in Start Stop Exit
do
    case $opt in
        Start) echo "Script started!";;
        Stop) echo "Script stopped!";;
        Exit) echo "Bye!"; break;;
        *) echo "Invalid option";;
    esac
done

echo "All tasks finished!"
