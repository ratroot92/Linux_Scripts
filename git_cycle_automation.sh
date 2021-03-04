#/bash/bin
echo -e "\n\tMe: Hello Waseem! Ye Requirement Nahe ho sakte  \n\tWaseem: No way\n\tMe: ............................?\n\tWaseem: Nothing is impossible!" | boxes -d boy
echo "Setting up EPE Admin Module " | boxes
cd epeAdmin/
echo "EPE ADMIN  " | boxes
echo "Detecting Current Branch  " | boxes
BRANCH="$(git rev-parse --abbrev-ref HEAD)"
if [[ "$BRANCH" == "main" ]]; 
  then
  echo "Current Branch = $BRANCH" | boxes
  git add .
  git commit -m "scripted_commit"
  git pull origin $BRANCH 
  git add .
  git commit -m "scripted_commit"
  git checkout dev 
  git merge $BRANCH -X thiers  
  git pull origin dev 
  git add .
  git commit -m "scripted_commit"
  echo "You are ready to work on dev branch " | boxes
  echo "EPE ADMIN DEV BRANCH" | boxes
    

  #Else you are in dev branch then 
  else 
  echo "Current Branch = $BRANCH" | boxes
  git add .
  git commit -m "scripted_commit"
  git pull origin $BRANCH 
  git add .
  git commit -m "scripted_commit"
  git checkout main  
  git merge $BRANCH -X thiers
  git add .
  git commit -m "scripted_commit" 
  git pull origin main
  git add .
  git commit -m "scripted_commit" 
  git push origin main 
  git checkout dev 
  echo "You are ready to work on dev branch " | boxes
  echo "EPE ADMIN DEV BRANCH" | boxes
  exit 1;
fi



cd ..
cd epeServer/
echo "EPE SERVER  " | boxes
echo "Detecting Current Branch  " | boxes
BRANCH="$(git rev-parse --abbrev-ref HEAD)"
if [[ "$BRANCH" == "master" ]]; 
  then
  echo "Current Branch = $BRANCH" | boxes
  git add .
  git commit -m "scripted_commit"
  git pull origin $BRANCH 
  git add .
  git commit -m "scripted_commit"
  git checkout dev 
  git merge $BRANCH -X thiers  
  git pull origin dev 
  git add .
  git commit -m "scripted_commit"
  echo "You are ready to work on dev branch " | boxes
  echo "EPE SERVER DEV BRANCH" | boxes
 

  #Else you are in dev branch then 
  else 
  echo "Current Branch = $BRANCH" | boxes
  git add .
  git commit -m "scripted_commit"
  git pull origin $BRANCH 
  git add .
  git commit -m "scripted_commit"
  git checkout master  
  git merge $BRANCH -X thiers
  git add .
  git commit -m "scripted_commit" 
  git pull origin master
  git add .
  git commit -m "scripted_commit" 
  git push origin master 
  git checkout dev 
  echo "You are ready to work on dev branch " | boxes
  echo "EPE SERVER DEV BRANCH" | boxes
  exit 1;
fi

