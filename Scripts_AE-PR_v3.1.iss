// --------------------------------- INFOMATION ------------------------------- //
//                                                                              //
//               EXE For File Scripts AE/PR                                     //
//               Script Version:	v3.1                                          //
//               Homepage:		https://www.facebook.com/ResourceRookie2023       //
//               Copyright (C) 2023 Resource & Rookie�                          //
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

#define TheAppId "{{DBBDDB92-B0EE-4AFF-922F-FE08FAB46749}"

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

[Setup]
#define MyAppName "Film Impact Premium Video Transitions"      ; Name for the application
#define MyAppVersion "v5.2.2"
LicenseFile=Information\Scripts_AE-PR.txt                       
;AppReadmeFile=https://www.facebook.com/ResourceRookie2023/
#define Space " "

//--------------------------------- URL TO AUTHOR EXE  ---------------------------------------------//

AppPublisherURL={#Discord}
AppSupportURL={#Facebook}
#define Tutorial "https://www.youtube.com/watch?v=D7pMMYfglC8"

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

   ////////////////////////////////[ Folder ADOBE\Scripts ]///////////////////////////////// 
    #define outputAnother86 GetEnv("ProgramFiles") + "Adobe\Common\Plug-ins\7.0\MediaCore"
    if not DirExists({#outputAnother86}) then ForceDirectories({#outputAnother86});
    CopyFilesAndFolders(TempDir, '{#outputAnother86}', ConfigFileContent);   

/////////////////////////////////////////////// DO NOT TOUCH IF YOU DONT KNOW WHAT'RE YOU DOING //////////////////////////////////////////////////////////   
    
    // Save the list of copied files and folders to Config.txt after all iterations
    ConfigFileContent.SaveToFile(ExpandConstant('{app}\{#uninstall_Log}'));
    ConfigFileContent.Free;
  end
  else if CurStep = ssDone then
    OpenURL('{#Facebook}');
end;



