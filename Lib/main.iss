// --------------------------------- INFOMATION ------------------------------- //
//                                                                              //
//               File Main                                                      //
//               Script Version:	v3.2                                          //
//               Homepage:		https://www.facebook.com/ResourceRookie2023       //
//               Copyright (C) 2023 Resource & Rookie®                          //
//               All rights reserved.                                           //
//               Author: Gyn, LongLeo                                           //
//                                                                              //
// ------------------------------------ R&R ----------------------------------- //


#include "define.iss"

[Setup]
#define Space " "
    AppContact                    ={#MyAppPublisher}
    AppCopyright                  ={#Copyright}
    AppPublisherURL               ={#Discord}
    AppSupportURL                 ={#Facebook}
    BackColor                     =clSilver
    Compression                   =lzma2/max
    DisableDirPage                =yes
    DisableProgramGroupPage       =yes
    Encryption                    =yes
    InternalCompressLevel         =ultra64
    LanguageDetectionMethod       =uilanguage
    PrivilegesRequired            = none
    Password                      =R&R
    ShowLanguageDialog            =yes
    SolidCompression              =yes
    VersionInfoVersion            =1.3.0.0
    WizardResizable               =no
    WizardStyle                   =modern

//--------------------------------- ICON FILE EXE ---------------------------------------------//

    SetupIconFile                 =Data\R&R.ico
    ; Specify the image to be displayed on the wizard dialog
    WizardImageFile               =Data\rrbg1.bmp
    ; Specify the image to be displayed on the welcome page
    WizardSmallImageFile          =Data\rrtop.bmp

//--------------------------------- LANGUAGES FILE EXE ---------------------------------------------//

[Languages]
    Name: "english";    MessagesFile: ".\lib\Languages\English.isl"
    Name: "vietnamese"; MessagesFile: ".\lib\Languages\Vietnamese.isl"

[CustomMessages]
; English messages
english.CopyrightMessage=Copyright belongs to Resource & Rookie®

; Vietnamese messages
vietnamese.CopyrightMessage=Bản quyền thuộc về Resource & Rookie®

[Files]
Source: "Data\paypal.bmp"; DestDir: "{tmp}"; Flags: dontcopy

[CustomMessages]
; No need to localize: The IS website is in English only
IsDonateDonateHint=Support Resource & Rookie - Thank you!

[Code]
  //------------------------------------MAIN FUNCTION------------------------------------------------------//
     // Function to open a URL in a web browser
        procedure OpenURL(const URL: String);
        var
          ErrorCode: Integer;
        begin
          ShellExecAsOriginalUser('open', URL, '', '', SW_SHOW, ewNoWait, ErrorCode);
        end;

//------------------------------------BUTTON FUNCTION------------------------------------------------------//
// Event handler function when clicking the Discord button
procedure ButtonClick(Sender: TObject);
begin
  MsgBox('Welcome to R&R!', mbInformation, MB_OK); // Display a message box
  OpenURL('{#Discord}'); // Change the Discord link according to your requirements
end;

// Event handler function when clicking the Facebook button
procedure Button2Click(Sender: TObject);
begin
  MsgBox('Follow R&R for more FREE!', mbInformation, MB_OK); // Display a message box
  OpenURL('{#Facebook}'); // Change the Facebook link according to your requirements
end;

// Event handler function when clicking the Donate button
procedure DonateButtonClick(Sender: TObject);
begin
  MsgBox('Support R&R - Thank you!!', mbInformation, MB_OK); // Display a message box
  OpenURL('{#Donate}'); // Change the Donate link according to your requirements
end;

//------------------------------------END BUTTON FUNCTION------------------------------------------------------//

//------------------------------------INITIALIZE FUNCTION------------------------------------------------------//
const
 ButtonWidth = 100;
 ButtonHeight = 30;
 BottomMargin = 60;
 LeftMarginPercent = 5;
 RightMarginPercent = 50;

procedure CreateButton(Parent: TWinControl; const Caption: string; LeftPos, TopPos: Integer; OnClick: TNotifyEvent);
var
 Button: TNewButton;
begin
 Button := TNewButton.Create(WizardForm);
 Button.Parent := Parent;
 Button.Width := WizardForm.NextButton.Width; // Set the width to ButtonWidth constant
 Button.Height := WizardForm.NextButton.Height; // Set the height to ButtonHeight constant
 Button.Caption := Caption;
 Button.Left := LeftPos; // Use the LeftPos parameter for left position
 Button.Top := WizardForm.NextButton.Top; // Use the TopPos parameter for top position
 Button.OnClick := OnClick;
 Button.Anchors := [akLeft, akBottom];
end;

procedure InitializeWizard();
var
 LeftMargin, ButtonSpacing, MiddleMargin, ButtonFacebookLeft, ButtonDonateLeft: Integer;
begin
 // Calculate the sizes of margins and spacing between buttons
 LeftMargin := WizardForm.ClientWidth div 20; // Left margin occupies 10% of the form's width
 ButtonSpacing := 60; // Set the desired spacing between buttons
 MiddleMargin := WizardForm.ClientHeight div 2 - ButtonHeight div 2; // Distance from the top to the middle of the form

 // Create the Discord button
 CreateButton(WizardForm, 'Discord', LeftMargin, MiddleMargin, @ButtonClick);

 // Calculate the position for the Facebook button to avoid overlapping with the Discord button
 ButtonFacebookLeft := LeftMargin + ButtonWidth + ButtonSpacing;

 // Create the Facebook button with the calculated position
 CreateButton(WizardForm, 'Facebook', ButtonFacebookLeft, MiddleMargin, @Button2Click);

 // Calculate the position for the Donate button to avoid overlapping with the Discord and Facebook buttons
 ButtonDonateLeft := ButtonFacebookLeft + ButtonWidth + ButtonSpacing;

 // Create the Donate button with the calculated position
 CreateButton(WizardForm, 'Donate', ButtonDonateLeft, MiddleMargin, @DonateButtonClick);
end;





//------------------------------------ANOTHER FUNCTION------------------------------------------------------//

         // Check .NET4
        function IsDotNet4NotInstalled: Boolean;
        begin
         Result := not IsDotNetInstalled(net4Full, 0);
        end;

        // Displays an information dialog when starting the installation
        function InitializeSetup(): Boolean;
        begin
         MsgBox(CustomMessage('CopyrightMessage'), mbInformation, MB_OK);
         Result := True;
        end;

//------------------------------------END FUNCTION------------------------------------------------------//

//------------------------------------ADOBE FUNCTION------------------------------------------------------//
function GetDirectories(const RootPath, appFolder: string): TStringList;
var
  FindRec: TFindRec;
begin
  Result := TStringList.Create;
  if FindFirst(RootPath + '\' + appFolder + '*', FindRec) then
  begin
    try
      repeat
        if ((FindRec.Attributes and FILE_ATTRIBUTE_DIRECTORY) <> 0) then
          Result.Add(RootPath + '\' + FindRec.Name);
      until not FindNext(FindRec);
    finally
      FindClose(FindRec);
    end;
  end;
end;

var
  GlobalConfigFileContent: TStringList; // Declare as a global variable

/////////////COPY//////////

procedure CopyFilesAndFolders(const SourceDir, DestDir: string; var ConfigFileContent: TStringList);
var
  SourcePath, DestPath, FilePath: string;
  FindRec: TFindRec;
begin
  SourcePath := ExpandConstant(SourceDir);
  DestPath := ExpandConstant(DestDir);

  if DirExists(SourcePath) then
  begin
    if not DirExists(DestPath) then
      CreateDir(DestPath);

    if FindFirst(SourcePath + '\*', FindRec) then
    begin
      try
        repeat
          if (FindRec.Name <> '.') and (FindRec.Name <> '..') then
          begin
            FilePath := SourcePath + '\' + FindRec.Name;
            if ((FindRec.Attributes and FILE_ATTRIBUTE_DIRECTORY) <> 0) and (FindRec.Name <> '_isetup') then
            begin
              // Recursively copy directories
              CopyFilesAndFolders(FilePath, DestPath + '\' + FindRec.Name, ConfigFileContent);
              ConfigFileContent.Add(DestPath + '\' + FindRec.Name);
            end
            else
            begin
              // Copy files
              FileCopy(FilePath, DestPath + '\' + FindRec.Name, False);
              ConfigFileContent.Add(DestPath + '\' + FindRec.Name);
            end;
          end;
        until not FindNext(FindRec);
      finally
        FindClose(FindRec);
      end;
    end;
  end;
end;
//------------------------------------END ADOBE FUNCTION------------------------------------------------------//
//------------------------------------UNINSTALL FUNCTION------------------------------------------------------//

procedure DeleteFilesAndFoldersFromConfig();
var
  ConfigFilePath, PathToDelete: string;
  ConfigFileContent: TStrings;
  I: Integer;
begin
  ConfigFilePath := ExpandConstant('{app}\{#uninstall_Log}');
  ConfigFileContent := TStringList.Create;
  try
    // Load contents of Config.txt
    ConfigFileContent.LoadFromFile(ConfigFilePath);
    
    // Delete files and folders listed in Config.txt
    for I := 0 to ConfigFileContent.Count - 1 do
    begin
      PathToDelete := ConfigFileContent[I];
      
      // Delete file or folder
      if FileExists(PathToDelete) then
        DeleteFile(PathToDelete)
      else if DirExists(PathToDelete) then
        DelTree(PathToDelete, True, True, True);
    end;
  finally
    ConfigFileContent.Free;
  end;
end;
// Uninstall procedure
procedure CurUninstallStepChanged(CurUninstallStep: TUninstallStep);
begin
  // Remove files copied during installation
  if CurUninstallStep = usUninstall then
  begin
    DeleteFilesAndFoldersFromConfig;
  end;
end;

//------------------------------------END UNINSTALL FUNCTION------------------------------------------------------//
