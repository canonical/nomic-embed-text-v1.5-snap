# Nomic Embed Text v1.5 inference snap
[![nomic-embed-text-v1-5](https://snapcraft.io/nomic-embed-text-v1-5/badge.svg)](https://snapcraft.io/nomic-embed-text-v1-5)

Nomic Embed Text v1.5 is a high-performance text embedding model that produces dense vector representations for retrieval and semantic search.

Use this snap to quickly install an optimized environment for local inference with Nomic Embed Text v1.5.

The snap includes the following hardware-optimized inference engines:

* cpu: Optimized for x64 and ARM (armv8, armv9) CPUs
* nvidia-gpu: CUDA-enabled GPU acceleration

The most suitable engine is automatically selected based on the available hardware.

#### Install
```shell
sudo snap install nomic-embed-text-v1-5
```

#### Use
```shell
nomic-embed-text-v1-5 --help
```

> [!TIP]
> Some accelerators require extra [drivers](https://documentation.ubuntu.com/inference-snaps/how-to/setup/drivers/) to be usable with this snap.

## Resources

📚 **[Documentation](https://documentation.ubuntu.com/inference-snaps/)**, learn how to use inference snaps

💬 **[Discussions](https://github.com/canonical/inference-snaps/discussions)**, ask questions and share ideas

🐛 **[Issues](https://github.com/canonical/inference-snaps/issues)**, report bugs and request features

## Build and install from source

Clone the repo:
```shell
git clone https://github.com/canonical/nomic-embed-text-v1.5-snap
cd nomic-embed-text-v1.5-snap
```

Initialize the development environment:
```shell
make init
```

Build and install snap:
```shell
make build
make install
```
