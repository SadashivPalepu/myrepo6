echo Please Provide New Repo Name:
read  name

mkdir $name    #this is the name of your directory
cd /$name
git init
touch $name/readme.md   #this is to create an initial file to push
git add .
git commit -m "enter commit message here"
git remote set-url origin https://github.com/SadashivPalepu/$name.git
git remote add origin git@github.com:SadashivPalepu/$name.git
curl -u "SadashivPalepu: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" https://api.github.com/user/repos -d '{"name":"'$name'"}' #this will create the repo in github.
git push -f origin master