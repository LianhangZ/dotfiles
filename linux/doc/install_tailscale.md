# Tailscale

## Download

```
curl -fsSL https://tailscale.com/install.sh | sh
```

## Configuration

```
sudo tailscale up
```

```
To authenticate, visit:
https://login.tailscale.com/a/xxxxxxxx
```

```
sudo tailscale up --auth-key tskey-xxxxxxxx
```

```
sudo tailscale up --ssh
```

## SSH

```
tailscale ip -4
```
