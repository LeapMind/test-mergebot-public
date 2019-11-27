git checkout master
git pull origin master

git branch -D test1
git branch -D test2
git branch -D test3

git checkout -b test1
echo "test1" >> test1
git add .
git commit -m "test1"
git push origin test1
hub pull-request -m "test1" -b "LeapMind:master"

git checkout -b test2
echo "test2" > test1
git add .
git commit -m "test2"
git push origin test2
hub pull-request -m "test2" -b "LeapMind:master"

git checkout master
git checkout -b test3
echo "test3" >> test3
git add .
git commit -m "test3"
git push origin test3
hub pull-request -m "test3" -b "LeapMind:master"

git checkout master
