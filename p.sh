git status
git add .
echo -n "please enter the commit-info:"
read info
git commit -m $info
git push origin master
