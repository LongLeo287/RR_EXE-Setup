// Resource & Rookie® - EXE For File Scripts AE/PR
// Created by: Gyn, LongLeo

; Include ISS
#include "lib/vietnamese.iss"
#include "lib/define.iss"
#include "lib/lib.iss"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)

//--------------------------------- MUST RENEW APPID WHEN YOU CREATE NEW EXE | Tools -> Generate GUID ---------------------------------------------//
AppId={{3727C085-44FE-482B-B56A-8028088D69E0}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
[Setup]
#define MyAppName "Pixel Sorter 3_v3.1.0"
#define MyAppVersion "v3.1.0"
LicenseFile=Information\Scripts_AE-PR.txt
UninstallDisplayIcon=Data\R&R.ico
;AppReadmeFile=https://www.facebook.com/ResourceRookie2023/

//--------------------------------- URL TO AUTHOR EXE  ---------------------------------------------//
AppPublisherURL={#Discord}
AppSupportURL={#Facebook}
#define Tutorial "https://aescripts.com/pixel-sorter/"

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

   ////////////////////////////////[ Folder ADOBE\Scripts ]/////////////////////////////////
    
    //-----------------ADOBE VARIABLE FUNCTION------//
    #define outputFolder GetEnv("ProgramW6432") + "\Adobe"
    #define outputSubFolder "\Plug-ins\7.0\MediaCore"
    #define appFolder "Common"

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

/////////////////////////////////////////////// DO NOT TOUCH IF YOU DONT KNOW WHAT'RE YOU DOING //////////////////////////////////////////////////////////   
    
    // Save the list of copied files and folders to Config.txt after all iterations
    ConfigFileContent.SaveToFile(ExpandConstant('{app}\{#uninstall_Log}'));
    ConfigFileContent.Free;
  end
  else if CurStep = ssDone then
    OpenURL('{#Facebook}');
end;



