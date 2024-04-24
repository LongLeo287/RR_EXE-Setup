# EXE SETUP FOR Resource & Rookie

## LIST TREE
- Data
- Lib
- Information
- Output
- Source
- FILE ISS
- Template SETUP EXE.iss


## ENGLISH INFORMATION
### Setup Information

- **AppId**: Unique identifier for the application.
- **MyAppName**: Name of the application.
- **MyAppVersion**: Version of the application.
- **LicenseFile**: Path to the license file.
- **UninstallDisplayIcon**: Icon displayed during uninstallation.
- **AppPublisherURL**: Publisher's URL.
- **AppSupportURL**: Support URL.
- **SetupIconFile**: Icon file for the installer.
- **WizardImageFile**: Image displayed on the wizard dialog.
- **WizardSmallImageFile**: Image displayed on the welcome page.
- **Password**: Password for the installer.
- Other setup configurations such as AppVersion, AppContact, OutputDir, Compression, Encryption, etc.

### Files and Run Sections

- **Files**: Specifies files to include in the installer.
- **Run**: Specifies actions to perform after installation, like running certain files or executables.

### Registry Modifications

- Modifies registry entries related to Adobe CSXS versions.

### Custom Code

- Defines custom procedures for specific installation steps.
- Copies files to specified directories based on different conditions.
- Saves the list of copied files and folders to a configuration file.
- Opens a URL after installation completion.

### Note

- Certain sections are commented out with "//" for specific scenarios. Uncomment these sections as needed.

This script is customizable based on your requirements. Modify it according to your application's needs.

For more details and instructions on usage, refer to the comments within the script.

## VIETNAMESE INFORMATION
### Thông Tin Cài Đặt

- **AppId**: Định danh duy nhất cho ứng dụng.
- **MyAppName**: Tên của ứng dụng.
- **MyAppVersion**: Phiên bản của ứng dụng.
- **LicenseFile**: Đường dẫn đến tập tin giấy phép.
- **UninstallDisplayIcon**: Biểu tượng hiển thị trong quá trình gỡ cài đặt.
- **AppPublisherURL**: URL của nhà xuất bản.
- **AppSupportURL**: URL hỗ trợ.
- **SetupIconFile**: Tập tin biểu tượng cho trình cài đặt.
- **WizardImageFile**: Hình ảnh hiển thị trên hộp thoại đoán mẫu.
- **WizardSmallImageFile**: Hình ảnh hiển thị trên trang chào mừng.
- **Password**: Mật khẩu cho trình cài đặt.
- Các cấu hình cài đặt khác như AppVersion, AppContact, OutputDir, Compression, Encryption, v.v.

### Phần Files và Run

- **Files**: Xác định các tập tin để bao gồm trong trình cài đặt.
- **Run**: Xác định các hành động để thực hiện sau khi cài đặt, như chạy các tập tin hoặc tập tin thực thi cụ thể.

### Sửa Đổi Registry

- Sửa đổi các mục registry liên quan đến các phiên bản Adobe CSXS.

### Mã Tùy Chỉnh

- Xác định các thủ tục tùy chỉnh cho các bước cài đặt cụ thể.
- Sao chép tập tin vào các thư mục được chỉ định dựa trên các điều kiện khác nhau.
- Lưu danh sách các tập tin và thư mục được sao chép vào một tập tin cấu hình.
- Mở một URL sau khi hoàn thành cài đặt.

### Ghi Chú

- Một số phần được chú thích bằng "//" cho các tình huống cụ thể. Hãy bỏ chú thích các phần này theo nhu cầu.

Kịch bản này có thể tùy chỉnh dựa trên yêu cầu của bạn. Sửa đổi nó theo nhu cầu của ứng dụng của bạn.

Để biết thêm chi tiết và hướng dẫn sử dụng, hãy tham khảo các ý kiến trong kịch bản.

# Bản Quyền

- Bản quyền © 2024 Resource & Rookie - Gyn | Long Leo.
