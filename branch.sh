#Create Branch

while read line
do
branch_name=$line
git push origin master:refs/heads/$branch_name
echo "git push origin master:refs/heads/$branch_name"
git fetch origin
git checkout --track -b $branch_name origin/$branch_name
git pull
git checkout master
done < C:\git\branch.txt