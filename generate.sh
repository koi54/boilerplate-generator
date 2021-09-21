#!/bin/bash

echo "Boilerplate generator has started..."

echo "Enter project folder name: "

read projectname

mkdir $projectname

cd $projectname

echo "Creating project folder"

cd boilerplate

if [ -e index.html ]
then 
    echo "index.html exists"
else 
    echo "index.html not found, generating the file"
    touch index.html

    echo "<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Boilerplate</title>
    <link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
    
    <script src="script.js"></script>
</body>
</html>
    ">>index.html

    echo "index.html generated"
fi

if [ -e style.css ]
then 
    echo "style.css exists"
else 
    echo "style.css not found, generating the file"

    touch style.css

    echo "style.css generated"
fi

if [ -e script.js ]
then
    echo "script.js exists"
else    
    echo "script.js not found, generating the file"

    touch script.js

    echo "console.log('Hello World!');">>script.js
    
    echo "script.js generated"
fi

echo "Boilerplate is ready!"