# talostpl

## Features

- **Interactive wizard**: Step-by-step prompts for all cluster parameters.
- **Non-interactive mode**: All answers and IPs are taken from a YAML file, no prompts.
- **Automatic patch generation**: Generates all required Talos patches and config files.
- **Integration with talosctl**: Runs `talosctl` to generate secrets, configs, apply patches, and bootstrap the cluster.
- **Kubeconfig export**: Automatically exports kubeconfig to your `$HOME/.kube` directory.
- **Cluster initialization control**: You can skip cluster initialization (apply-config/bootstrap) at the final step if needed (interactive).

## Requirements

- Installed utilities: `talosctl`, `kubectl` (must be in `$PATH`)
- Linux или macOS (darwin)

## Installation

Go to the [Releases page](https://github.com/vasyakrg/talostpl/releases) and download the binary for your OS and architecture.

For MacOS (Intel/Apple Silicon) users and BREW package manager

```bash
brew tap vasyakrg/talostpl
brew install talostpl
```

or

```sh
# Example for macOS arm64
wget -O talostpl "https://github.com/vasyakrg/talostpl/releases/download/$(curl -s https://api.github.com/repos/vasyakrg/talostpl/releases/latest | grep '"tag_name":' | head -1 | cut -d '"' -f4)/talostpl-darwin-arm64"
chmod +x talostpl
sudo mv talostpl /usr/local/bin/
```

```sh
# Example for Linux amd64
curl -L -o talostpl "https://github.com/vasyakrg/talostpl/releases/download/$(curl -s https://api.github.com/repos/vasyakrg/talostpl/releases/latest | grep '"tag_name":' | head -1 | cut -d '"' -f4)/talostpl-linux-amd64"
chmod +x talostpl
sudo mv talostpl /usr/local/bin/
```

```sh
# Example for Linux arm64
curl -L -o talostpl "https://github.com/vasyakrg/talostpl/releases/download/$(curl -s https://api.github.com/repos/vasyakrg/talostpl/releases/latest | grep '"tag_name":' | head -1 | cut -d '"' -f4)/talostpl-linux-arm64"
chmod +x talostpl
sudo mv talostpl /usr/local/bin/
```

After installation, you can run `talostpl -v` from anywhere in your terminal.
