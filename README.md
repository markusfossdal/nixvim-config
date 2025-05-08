# Nixvim template

## Ubuntu install

- Install the following
```
git
curl
```

- before installing Nix package manager from [www.nixos.com](www.nixos.com)

- edit `/etc/nix/nix.conf` to include 
```
experimental-features = nix-command flakes
```


## Testing configuration

To test your configuration simply run the following command
```
nix run .
```
