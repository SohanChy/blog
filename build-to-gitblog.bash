#!/bin/bash

if [ ! -d "public" ]; then
    echo "No public folder, exiting..."
    exit;
fi

cp BAK_CNAME public/CNAME
mv public ../.tmp-public

echo "commit and push master first? All changes will be lost"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) git add .; git commit;
        git push; 
        break;;
        No ) break;;
    esac
done

git checkout -f gh-pages
rm -rf ./* 
mv ../.tmp-public/* ./
rmdir ../.tmp-public

git add .
git commit

echo "Wanna push?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) git push; git checkout master; break;;
        No ) exit;;
    esac
done
