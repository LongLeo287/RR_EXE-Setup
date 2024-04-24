// Resource & Rookie® - Template EXE SETUP
// Created by: Gyn, LongLeo

; Include ISS
#include "Data/vietnamese.iss"
#include "lib/define.iss"
#include "lib/lib.iss"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)

//--------------------------------- MUST RENEW APPID WHEN YOU CREATE NEW EXE | Tools -> Generate GUID ---------------------------------------------//
AppId={{X-X-X-X-X}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
[Setup]
#define MyAppName "Template"
#define MyAppVersion "v0.0.0.0"
LicenseFile=Information\Template.txt
UninstallDisplayIcon=Data\R&R.ico
;AppReadmeFile=https://www.facebook.com/ResourceRookie2023/

//--------------------------------- URL TO AUTHOR EXE  ---------------------------------------------//
AppPublisherURL={#Discord}
AppSupportURL={#Facebook}

//--------------------------------- ICON FILE EXE ---------------------------------------------//
SetupIconFile=Data\R&R.ico
; Specify the image to be displayed on the wizard dialog
WizardImageFile=Data\rrbg1.bmp
; Specify the image to be displayed on the welcome page
WizardSmallImageFile=Data\rrtop.bmp

//----------------------------- PASSWORD FOR INSTALL EXE  -------------------------------------//
////////////////////////////
Password=R&R

/////////////////////////////////////////////// DO NOT TOUCH IF YOU DONT KNOW WHAT'RE YOU DOING //////////////////////////////////////////////////////////
    //---------------------------------   -- ANOTHER SETTING ---------------------------------------------//
    AppVersion={#MyAppVersion}
    AppCopyright= {#Copyright}
    AppContact={#MyAppPublisher}   
    AppVerName={#MyAppName}
    UninstallDisplayName={#MyAppName}
    WizardResizable = no
    AppPublisher={#MyAppPublisher}
    DisableDirPage=yes
    DefaultGroupName={#MyAppName}
    AppName={#MyAppName}   
    OutputBaseFilename={#MyAppName}
    OutputDir={#OutputDir}
    DefaultDirName={autopf}\{#MyAppName}
    DisableProgramGroupPage=yes
    Encryption=yes
    Compression=lzma
    SolidCompression=yes
    WizardStyle=modern
    ; Specify the background image for the installer window
    BackColor=clSilver

    [UninstallDelete]
    Type: filesandordirs; Name: "{app}";

    [Files]
    //---------Put all files into the archived exe
    Source: "{#sourceFolder}\*"; DestDir: "{tmp}"; Flags: ignoreversion recursesubdirs createallsubdirs
    //------------------------- AUTOMATICALLY RUN THE FILE WHEN INSTALLATION IS COMPLETED --------------------------------//

    [Run]
    Filename: "{#Tutorial}"; Description: "{cm:Tutorial}"; Flags: postinstall shellexec 
    Filename: "{#Discord}"; Description: "{cm:Discord}"; Flags: postinstall shellexec 


//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//------------------------- REGEDIT ADOBE HKCU --------------------------------//

[Registry]
//If enabled, delete //

//Root: HKCU; Subkey: "Software\Adobe\CSXS.5"; ValueType: string; ValueName: "LogLevel"; ValueData: "1"
//Root: HKCU; Subkey: "Software\Adobe\CSXS.5"; ValueType: string; ValueName: "PlayerDebugMode"; ValueData: "1"

//Root: HKCU; Subkey: "Software\Adobe\CSXS.6"; ValueType: string; ValueName: "LogLevel"; ValueData: "1"
//Root: HKCU; Subkey: "Software\Adobe\CSXS.6"; ValueType: string; ValueName: "PlayerDebugMode"; ValueData: "1"

//Root: HKCU; Subkey: "Software\Adobe\CSXS.7"; ValueType: string; ValueName: "LogLevel"; ValueData: "1"
//Root: HKCU; Subkey: "Software\Adobe\CSXS.7"; ValueType: string; ValueName: "PlayerDebugMode"; ValueData: "1"

//Root: HKCU; Subkey: "Software\Adobe\CSXS.8"; ValueType: string; ValueName: "LogLevel"; ValueData: "1"
//Root: HKCU; Subkey: "Software\Adobe\CSXS.8"; ValueType: string; ValueName: "PlayerDebugMode"; ValueData: "1"

//Root: HKCU; Subkey: "Software\Adobe\CSXS.5"; ValueType: string; ValueName: "LogLevel"; ValueData: "1"
//Root: HKCU; Subkey: "Software\Adobe\CSXS.5"; ValueType: string; ValueName: "PlayerDebugMode"; ValueData: "1"

//Root: HKCU; Subkey: "Software\Adobe\CSXS.9"; ValueType: string; ValueName: "LogLevel"; ValueData: "1"
//Root: HKCU; Subkey: "Software\Adobe\CSXS.9"; ValueType: string; ValueName: "PlayerDebugMode"; ValueData: "1"

//Root: HKCU; Subkey: "Software\Adobe\CSXS.10"; ValueType: string; ValueName: "LogLevel"; ValueData: "1"
//Root: HKCU; Subkey: "Software\Adobe\CSXS.10"; ValueType: string; ValueName: "PlayerDebugMode"; ValueData: "1"

//Root: HKCU; Subkey: "Software\Adobe\CSXS.11"; ValueType: string; ValueName: "LogLevel"; ValueData: "1"
//Root: HKCU; Subkey: "Software\Adobe\CSXS.11"; ValueType: string; ValueName: "PlayerDebugMode"; ValueData: "1"

//Root: HKCU; Subkey: "Software\Adobe\CSXS.12"; ValueType: string; ValueName: "LogLevel"; ValueData: "1"
//Root: HKCU; Subkey: "Software\Adobe\CSXS.12"; ValueType: string; ValueName: "PlayerDebugMode"; ValueData: "1"

//Root: HKCU; Subkey: "Software\Adobe\CSXS.13"; ValueType: string; ValueName: "LogLevel"; ValueData: "1"
//Root: HKCU; Subkey: "Software\Adobe\CSXS.13"; ValueType: string; ValueName: "PlayerDebugMode"; ValueData: "1"

//Root: HKCU; Subkey: "Software\Adobe\CSXS.14"; ValueType: string; ValueName: "LogLevel"; ValueData: "1"
//Root: HKCU; Subkey: "Software\Adobe\CSXS.14"; ValueType: string; ValueName: "PlayerDebugMode"; ValueData: "1"

//Root: HKCU; Subkey: "Software\Adobe\CSXS.15"; ValueType: string; ValueName: "LogLevel"; ValueData: "1"
//Root: HKCU; Subkey: "Software\Adobe\CSXS.15"; ValueType: string; ValueName: "PlayerDebugMode"; ValueData: "1"

//Root: HKCU; Subkey: "Software\Adobe\CSXS.16"; ValueType: string; ValueName: "LogLevel"; ValueData: "1"
//Root: HKCU; Subkey: "Software\Adobe\CSXS.16"; ValueType: string; ValueName: "PlayerDebugMode"; ValueData: "1"

//Root: HKCU; Subkey: "Software\Adobe\CSXS.17"; ValueType: string; ValueName: "LogLevel"; ValueData: "1"
//Root: HKCU; Subkey: "Software\Adobe\CSXS.17"; ValueType: string; ValueName: "PlayerDebugMode"; ValueData: "1"

//Root: HKCU; Subkey: "Software\Adobe\CSXS.18"; ValueType: string; ValueName: "LogLevel"; ValueData: "1"
//Root: HKCU; Subkey: "Software\Adobe\CSXS.18"; ValueType: string; ValueName: "PlayerDebugMode"; ValueData: "1"

//Root: HKCU; Subkey: "Software\Adobe\CSXS.19"; ValueType: string; ValueName: "LogLevel"; ValueData: "1"
//Root: HKCU; Subkey: "Software\Adobe\CSXS.19"; ValueType: string; ValueName: "PlayerDebugMode"; ValueData: "1"

//Root: HKCU; Subkey: "Software\Adobe\CSXS.20"; ValueType: string; ValueName: "LogLevel"; ValueData: "1"
//Root: HKCU; Subkey: "Software\Adobe\CSXS.20"; ValueType: string; ValueName: "PlayerDebugMode"; ValueData: "1"

//Root: HKCU; Subkey: "Software\Adobe\CSXS.21"; ValueType: string; ValueName: "LogLevel"; ValueData: "1"
//Root: HKCU; Subkey: "Software\Adobe\CSXS.21"; ValueType: string; ValueName: "PlayerDebugMode"; ValueData: "1"

//Root: HKCU; Subkey: "Software\Adobe\CSXS.22"; ValueType: string; ValueName: "LogLevel"; ValueData: "1"
//Root: HKCU; Subkey: "Software\Adobe\CSXS.22"; ValueType: string; ValueName: "PlayerDebugMode"; ValueData: "1"

//------------------------- CUSTOM CODE FOR EXE --------------------------------//
; Delete the // or (*, *) sign before the line for each case
[Code]

procedure CurStepChanged(CurStep: TSetupStep);
var
  TempDir: string;
  OutDir: string;
  Paths: TStringList;
  i: Integer;
  ConfigFileContent: TStringList;
begin
  if CurStep = ssPostInstall then
  begin
    TempDir := ExpandConstant('{tmp}');
    ConfigFileContent := TStringList.Create;
   
   
   ///////////////////////////////////[ Appdata ]/////////////////////////////////

        //  OutDir := ExpandConstant('{userappdata}\Adobe\CEP\extensions');
        //  if not DirExists(OutDir) then ForceDirectories(OutDir);
        //  CopyFilesAndFolders(TempDir, OutDir, ConfigFileContent);

   ////////////////////////////////[ Folder ADOBE/Version/Plugins/Scripts ]/////////////////////////////////
    
    //-----------------ADOBE VARIABLE FUNCTION------//
    #define outputFolder GetEnv("ProgramW6432") + "\Adobe"
    #define outputSubFolder "\Support Files\x\x"
    #define appFolder "Adobe After Effects"

    (*
      Paths := GetDirectories('{#outputFolder}', '{#appFolder}');
      try
        for i := 0 to Paths.Count - 1 do
        begin
          // Copy all files and folders from SourceDir to each destination in Paths
          CopyFilesAndFolders(TempDir, Paths[i] + '{#outputSubFolder}', ConfigFileContent);
        end;
      finally
        Paths.Free;
      end;
    *)
   
    ///////////////////////////////////[ Other Cases ]/////////////////////////////////
    
    //Both take the program file folder
    #define outputAnother GetEnv("ProgramW6432") + "\Common Files\Adobe\CEP\extensions\" 
    #define outputAnother86 GetEnv("ProgramFiles") + "\Common Files\Adobe\CEP\extensions\"
    #define outputCustom " C:\ProgramData\Adobe "    ;Customize the path if desired

        //  if not DirExists(OutDir) then ForceDirectories(OutDir);
        //  CopyFilesAndFolders(TempDir, '{#outputAnother}', ConfigFileContent);   

/////////////////////////////////////////////// DO NOT TOUCH IF YOU DONT KNOW WHAT'RE YOU DOING //////////////////////////////////////////////////////////   
    
    // Save the list of copied files and folders to Config.txt after all iterations
    ConfigFileContent.SaveToFile(ExpandConstant('{app}\{#uninstall_Log}'));
    ConfigFileContent.Free;
  end
  else if CurStep = ssDone then
    OpenURL('{#Facebook}');
end;



