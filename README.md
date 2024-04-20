# RR_Setup EXE_v2

**Created by:** Gyn, LongLeo

**Setup Exe:** Extension/Scripts/Plugins/Presets for PTS/AE/PR/......

## Resource & Rookie® - EXE For File (Extension/Scripts/Plugins/Presets)

**Created by:** Gyn, LongLeo

## Setup Details

- **App Name:** Extension Name
- **Version:** v1.0
- **Publisher:** Resource & Rookie
- **Publisher URLs:** [Discord](https://discord.gg/resource-rookie-r-1154264290535161876), [Facebook](https://www.facebook.com/ResourceRookie2023/)
- **Output Directory:** "Output"
- **Icon:** R&R.ico
- **Wizard Style:** modern

## Run

- Open Tutorial: [Tutorial](https://www.youtube.com/watch?v=eFJ35ffyo6M&embeds_referring_euri=https%3A%2F%2Fwww.compositenation.com%2F&source_ve_path=MjM4NTE&feature=emb_title)
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

