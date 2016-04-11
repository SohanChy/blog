#!/bin/bash
rm -rf ../SohanChy.github.io/blog/*
hugo -b="http://sohanchy.github.io/blog" -d "../SohanChy.github.io/blog/";
cd ../SohanChy.github.io/blog/;
git add .;
git commit;
git push;

