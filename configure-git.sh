echo '### Configure Git..'

echo "Enter your first and last name for Git:";
read GITUSER;
git config --global user.name "${GITUSER}"

echo "Enter your email address for Git:";
read GITEMAIL;
git config --global user.email "${GITEMAIL}"

echo "Enter your Github username:";
read GITHUBUSER;
git config --global github.user "${GITHUBUSER}"

echo "Go here and generate a token: https://github.com/settings/tokens/new";
echo "Enter your Github personal access token:";
read GITHUBTOKEN;
git config --global user.email "${GITHUBTOKEN}"

echo 'Git has been configured!'
git config --list
