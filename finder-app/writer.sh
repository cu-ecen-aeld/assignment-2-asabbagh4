#!/bin/bash

# check if arguments were specified
if [ $# -lt 2 ]; then
    echo "Usage: $0 <writefile> <writestr>"
    exit 1
fi

# extract arguments
writefile="$1"
writestr="$2"

# check if writefile is empty
if [ -z "$writefile" ]; then
    echo "Error: writefile parameter is empty"
    exit 1
fi

# create directory path if it doesn't exist
mkdir -p "$(dirname "$writefile")"

# write string to file, overwriting any existing file
echo "$writestr" > "$writefile"

# check if write was successful
if [ $? -ne 0 ]; then
    echo "Error: could not write to file $writefile"
    exit 1
fi

exit 0
#!/bin/bash

# check if arguments were specified
if [ $# -lt 2 ]; then
    echo "Usage: $0 <writefile> <writestr>"
    exit 1
fi

# extract arguments
writefile="$1"
writestr="$2"

# create directory path if it doesn't exist
mkdir -p "$(dirname "$writefile")"

# write string to file, overwriting any existing file
echo "$writestr" > "$writefile"

# check if write was successful
if [ $? -ne 0 ]; then
    echo "Error: could not write to file $writefile"
    exit 1
fi
