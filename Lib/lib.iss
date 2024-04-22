#include "define.iss"
[Code]

  //------------------------------------MAIN FUNCTION------------------------------------------------------//
     // Hàm mở đường dẫn URL trên trình duyệt web
        procedure OpenURL(const URL: String);
        var
          ErrorCode: Integer;
        begin
          ShellExecAsOriginalUser('open', URL, '', '', SW_SHOW, ewNoWait, ErrorCode);
        end;

     //------------------------------------BUTTON FUNCTION------------------------------------------------------//

        // Hàm xử lý sự kiện khi nhấn vào nút Discord
        procedure ButtonClick(Sender: TObject);
        begin
          OpenURL('{#Discord}'); // Thay đổi đường dẫn Discord tùy theo yêu cầu của bạn
        end;

        // Hàm xử lý sự kiện khi nhấn vào nút Facebook
        procedure Button2Click(Sender: TObject);
        begin
          OpenURL('{#Facebook}'); // Thay đổi đường dẫn Facebook tùy theo yêu cầu của bạn
        end;
    //------------------------------------END BUTTON FUNCTION------------------------------------------------------//

    //------------------------------------INITIALZE FUNCTION------------------------------------------------------//
        procedure InitializeWizard();
          var
            Button: TNewButton;
            Button2: TNewButton;
          begin
          //---------------------------------------------------------------  
           // Tạo nút Discord
          Button := TNewButton.Create(WizardForm);
          Button.Parent := WizardForm;
          Button.Left := 20; // Adjust left position
          Button.Top := WizardForm.ClientHeight - Button.Height + 60; // Position at the bottom
          Button.Width := 100;
          Button.Height := 30;
          Button.Caption := 'Discord';
          Button.OnClick := @ButtonClick;

            // Tạo nút Facebook
          Button2 := TNewButton.Create(WizardForm);
          Button2.Parent := WizardForm;
          Button2.Left := 130; // Adjust left position
          Button2.Top := WizardForm.ClientHeight - Button2.Height + 60; // Position at the bottom
          Button2.Width := 100;
          Button2.Height := 30;
          Button2.Caption := 'Facebook';
          Button2.OnClick := @Button2Click;
          end;

        function DotNet4NotInstalled: Boolean;
        begin
          Result := not IsDotNetInstalled(net4Full,0);
        end;

        // Hiển thị hộp thoại thông tin khi bắt đầu cài đặt
        function InitializeSetup(): Boolean;
        begin
         MsgBox('Bản quyền thuộc về Resource & Rookie®', mbInformation, MB_OK);
         Result := True;
        end;
//------------------------------------INITIALZE FUNCTION------------------------------------------------------//

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
