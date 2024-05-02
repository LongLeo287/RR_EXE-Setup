// Resource & Rookie® - EXE For File Plugin/Scripts/Presets AE/PR
// Created by: Gyn, LongLeo

; Include ISS
#include "lib/vietnamese.iss"
#include "lib/define.iss"
#include "lib/lib.iss"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)

//--------------------------------- MUST RENEW APPID WHEN YOU CREATE NEW EXE | Tools -> Generate GUID ---------------------------------------------//
AppId={{3BA8B74B-AE81-4752-8DA4-5EA2EACF84A4}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
[Setup]
#define MyAppName "Smart Bundle_v1.0"
#define MyAppVersion "v1.0"
LicenseFile=Information\List.txt
UninstallDisplayIcon=Data\R&R.ico
;AppReadmeFile=https://www.facebook.com/ResourceRookie2023/

//--------------------------------- URL TO AUTHOR EXE  ---------------------------------------------//
AppPublisherURL={#Discord}
AppSupportURL={#Facebook}
#define Tutorial "https://www.youtube.com/watch?v=ZFYNcVv3Nz0"

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
  TempADir: string;
  TempBDir: string;
  Paths: TStringList;
  i: Integer;
  ConfigFileContent: TStringList;
begin
  if CurStep = ssPostInstall then
  begin
    TempADir := ExpandConstant('{tmp}' + '\Presets');
    TempBDir := ExpandConstant('{tmp}' + '\Scripts');

    ConfigFileContent := TStringList.Create;

   ////////////////////////////////[ Folder ADOBE\Scripts + Plugins + Presets ]/////////////////////////////////
    
    //-----------------ADOBE VARIABLE FUNCTION------//
    #define outputFolder GetEnv("ProgramW6432") + "\Adobe"
    #define outputSub "\Support Files\Presets"
    #define outputSubFolder "\Support Files\Scripts\ScriptUI Panels"
    #define appFolder "Adobe After Effects"

      Paths := GetDirectories('{#outputFolder}', '{#appFolder}');
      try
        for i := 0 to Paths.Count - 1 do
        begin
          // Copy all files and folders from SourceDir to each destination in Paths
          CopyFilesAndFolders(TempADir, Paths[i] + '{#outputSub}', ConfigFileContent);
          CopyFilesAndFolders(TempBDir, Paths[i] + '{#outputSubFolder}', ConfigFileContent);
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



