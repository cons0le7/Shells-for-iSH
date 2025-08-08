# Shells-for-iSH 

## oh my zsh! 
```
apk add zsh curl shadow
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

```
select **no** when it asks if you want to change default shell. It won't work here. 

To make default shell: 
```
sed -i '1s|.*|root:x:0:0:root:/root:/bin/zsh|' /etc/passwd
```
To edit config: 
```
nano ~/.zshrc
``` 

## Fish 
```
apk add fish
```
To make default shell: 
```
sed -i '1s|.*|root:x:0:0:root:/root:/usr/bin/fish|' /etc/passwd
```
To edit config: 
```
nano ~/.config/fish/config.fish
```
You can use the `config.fish` file in this repo as a template. 
```
```

## Bash 
```
apk add bash
```
To make default shell: 
```
sed -i '1s|.*|root:x:0:0:root:/root:/usr/bin/bash|' /etc/passwd
```
