# 🌌 **Snigdha OS Arctic V**

Snigdha OS Arctic V is the latest iteration of **Snigdha OS**, a lightweight, highly customizable Linux distribution based on **Arch Linux** and the **Linux Zen Kernel**. This edition focuses on delivering a modern, smooth, and user-centric experience tailored for everyday use and penetration testing.



## ✨ **Key Features**

- **🛠️ Tailored Toolset:** Preloaded with essential tools for penetration testing and security auditing. Add or remove tools during installation or later based on your needs.
- **🔒 Enhanced Security:** Implements advanced security features like:
  - **SELinux**: Mandatory access control for safeguarding sensitive data.
  - **AppArmor**: Application isolation for better threat protection.
  - **Minimal Active Services**: Reduces potential attack vectors to ensure a hardened system.
- **⚡ Optimized Performance:** Powered by the **Linux Zen Kernel**, which enhances responsiveness and reduces latency. Perfect for both low-end devices and high-performance setups.
- **🎨 Ultimate Customization:** Offers extensive UI customization with support for:
  - **GTK Themes**: Choose from hundreds of themes for a unique desktop look.
  - **Icon Packs**: Customize every corner of your desktop.
  - **Window Manager (WM) Integration**: Easily switch between popular WMs like **i3**, **BSPWM**, and **Openbox**.
- **📦 Lightweight & Modular:** Avoids unnecessary bloatware and allows you to install only what you need.
- **🌍 Open-Source Community:** Built and maintained by a collaborative community committed to innovation.



## 📦 **Installation Instructions**

### 🖥️ **System Requirements**

- **💻 Processor:** 64-bit (x86_64 or ARM64)
- **🧠 RAM:** 2 GB minimum (4 GB recommended)
- **💾 Storage:** 20 GB free disk space
- **🌐 Internet Connection:** Required for installation and updates

### 🚀 **Installation Steps**

1. 📥 **Download:** Grab the latest **Snigdha OS Arctic V ISO** from the [Releases](https://github.com/Snigdha-OS/snigdhaos-arctic/releases) page.
2. 🔧 **Create Bootable Media:** Use tools like **Rufus**, **Etcher**, or `dd` (Linux) to create a bootable USB drive.
3. 🔄 **Boot and Install:** Boot from the USB drive and follow the guided installation process. Choose your preferred desktop environment, tools, and configurations.

📚 For detailed guidance, check out the [Installation Guide](https://github.com/Snigdha-OS/snigdhaos-arctic/wiki/Installation-Guide).



## 📚 **Documentation**

Comprehensive documentation is available to help you explore and maximize your experience with **Snigdha OS Arctic V**. Here’s what’s included:

- **Getting Started Guide**: Learn the basics of installing and setting up Snigdha OS.
- **Desktop Environment Customization**: Step-by-step instructions for personalizing your UI.
- **Troubleshooting**: Common issues and solutions.
- **Advanced Configurations**: Dive into kernel optimizations, WM/DM setups, and automation.

Access the complete documentation [here](https://github.com/Snigdha-OS/snigdhaos-arctic/wiki).



## 🛠️ **Contributing**

🎉 Contributions from the community are always welcome! Here’s how you can get involved:

1. 🔀 **Fork** the repository and clone it locally.
2. 🛤️ **Create** a branch for your feature or fix: `git checkout -b my-feature`.
3. 💾 **Commit** your changes and **push** them: `git push origin my-feature`.
4. 📨 **Submit** a pull request describing your changes.

For detailed contribution guidelines, refer to the [Contributing Guidelines](https://github.com/Snigdha-OS/snigdhaos-arctic/blob/main/CONTRIBUTING.md).



## 🤖 **Development Workflow**

### 🛠️ **Setting Up the Environment**

Ensure you have **Git**, **Archiso**, and **Python** installed on your system:

```bash
sudo pacman -S git archiso python
```

### ⚙️ **Building the ISO**

1. 🔽 Clone the repository:

```bash
git clone https://github.com/Snigdha-OS/snigdhaos-arctic.git
cd snigdhaos-arctic
```

2. ✏️ Customize your build by modifying files in these directories:
   - 🛠️ `configs/`: Adjust system settings.
   - 🎨 `themes/`: Tweak or add themes.
   - 📦 `packages/`: Modify the package list to suit your needs.

3. 🛑 Build the ISO:

```bash
sudo ./scripts/build-iso.sh
```

4. 🖥️ Test the build using a virtual machine or a bootable USB drive.



## 🤝 **Community & Support**

👥 Join our growing community to share ideas, report issues, or contribute to the development of Snigdha OS Arctic V!

- 🐞 **Issues:** Found a bug or have a suggestion? [Create an issue](https://github.com/Snigdha-OS/snigdhaos-arctic/issues).
- ✍️ **Pull Requests:** Want to contribute? [Submit a PR](https://github.com/Snigdha-OS/snigdhaos-arctic/pulls)!
- 💬 **Discussions:** Join the conversation on [GitHub Discussions](https://github.com/Snigdha-OS/snigdhaos-arctic/discussions).

Stay updated by following us on:

- 🐦 **[Twitter](https://twitter.com/snigdha_os)**
- 🌌 **[Bluesky](https://bsky.app/@snigdhaos.org)**



## 💸 **Donate**

💖 Support the development of Snigdha OS Arctic V by making a donation! Your contributions help us maintain and improve the project.

### 💵 **Suggested Donation Amounts**

- **💰 $10** - Helps with ongoing maintenance and security updates.
- **💰 $25** - Supports the addition of new features and tools.
- **💰 $50 or more** - Significant contributions go towards infrastructure and server costs.

Donations can be made via:

- 🅿️ [PayPal](https://www.paypal.com/donate?hosted_button_id=EXAMPLEID)  
- 💳 [GitHub Sponsors](https://github.com/sponsors/yourusername)

🙏 Thank you for supporting **Snigdha OS Arctic V**!



## 🤝🏻 **Developers**

| 👨‍💻 Developer      | 💼 Role               | 🌐 Social Links                                                                           |
| ------------------ | -------------------- | -------------------------------------------------------------------------------------- |
| **@eshanized**     | Lead Developer       | [GitHub](https://github.com/eshanized) • [Twitter](https://twitter.com/eshanized)     |
| **@alokified**     | Web Infrastructure   | [GitHub](https://github.com/alokified) • [Twitter](https://twitter.com/alokified)     |
| **@utkrshift**     | WM/DM Developer      | [GitHub](https://github.com/utkrshift) • [LinkedIn](https://linkedin.com/in/utkrshift) |


## 🎉 **Acknowledgments**

🙏 Special thanks to **Tonmoy Infrastructure** and **IXH International Co.** for sponsoring this project and making it possible. Additional gratitude to our contributors and users for shaping Snigdha OS Arctic V into a community-driven, innovative platform.


## 📜 **License**

📄 This project is licensed under the **MIT License**. See the [LICENSE](LICENSE) file for details.