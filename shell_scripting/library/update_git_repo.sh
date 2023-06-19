#!/bin/bash

echo "******************"
echo "Pushing on GitHub!"

echo "******************"
echo "Current pwd:" $PWD

echo "******************"
echo "Which folder do you want to update:" && read FOLDER

echo "******************"
echo "Entering folder:" $FOLDER
cd $FOLDER

echo "******************"
echo "Currently in:" $PWD

echo "******************"
echo "Get status"
git status

echo "******************"
echo "Add new all new files"
git add .

echo "******************"
echo "Add dummy commit comment"
git commit -m "_"

echo "******************"
echo "Push to GitHub"
git push
