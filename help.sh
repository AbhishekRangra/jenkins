
#!/bin/bash

# Define paths for source and destination
SOURCE_DIR=~/jenkins/sample-java-app
DEST_DIR=~/jenkins/jenkins

# Navigate to the source directory and pull the latest code
cd $SOURCE_DIR
echo "Pulling the latest code from sample-java-app..."
git pull origin main

# Copy the files to the destination repository
echo "Copying files to the new repository..."
cp -r * $DEST_DIR

# Navigate to the destination directory (your jenkins repo)
cd $DEST_DIR

# Stage and commit the changes
echo "Staging and committing the changes..."
git add .
git commit -m "Copied files from sample-java-app"

# Push the changes to the new remote repository
echo "Pushing changes to GitHub..."
git push mynewrepo main

echo "Done!"

