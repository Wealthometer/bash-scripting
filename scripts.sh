#!/bin/bash
# A practice script for beginners-to-advanced shell commands
# Run: bash practice.sh

# --- BASICS ---
echo "--- BASIC COMMANDS ---"
echo "Current directory:"
pwd
echo

echo "Listing files:"
ls -la
echo

echo "Showing current date/time:"
date
echo

# --- FILE & DIRECTORY OPS ---
echo "--- FILE & DIRECTORY OPERATIONS ---"
echo "Creating test directory and files..."
mkdir -p test_dir
cd test_dir
touch file1.txt file2.txt
ls -l
echo

echo "Writing to file1.txt..."
echo "Hello World" > file1.txt
cat file1.txt
echo

# --- TEXT PROCESSING ---
echo "--- TEXT PROCESSING ---"
echo "Adding more lines to file2.txt..."
echo -e "apple\nbanana\napple\ncherry" > file2.txt

echo "Sorting and removing duplicates:"
sort file2.txt | uniq
echo

echo "Grep for 'apple':"
grep apple file2.txt
echo

# --- PERMISSIONS ---
echo "--- PERMISSIONS ---"
echo "Showing permissions of file1.txt:"
ls -l file1.txt

echo "Changing permissions to make it executable:"
chmod +x file1.txt
ls -l file1.txt
echo

# --- NETWORKING COMMANDS (if available) ---
echo "--- NETWORKING COMMANDS ---"
echo "Pinging google.com (1 packet):"
ping -c 1 google.com 2>/dev/null || echo "Ping failed (likely restricted env)"
echo

# --- SYSTEM INFO ---
echo "--- SYSTEM INFORMATION ---"
echo "Disk usage:"
df -h | head
echo

echo "Memory usage:"
free -h 2>/dev/null || echo "'free' may not be available"
echo

# --- LOOPS & CONDITIONS ---
echo "--- LOOPS & CONDITIONS ---"
for i in 1 2 3
do
    echo "Loop iteration: $i"
done

echo
if [ -f file1.txt ]; then
    echo "file1.txt exists!"
else
    echo "file1.txt missing!"
fi

# --- CLEANUP (optional) ---
echo "Cleaning up..."
cd ..
rm -rf test_dir
echo "Done!"
