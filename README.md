# Shells-for-iSH 

## oh my zsh! 
Install:
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
Install: 
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
cd ~ 
git clone https://github.com/cons0le7/Shells-for-iSH.git
cp ~/Shells-for-iSH/config.fish ~/.config/fish/config.fish
rm -r ~/Shells-for-iSH 
```

## Bash 
Install: 
```
apk add bash
```
To make default shell: 
```
sed -i '1s|.*|root:x:0:0:root:/root:/usr/bin/bash|' /etc/passwd
```
___
# Not shells 

## Neofetch 
To install: 
```
apk add neofetch
```
To dump default config run `neofetch` once and it will be in `~/.config/neofetch/config.conf` 
This is the same as the file in this repo titled `neofetch_full.conf` 
You can also import a simplified version from this repo `neofetch_simple.conf` to make modifying easier: 
```
cd ~ 
git clone https://github.com/cons0le7/Shells-for-iSH.git
cp ~/Shells-for-iSH/neofetch_simple.conf ~/.config/neofetch/config.conf
rm -r ~/Shells-for-iSH 
```
