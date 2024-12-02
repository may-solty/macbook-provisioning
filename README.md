## 1. Homebrew のインストール

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# パスを通す。
echo >> /Users/YOUR_NAME/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/YOUR_NAME/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

brew -v
```


## 2. Ansible を使用して各種インストール
```shell
brew install ansible
ansible --version

git clone https://github.com/xxxxx
ansible-playbook -i hosts localhost.yml
```


### Homebrew Packages

  - [fish](https://fishshell.com/)  
    コマンドラインシェル！

  - [ghq](https://github.com/motemen/ghq)  
    リモートリポジトリクローン管理ツール

  - [mas](https://github.com/mas-cli/mas)  
    MacのGUIアプリケーションをCUIでインストールするインターフェース

  - [peco](https://github.com/peco/peco)  
    シンプルでインタラクティブなフィルターツール


## Fish のインストール
terminalで操作する。

```shell
echo /opt/homebrew/bin/fish | sudo tee -a /etc/shells
chsh -s /opt/homebrew/bin/fish

# ~/.config/fish/config.fish
if status is-interactive
  # Commands to run in interactive sessions can go here
  set PATH $PATH /opt/homebrew/bin
  set PATH $PATH /opt/homebrew/sbin
end
```

### Oh My fish（Foshのパッケージマネージャー）

```shell
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
omf install peco
omf install z
```

### ssh

```shell
mkdir .ssh
chmod 700 .ssh/
```

### git

```shell
git config --global user.name "YOUR_NAME"
git config --global user.email "YOUR_EMAIL"
```
