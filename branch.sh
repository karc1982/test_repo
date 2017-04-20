#Create Branch

while read line
do
branch_name=$line
git push origin master:refs/heads/$line
echo "git push origin master:refs/heads/$line"
git fetch origin
git checkout --track -b $line origin/$line
git pull
git checkout master
done < branch.txt
