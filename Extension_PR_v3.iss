// Resource & Rookie® - EXE For File Extension PR
// Created by: Gyn, LongLeo

; Include ISS
#include "lib/vietnamese.iss"
#include "lib/define.iss"
#include "lib/lib.iss"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)

//--------------------------------- MUST RENEW APPID WHEN YOU CREATE NEW EXE | Tools -> Generate GUID ---------------------------------------------//
AppId={{B61B86C2-945B-4BCC-A7CA-AE06A28C4F54}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
[Setup]
#define MyAppName "Loopy_v1.0"
#define MyAppVersion "v1.0"
LicenseFile=Information\Extension_PR.txt
UninstallDisplayIcon=Data\R&R.ico
;AppReadmeFile=https://www.facebook.com/ResourceRookie2023/

//--------------------------------- URL TO AUTHOR EXE  ---------------------------------------------//
AppPublisherURL={#Discord}
AppSupportURL={#Facebook}
#define Tutorial "https://www.youtube.com/watch?v=w6pxNkmfwp8"

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


    //------------------------- REGEDIT ADOBE HKCU --------------------------------//

[Registry]
//If enabled, remove the //

Root: HKCU; Subkey: "Software\Adobe\CSXS.5"; ValueType: string; ValueName: "LogLevel"; ValueData: "1"
Root: HKCU; Subkey: "Software\Adobe\CSXS.5"; ValueType: string; ValueName: "PlayerDebugMode"; ValueData: "1"

Root: HKCU; Subkey: "Software\Adobe\CSXS.6"; ValueType: string; ValueName: "LogLevel"; ValueData: "1"
Root: HKCU; Subkey: "Software\Adobe\CSXS.6"; ValueType: string; ValueName: "PlayerDebugMode"; ValueData: "1"

Root: HKCU; Subkey: "Software\Adobe\CSXS.7"; ValueType: string; ValueName: "LogLevel"; ValueData: "1"
Root: HKCU; Subkey: "Software\Adobe\CSXS.7"; ValueType: string; ValueName: "PlayerDebugMode"; ValueData: "1"

Root: HKCU; Subkey: "Software\Adobe\CSXS.8"; ValueType: string; ValueName: "LogLevel"; ValueData: "1"
Root: HKCU; Subkey: "Software\Adobe\CSXS.8"; ValueType: string; ValueName: "PlayerDebugMode"; ValueData: "1"

Root: HKCU; Subkey: "Software\Adobe\CSXS.5"; ValueType: string; ValueName: "LogLevel"; ValueData: "1"
Root: HKCU; Subkey: "Software\Adobe\CSXS.5"; ValueType: string; ValueName: "PlayerDebugMode"; ValueData: "1"

Root: HKCU; Subkey: "Software\Adobe\CSXS.9"; ValueType: string; ValueName: "LogLevel"; ValueData: "1"
Root: HKCU; Subkey: "Software\Adobe\CSXS.9"; ValueType: string; ValueName: "PlayerDebugMode"; ValueData: "1"

Root: HKCU; Subkey: "Software\Adobe\CSXS.10"; ValueType: string; ValueName: "LogLevel"; ValueData: "1"
Root: HKCU; Subkey: "Software\Adobe\CSXS.10"; ValueType: string; ValueName: "PlayerDebugMode"; ValueData: "1"

Root: HKCU; Subkey: "Software\Adobe\CSXS.11"; ValueType: string; ValueName: "LogLevel"; ValueData: "1"
Root: HKCU; Subkey: "Software\Adobe\CSXS.11"; ValueType: string; ValueName: "PlayerDebugMode"; ValueData: "1"

Root: HKCU; Subkey: "Software\Adobe\CSXS.12"; ValueType: string; ValueName: "LogLevel"; ValueData: "1"
Root: HKCU; Subkey: "Software\Adobe\CSXS.12"; ValueType: string; ValueName: "PlayerDebugMode"; ValueData: "1"

Root: HKCU; Subkey: "Software\Adobe\CSXS.13"; ValueType: string; ValueName: "LogLevel"; ValueData: "1"
Root: HKCU; Subkey: "Software\Adobe\CSXS.13"; ValueType: string; ValueName: "PlayerDebugMode"; ValueData: "1"

Root: HKCU; Subkey: "Software\Adobe\CSXS.14"; ValueType: string; ValueName: "LogLevel"; ValueData: "1"
Root: HKCU; Subkey: "Software\Adobe\CSXS.14"; ValueType: string; ValueName: "PlayerDebugMode"; ValueData: "1"

Root: HKCU; Subkey: "Software\Adobe\CSXS.15"; ValueType: string; ValueName: "LogLevel"; ValueData: "1"
Root: HKCU; Subkey: "Software\Adobe\CSXS.15"; ValueType: string; ValueName: "PlayerDebugMode"; ValueData: "1"

Root: HKCU; Subkey: "Software\Adobe\CSXS.16"; ValueType: string; ValueName: "LogLevel"; ValueData: "1"
Root: HKCU; Subkey: "Software\Adobe\CSXS.16"; ValueType: string; ValueName: "PlayerDebugMode"; ValueData: "1"

Root: HKCU; Subkey: "Software\Adobe\CSXS.17"; ValueType: string; ValueName: "LogLevel"; ValueData: "1"
Root: HKCU; Subkey: "Software\Adobe\CSXS.17"; ValueType: string; ValueName: "PlayerDebugMode"; ValueData: "1"

Root: HKCU; Subkey: "Software\Adobe\CSXS.18"; ValueType: string; ValueName: "LogLevel"; ValueData: "1"
Root: HKCU; Subkey: "Software\Adobe\CSXS.18"; ValueType: string; ValueName: "PlayerDebugMode"; ValueData: "1"

Root: HKCU; Subkey: "Software\Adobe\CSXS.19"; ValueType: string; ValueName: "LogLevel"; ValueData: "1"
Root: HKCU; Subkey: "Software\Adobe\CSXS.19"; ValueType: string; ValueName: "PlayerDebugMode"; ValueData: "1"

Root: HKCU; Subkey: "Software\Adobe\CSXS.20"; ValueType: string; ValueName: "LogLevel"; ValueData: "1"
Root: HKCU; Subkey: "Software\Adobe\CSXS.20"; ValueType: string; ValueName: "PlayerDebugMode"; ValueData: "1"

Root: HKCU; Subkey: "Software\Adobe\CSXS.21"; ValueType: string; ValueName: "LogLevel"; ValueData: "1"
Root: HKCU; Subkey: "Software\Adobe\CSXS.21"; ValueType: string; ValueName: "PlayerDebugMode"; ValueData: "1"

Root: HKCU; Subkey: "Software\Adobe\CSXS.22"; ValueType: string; ValueName: "LogLevel"; ValueData: "1"
Root: HKCU; Subkey: "Software\Adobe\CSXS.22"; ValueType: string; ValueName: "PlayerDebugMode"; ValueData: "1"


//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//------------------------- CUSTOM CODE FOR EXE --------------------------------//
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

          ///////////////////////////////////[ Extensions ]/////////////////////////////////
    
    //Both take the program file folder
    #define outputAnother GetEnv("ProgramW6432") + "\Common Files\Adobe\CEP\extensions\" 
    #define outputAnother86 GetEnv("ProgramFiles") + "\Common Files\Adobe\CEP\extensions\"
    #define outputCustom " C:\ProgramData\Adobe "    ;Customize the path if desired

          if not DirExists(OutDir) then ForceDirectories(OutDir);
          CopyFilesAndFolders(TempDir, '{#outputAnother86}', ConfigFileContent);   

/////////////////////////////////////////////// DO NOT TOUCH IF YOU DONT KNOW WHAT'RE YOU DOING //////////////////////////////////////////////////////////   
    
    // Save the list of copied files and folders to Config.txt after all iterations
    ConfigFileContent.SaveToFile(ExpandConstant('{app}\{#uninstall_Log}'));
    ConfigFileContent.Free;
  end
  else if CurStep = ssDone then
    OpenURL('{#Facebook}');
end;



