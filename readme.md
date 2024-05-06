**v3.1** | English | [Tiếng Việt](./docs/REAME.vi-VN.md)

<h1 align="center">
  <br>
# EXE SETUP
  <br>
<h1>
<p align="center">Extensions, Srcipts, Presets, Plugins,....for AE, PR, AU, PTS, AI, Davinci and More...</p>

## 🔗 **Social Links**

- 🤝 Support Server: [Join Here](https://discord.gg/resource-rookie-r-1154264290535161876)
- 🐳 Fanpage: [Visit Here](https://www.facebook.com/ResourceRookie2023)

<br>
<h1 align="center"> ✨ Install ✨ </h1>

First, your device needs to meet the following requirements:

- Inno Setup (6.2.2) and above. [Inno Setup](https://jrsoftware.org/download.php/is.exe) installed.

**The best support tool at work:**
- **[Decode Jsxbin Auto](Tools/Decode Jsxbin Auto)**. Decode Jsxbin to Jsx.
- **[Adobe ExtendScript Toolkit](Adobe Extend Script Toolkit)** Encode & Sign Jsx to Jsxbin.
- **[TextToJSXBIN](vscode:extension/motionland.texttojsxbin)**. Encode Jsx to Jsxbin.
- **[JS-Beautify for VS Code](vscode:extension/vsce-toolroom.vscode-beautify)** Or **[Prettier](https://prettier.io/docs/en/install)**. Code Formatter.

Next, download the package from [GitHub Release](https://github.com/LongLeo287/RR_EXE-Setup/releases). Extract it and follow the README.

[Documention Guide](./docs/Documention.pdf)

## LIST TREE
- Data
- Lib
- Information
- Output
- Source
- FILE ISS
- Template SETUP EXE.iss


### 🚀 **Setup Information**

- **AppId**: Unique identifier for the application.
- **MyAppName**: Name of the application.
- **MyAppVersion**: Version of the application.
- **LicenseFile**: Path to the license file.
- **UninstallDisplayIcon**: Icon displayed during uninstallation.
- **AppPublisherURL**: Publisher's URL.
- **AppSupportURL**: Support URL.
- **SetupIconFile**: Icon file for the installer.
- **WizardImageFile**: Image displayed on the wizard dialog.
- **WizardSmallImageFile**: Image displayed on the welcome page.
- **Password**: Password for the installer.
- Other setup configurations such as AppVersion, AppContact, OutputDir, Compression, Encryption, etc.

### Files and Run Sections

- **Files**: Specifies files to include in the installer.
- **Run**: Specifies actions to perform after installation, like running certain files or executables.

### Registry Modifications

- Modifies registry entries related to Adobe CSXS versions.

### Custom Code

- Defines custom procedures for specific installation steps.
- Copies files to specified directories based on different conditions.
- Saves the list of copied files and folders to a configuration file.
- Opens a URL after installation completion.

### **Note**

- Certain sections are commented out with "//" for specific scenarios. Uncomment these sections as needed.

This script is customizable based on your requirements. Modify it according to your application's needs.

For more details and instructions on usage, refer to the comments within the script.
<br>

<h1 align="center"> ✨ Copyright ✨ </h1>

- Copyright © 2024 [Resource & Rookie](https://www.facebook.com/ResourceRookie2023) - [Gyn](https://www.facebook.com/gyginee/) | [Long Leo](https://www.facebook.com/LongLeo97/).
