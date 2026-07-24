<!--
# This is the name of the snap. The name that is registered on the snap store and also the name of the cli command.
snap-name: nomic-embed-text-v1-5
# This name is just a friendly name for the snap, it can be used in the documentation
snap-friendly-name: Nomic Embed Text v1.5
# URL to model card from the model publisher
model-card: https://huggingface.co/nomic-ai/nomic-embed-text-v1.5
# The port that the inference snap will use for its API server.
http-port: 8348
# The port that the inference snap will use for its webui server.
webui-http-port: 8349
# Optimizations
engines: cpu, nvidia-gpu
-->

# Nomic Embed Text v1.5 inference snap
[![nomic-embed-text-v1-5](https://snapcraft.io/nomic-embed-text-v1-5/badge.svg)](https://snapcraft.io/nomic-embed-text-v1-5)

> This README is a template. Fields wrapped in `{...}` should be replaced with concrete values. If you use an agentic workflow using the included [workshop](#develop-this-snap-in-workshop), the values will get filled automatically.

Install [Nomic Embed Text v1.5](https://huggingface.co/nomic-ai/nomic-embed-text-v1.5), optimized directly for your hardware.
This package deploys a high-performance runtime for local inference across arm and x86 platforms. It runs efficiently on pure CPU or leverages hardware acceleration via {NVIDIA, Intel, or AMD GPUs}.

Before starting, install the necessary [drivers](https://documentation.ubuntu.com/inference-snaps/how-to/setup/drivers/) for your accelerator.

| Engine | Arch | Description |
|--------------|--------------|-------------|
| cpu | amd64, arm64 | Optimized for several CPU variants (x86, armv8, armv9) |
| nvidia-gpu | amd64, arm64 | CUDA-enabled GPU acceleration |

#### Install
```
sudo snap install nomic-embed-text-v1-5
```
#### Use
```
nomic-embed-text-v1-5 --help
```

#### Default configurations
| Key | Value |
|-----|-------|
| http.port | 8348   |
| http.host | 127.0.0.1 |
| webui.http.port | 8349  |
| webui.http.host | 127.0.0.1 |

## Resources

📚 **[Documentation](https://documentation.ubuntu.com/inference-snaps/)**, learn how to use inference snaps

💬 **[Discussions](https://github.com/canonical/inference-snaps/discussions)**, ask questions and share ideas

🐛 **[Issues](https://github.com/canonical/inference-snaps/issues)**, report bugs and request features

## Build and install from source

Clone this repo with its submodules:
```shell
git clone --recurse-submodules https://github.com/canonical/nomic-embed-text-v1.5-snap
```

Prepare the required models by running `make download-models`.

Build the snap and its component:
```shell
snapcraft pack -v
```

Refer to the `./dev` directory for additional development tools.

## Develop this snap in a workshop

Start the `workshop` environment and pack the snap with AI agents:

```shell
workshop launch
workshop shell
opencode
```

Choose the preferred LLM in opencode and prompt `start packing pipeline` to start the snap creation process. The snap will be built and installed automatically in the workshop environment.
