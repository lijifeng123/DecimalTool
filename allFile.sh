#!/bin/bash

git add --all

git commit -m "提交代码"

echo "请选择要提交的分支"

echo "1 - master"

echo "2 - develop"

read describe

tempbarch="master"

if [ $describe == 1 ]
then
tempbarch="master"
else
tempbarch="develop"
fi

currentTag = "1.3.5"

git pull origin $tempbarch

git push origin $tempbarch

git push origin --delete tag $currentTag

git tag -d $currentTag

git tag $currentTag

git push --tag

pod spec lint LJFDecimalTool.podspec --verbose --allow-warnings

pod trunk push LJFDecimalTool.podspec --verbose --allow-warnings
