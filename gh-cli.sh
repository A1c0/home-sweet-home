curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
sudo apt update
sudo apt install gh

set -u
cd ~
echo "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" > .githubtoken
unset GITHUB_TOKEN
gh auth login --with-token < .githubtoken
rm .githubtoken
