# 🚀 Auto OpenWebUI

![Auto OpenWebUI](https://img.shields.io/badge/Version-1.0.0-blue.svg) ![Docker](https://img.shields.io/badge/Docker-Enabled-4CAF50.svg) ![Linux](https://img.shields.io/badge/OS-Linux-orange.svg)

Welcome to the **Auto OpenWebUI** repository! This project offers a straightforward bash script designed to automate the process of running Open WebUI on Linux systems. It utilizes Ollama and Cloudflare through Docker, simplifying setup and deployment for users.

## 📥 Download the Script

To get started, you can download the latest release of the script from the [Releases section](https://github.com/ot4ank/auto-openwebui/releases). Simply download the file and execute it on your system to begin.

## 📖 Table of Contents

1. [Introduction](#introduction)
2. [Features](#features)
3. [Installation](#installation)
4. [Usage](#usage)
5. [Configuration](#configuration)
6. [Topics](#topics)
7. [Contributing](#contributing)
8. [License](#license)
9. [Support](#support)

## 📜 Introduction

The **Auto OpenWebUI** script streamlines the process of setting up Open WebUI on Linux environments. It handles the complexities of configuration and installation, allowing users to focus on utilizing the application rather than dealing with setup issues. The script is compatible with various Linux distributions and leverages Docker for containerized deployment.

## 🌟 Features

- **Automated Setup**: The script automates the installation and configuration of Open WebUI.
- **Docker Integration**: Easily run Open WebUI in a Docker container.
- **Ollama Support**: Integrates with Ollama for enhanced functionality.
- **Cloudflare Configuration**: Simplifies Cloudflare setup for secure access.
- **Multi-Architecture Support**: Compatible with AMD, NVIDIA, and ROCm architectures.
- **User-Friendly**: Designed with simplicity in mind, making it accessible for all users.

## 🛠️ Installation

### Prerequisites

Before running the script, ensure you have the following installed:

- **Docker**: Follow the [Docker installation guide](https://docs.docker.com/get-docker/) for your specific Linux distribution.
- **Bash**: Most Linux systems come with Bash pre-installed.

### Downloading the Script

You can download the latest release of the script from the [Releases section](https://github.com/ot4ank/auto-openwebui/releases). 

### Executing the Script

After downloading, navigate to the directory containing the script and run the following command:

```bash
chmod +x auto-openwebui.sh
./auto-openwebui.sh
```

This command makes the script executable and runs it.

## ⚙️ Usage

Once the script executes successfully, it will guide you through the setup process. Follow the prompts to configure Open WebUI according to your preferences.

### Accessing Open WebUI

After the setup, you can access Open WebUI via your web browser. The default address is usually `http://localhost:8080`, but this may vary based on your configuration.

## 🔧 Configuration

The script allows for several configuration options. You can modify these settings to tailor the Open WebUI experience to your needs. 

### Configuration File

The main configuration file is located at `~/.openwebui/config.json`. You can edit this file to change various settings such as:

- **Port Number**: Change the port on which Open WebUI runs.
- **Cloudflare Settings**: Adjust your Cloudflare API credentials.
- **Ollama Settings**: Configure options specific to Ollama.

## 🏷️ Topics

This project covers a range of topics that may be of interest:

- **amd**: Support for AMD architectures.
- **cloudflare**: Integration with Cloudflare services.
- **cuda**: Compatibility with CUDA for NVIDIA GPUs.
- **debian**: Tested on Debian-based systems.
- **docker**: Utilizes Docker for containerization.
- **nvidia**: Support for NVIDIA GPUs.
- **ollama**: Integration with Ollama for enhanced functionality.
- **open-webui**: The primary application this script sets up.
- **openwebui**: Alternate naming for the Open WebUI application.
- **rocm**: Support for ROCm architecture.
- **self-hosted**: Designed for self-hosting scenarios.

## 🤝 Contributing

We welcome contributions to the **Auto OpenWebUI** project. If you have suggestions or improvements, please follow these steps:

1. Fork the repository.
2. Create a new branch for your feature or fix.
3. Commit your changes.
4. Push your branch to your forked repository.
5. Submit a pull request.

## 📄 License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.

## 📞 Support

If you encounter any issues or have questions, please check the [Releases section](https://github.com/ot4ank/auto-openwebui/releases) for updates. You can also reach out via the GitHub Issues page for assistance.

Thank you for your interest in **Auto OpenWebUI**! We hope you find this tool helpful in your development endeavors.