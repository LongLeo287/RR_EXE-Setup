**v3.1** | English | [Tiếng Việt](./docs/REAME.vi-VN.md)

<h1 align="center">
  <br>
  EXE SETUP
  <br>
<h1>
<p align="center">Extensions, Srcipts, Presets, Plugins,....for AE, PR, AU, PTS, AI, Davinci and More...</p>

### 🔗 **Social Links**

- 🤝 Support Server: [Join Here](https://discord.gg/resource-rookie-r-1154264290535161876)
- 🐳 Fanpage: [Visit Here](https://www.facebook.com/ResourceRookie2023)

<br>

<h1 align="center"> ✨ Install ✨ </h1>

First, your device needs to meet the following requirements:

- Inno Setup (6.2.2) and above. [Inno Setup](https://jrsoftware.org/download.php/is.exe) installed.

**The best support tool at work:**
- **[Decode Jsxbin Auto](https://github.com/LongLeo287/Decode-Jsxbin-Auto)**.   Decode Jsxbin to Jsx.
- **[Adobe ExtendScript Toolkit](https://github.com/LongLeo287/RR_EXE-Setup/blob/c8e6b5d058f19bccddc05f6246a657c65268f30f/Tools/Adobe%20Extend%20Script%20Toolkit)**   Encode & Sign Jsx to Jsxbin.
- **[TextToJSXBIN](https://marketplace.visualstudio.com/items?itemName=motionland.texttojsxbin#:~:text=Select%20created%20piece%20of%20code.&text=Or%20click%20Cmd%2BR%20on,original%20code%20will%20be%20commented.)**.   Encode Jsx to Jsxbin.
- **[JS-Beautify for VS Code](https://marketplace.visualstudio.com/items?itemName=HookyQR.beautify)** Or **[Prettier](https://prettier.io/docs/en/install)**.   Code Formatter.
- **[BASE64](https://www.base64decode.org/)**.   Decode and Encode.
- **[Deobfuscator](https://obf-io.deobfuscate.io/)**, **[JStillery](https://mindedsecurity.github.io/jstillery/)**, **[de4js](https://lelinhtinh.github.io/de4js/)**.
- **[Javascript Compare](https://onlinetextcompare.com/js)**

Next, download the package from [GitHub Release](https://github.com/LongLeo287/RR_EXE-Setup/releases).   Extract it and follow the README.

- **[Documention Guide](./docs/Documention.pdf)**

##

### 🌳 LIST TREE
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
 ```js
 #define MyAppName "Your Application Name"
```

- **MyAppVersion**: Version of the application.
 ```js 
#define MyAppVersion "Your Application Version"
```

- **LicenseFile**: Path to the license file.
```js
LicenseFile="Path to Your License File"
```

- **UninstallDisplayIcon**: Icon displayed during uninstallation.

- **AppPublisherURL**: Publisher's URL.
```js
AppPublisherURL="URL of Your Application Publisher"
```
- **AppSupportURL**: Support URL.
```js
AppSupportURL="Support URL for Your Application"
```

- **SetupIconFile**: Icon file for the installer.
```js
SetupIconFile="Path to Icon for Setup"
```

- **WizardImageFile**: Image displayed on the wizard dialog.
```js
WizardImageFile="Path to Image to Display in Setup Wizard Dialog"
```

- **WizardSmallImageFile**: Image displayed on the welcome page.
```js
WizardSmallImageFile="Path to Image to Display on Setup Welcome Page"
```

- **Password**: Password for the installer.
```js
Password="Password for EXE Installation"
```

- Other setup configurations such as AppVersion, AppContact, OutputDir, Compression, Encryption, etc.

### 📁 Files and Run Sections 📦

- **Files**: Specifies files to include in the installer.
- **Run**: Specifies actions to perform after installation, like running certain files or executables.

### ⚙️ Registry Modifications

- Modifies registry entries related to Adobe CSXS versions.

### ⚒️ Custom Code

- Defines custom procedures for specific installation steps.
- Copies files to specified directories based on different conditions.
- Saves the list of copied files and folders to a configuration file.
- Opens a URL after installation completion.

### 🗒️ **Note**

- Certain sections are commented out with "//" for specific scenarios. Uncomment these sections as needed.

This script is customizable based on your requirements. Modify it according to your application's needs.

For more details and instructions on usage, refer to the comments within the script.
<br>

<h1 align="center"> ✨ Copyright ✨ </h1>

- Copyright © 2024 [Resource & Rookie](https://www.facebook.com/ResourceRookie2023) - [Gyn](https://www.facebook.com/gyginee/) | [Long Leo](https://www.facebook.com/LongLeo97/).
