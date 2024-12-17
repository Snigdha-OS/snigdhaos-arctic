# 🌌 Snigdha OS Arctic V

Snigdha OS Arctic V is the latest iteration of **Snigdha OS**, a lightweight, highly customizable Linux distribution based on Arch Linux and the Linux Zen Kernel. This edition emphasizes a modern, smooth, and user-centric experience for everyday use and penetration testing.

---

## ✨ Features

- **🛠️ Tailored Toolset:** Comes preloaded with essential tools for penetration testing and security auditing. Add or remove tools as needed during installation or afterward.
- **🔒 Enhanced Security:** Built with strict security configurations like SELinux, AppArmor, and minimal active services to reduce the attack surface.
- **⚡ Optimized Performance:** Powered by the Linux Zen Kernel for a faster and smoother experience, even on low-end hardware.
- **🎨 Customization Options:** Designed for users who love to tweak their systems. Fully supports GTK themes, icon packs, and other UI customizations.
- **📦 Lightweight and Fast:** Minimal bloat, allowing you to install only what you need.
- **🌍 Open-Source Community:** A community-driven project promoting collaboration and innovation.

---

## 📦 Installation

### Requirements:

- **Processor:** 64-bit (x86\_64 or ARM64)
- **RAM:** 2 GB (4 GB recommended)
- **Storage:** 20 GB free disk space
- **Internet Connection:** Required for installation and updates

### Steps:

1. Download the latest Snigdha OS Arctic V ISO from the [Releases](https://github.com/Snigdha-OS/snigdhaos-arctic/releases) page.
2. Create a bootable USB drive using tools like **Rufus**, **Etcher**, or `dd` (Linux).
3. Boot from the USB and follow the guided installation process.

For detailed instructions, refer to the [Installation Guide](https://github.com/Snigdha-OS/snigdhaos-arctic/wiki/Installation-Guide).

---

## 🖼️ Screenshots

---

## 🛠️ Contributing

We welcome contributions from the community! Here's how you can get involved:

1. Fork the repository and clone it locally.
2. Create a branch for your feature or fix: `git checkout -b my-feature`.
3. Commit your changes and push them: `git push origin my-feature`.
4. Submit a pull request describing your changes.

For more details, see our [Contributing Guidelines](https://github.com/Snigdha-OS/snigdhaos-arctic/blob/main/CONTRIBUTING.md).

---

## 🤖 Development Workflow

### Setting Up the Environment:

- Ensure you have **Git**, **Archiso**, and **Python** installed on your system:

```bash
sudo pacman -S git archiso python
```

### Building the ISO:

1. Clone the repository:

```bash
git clone https://github.com/Snigdha-OS/snigdhaos-arctic.git
cd snigdhaos-arctic
```

2. Customize your build by modifying files in these directories:

   - `configs/`: Adjust system settings.
   - `themes/`: Tweak or add themes.
   - `packages/`: Modify the package list to suit your needs.

3. Build the ISO:

```bash
sudo ./scripts/build-iso.sh
```

4. Test the build using a virtual machine or a bootable USB drive.

---

## 🤝 Community & Support

Join our growing community to share ideas, report issues, or contribute to the development of SnigdhaOS-Arctic!

- **Issues:** Found a bug or have a suggestion? [Create an issue](https://github.com/Snigdha-OS/snigdhaos-arctic/issues).
- **Pull Requests:** Want to contribute? Submit a PR with your changes!
- **Discussions:** Join the conversation on [GitHub Discussions](https://github.com/Snigdha-OS/snigdhaos-arctic/discussions).

Stay updated by following us on:

- **[Bluesky](https://bsky.app/@snigdhaos.org)**
- **[Twitter](https://twitter.com/snigdha_os)**

---

## 🤝🏻 Developers
| Developer      | Role               | Profile Picture                                                                   | Social Links                                                                           |
| -------------- | ------------------ | --------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------- |
| **@eshanized** | Lead Developer     | ![Eshanized](https://avatars.githubusercontent.com/u/148610067?v=4)                    | [GitHub](https://github.com/eshanized) • [Twitter](https://twitter.com/eshanized)     |
| **@alokified** | Web Infrastructure | ![Alokified](https://avatars.githubusercontent.com/u/ID?s=100)                    | [GitHub](https://github.com/alokified) • [Twitter](https://twitter.com/alokified)     |
| **@utkrshift** | WM/DM Developer    | ![Utkrshift](https://avatars.githubusercontent.com/u/ID?s=100)                    | [GitHub](https://github.com/utkrshift) • [LinkedIn](https://linkedin.com/in/utkrshift) |
---

## 🤝🏻 Acknowledgments

Special thanks to **Tonmoy Infrastructure** and **IXH International Co.** for sponsoring this project and making it possible. Additional gratitude to our contributors and users for shaping Snigdha OS Arctic V into a community-driven, innovative platform.

---

## 📜 License

This project is licensed under the **MIT License**. See the [LICENSE](LICENSE) file for details.

