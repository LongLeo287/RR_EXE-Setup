# R&R_Setup EXE_v3

**Created by:** Gyn, LongLeo

**Setup Exe:** Extensions/Scripts/Plugins/Presets for PTS/AE/PR/......

## Resource & Rookie® - SETUP EXE For File (Extensions/Scripts/Plugins/Presets)

**Created by:** Gyn, LongLeo

## Setup Details

- **App Name:** File Name
- **Version:** v1.0
- **Publisher:** Resource & Rookie
- **Publisher URLs:** [Discord](https://discord.gg/resource-rookie-r-1154264290535161876), [Facebook](https://www.facebook.com/ResourceRookie2023/)
- **Output Directory:** "Output"
- **Icon:** R&R.ico
- **Wizard Style:** modern

## Run

- Open Tutorial: [Tutorial](link)
- Join Discord: [Discord](https://discord.gg/resource-rookie-r-1154264290535161876)

## Code

### Main Function

- OpenURL: Opens a URL in a web browser.

### Button Functions

- ButtonClick(Sender: TObject): Opens Discord URL.
- Button2Click(Sender: TObject): Opens Facebook URL.

### Initialize Function

- InitializeWizard(): Initializes buttons for Discord and Facebook.

- DotNet4NotInstalled: Checks if .NET Framework 4 is not installed.

- InitializeSetup(): Displays information message at the beginning of installation.

### Adobe Function

- GetDirectories(const RootPath: string): Retrieves directories.

- CopyFilesAndFolders(const SourceDir, DestDir: string): Copies files and folders.

### Install Function

- CurStepChanged(CurStep: TSetupStep): Handles post-installation steps.

### Uninstall Function

- DeleteFilesAndFoldersFromConfig(): Deletes files and folders listed in Config.txt.

- CurUninstallStepChanged(CurUninstallStep: TUninstallStep): Handles uninstallation steps.

