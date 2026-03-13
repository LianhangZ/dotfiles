# Forgejo

## Install Forgejo and Git

```shell
sudo cp forgejo-x.y.z-linux-amd64 /usr/local/bin/forgejo
sudo chmod 755 /usr/local/bin/forgejo
```

```shell
sudo apt install git git-lfs
```

## Create git user

```shell
sudo adduser --system --shell /bin/bash --gecos 'Git Version Control' \
  --group --disabled-password --home /home/git git
```

## Create directories Forgejo will use

```shell
sudo mkdir /var/lib/forgejo
sudo chown git:git /var/lib/forgejo && sudo chmod 750 /var/lib/forgejo
```

```shell
sudo mkdir /etc/forgejo
sudo chown root:git /etc/forgejo && sudo chmod 770 /etc/forgejo
```

## Install systemd service for Forgejo

```shell
sudo wget -O /etc/systemd/system/forgejo.service https://codeberg.org/forgejo/forgejo/raw/branch/forgejo/contrib/systemd/forgejo.service
```

```shell
sudo systemctl daemon-reload
```

```shell
sudo systemctl enable forgejo.service
sudo systemctl start forgejo.service
```

## Forgejo's web-based configuration

```shell
sudo systemctl status forgejo.service
```

```shell
sudo journalctl -n 100 --unit forgejo.service
```

## Further configuration in Forgejo's app.ini

```shell
sudo systemctl stop forgejo.service
```

```shell
sudo chmod 750 /etc/forgejo && sudo chmod 640 /etc/forgejo/app.ini
```