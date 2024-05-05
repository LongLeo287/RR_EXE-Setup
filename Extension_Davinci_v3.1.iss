// --------------------------------- INFOMATION ------------------------------- //
//                                                                              //
//               EXE For File Extension Davinci                                 //
//               Script Version:	v3.1                                          //
//               Homepage:		https://www.facebook.com/ResourceRookie2023       //
//               Copyright (C) 2023 Resource & Rookie®                          //
//               All rights reserved.                                           //
//               Author: Gyn, LongLeo                                           //
//                                                                              //
// ------------------------------------ R&R ----------------------------------- //


// Include ISS
#include "lib/vietnamese.iss"
#include "lib/define.iss"
#include "lib/lib.iss"

[Setup]
//--------------------------------- MUST RENEW APPID WHEN YOU CREATE NEW EXE | Tools -> Generate GUID ---------------------------------------------//
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)

#define TheAppId "{{5247013F-47D0-460B-B96E-C51E0CF8FD4F}"

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

[Setup]
#define MyAppName "BeatEdit for DaVinci Resolve"      ; Name for the application
#define MyAppVersion "v1.2.001"
LicenseFile=Information\Extension_Davinci.txt                       
;AppReadmeFile=https://www.facebook.com/ResourceRookie2023/
#define Space " "

//--------------------------------- URL TO AUTHOR EXE  ---------------------------------------------//

AppPublisherURL={#Discord}
AppSupportURL={#Facebook}
#define Tutorial "https://aescripts.com/beatedit-for-davinci-resolve/"

//--------------------------------- ICON FILE EXE ---------------------------------------------//

SetupIconFile=Data\R&R.ico
; Specify the image to be displayed on the wizard dialog
WizardImageFile=Data\rrbg1.bmp
; Specify the image to be displayed on the welcome page
WizardSmallImageFile=Data\rrtop.bmp

//----------------------------- PASSWORD FOR INSTALL EXE  -------------------------------------//

Password=R&R

/////////////////////////////////////////////// DO NOT TOUCH IF YOU DONT KNOW WHAT'RE YOU DOING //////////////////////////////////////////////////////////
    // ------------------------------------- ANOTHER SETTING ---------------------------------------------//
    AppId={#TheAppId}
    AppName={#MyAppName}
    AppVersion={#MyAppVersion}
    AppCopyright={#Copyright}
    AppContact={#MyAppPublisher}
    AppPublisher={#MyAppPublisher}
    AppVerName={#MyAppName}{#Space}{#MyAppVersion}
    VersionInfoVersion=1.2.0.0
    UninstallDisplayIcon={srcexe}
    UninstallDisplayName={#MyAppName}{#Space}{#MyAppVersion}
    WizardResizable = no
    DisableDirPage=yes
    DefaultGroupName={#MyAppName}   
    OutputBaseFilename={#MyAppName}{#Space}{#MyAppVersion}
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

          ///////////////////////////////////[ Extensions ]/////////////////////////////////
    
    //Both take the program file folder
    #define outputFolder GetEnv("ProgramW6432") + "\Blackmagic Design"
    #define outputSubFolder "\Fusion\Scripts\Utility"
    #define appFolder "DaVinci Resolve"

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



