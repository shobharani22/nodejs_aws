# give permission for everything in the nodejs_aws directory
sudo chmod -R 777 /home/ec2-user/express-app

# navigating into our working directory where we have our github files
cd /home/ec2-user/express-app

#add npm and node to path
export NVM_DIR ="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/base_completion" # loads nvm bash_completion

# install node modules
npm install

#start our node app in the background
node app.js > app.out.log 2> app.err.log < /dev/null &