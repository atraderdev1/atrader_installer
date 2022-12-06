; -- Example1.iss --
; Demonstrates copying 3 files and creating an icon.

; SEE THE DOCUMENTATION FOR DETAILS ON CREATING .ISS SCRIPT FILES!

[Setup]
AppName=ATRADER
AppVersion=3.0.0
WizardStyle=modern
DefaultDirName={autopf}\ATRADER
DefaultGroupName=ATRADER
UninstallDisplayIcon={app}\ATRADER.exe
Compression=lzma2
SolidCompression=yes
OutputDir=D:\DEV\INSTALLERS
OutputBaseFilename=ATRADER_Setup
[Files]
Source: "D:\DEV\ATRADER_RELEASE\TRADER.exe"; DestDir: "{app}"
Source: "D:\DEV\ATRADER_RELEASE\ATLUTILS.DLL"; DestDir: "{app}"
Source: "D:\DEV\ATRADER_RELEASE\EXT.DLL"; DestDir: "{app}"
Source: "D:\DEV\ATRADER_RELEASE\SPLASH.BMP"; DestDir: "{app}"
Source: "D:\DEV\ATRADER_RELEASE\DATAFEED.DLL"; DestDir: "{app}"
Source: "D:\DEV\ATRADER_RELEASE\MANUAL.DOC"; DestDir: "{app}"
Source: "D:\DEV\ATRADER_RELEASE\MSVCRT.DLL"; DestDir: "{app}"
Source: "D:\DEV\ATRADER_RELEASE\MSVCRTD.DLL"; DestDir: "{app}"
Source: "D:\DEV\ATRADER_RELEASE\MSXML4.DLL"; DestDir: "{app}"
Source: "D:\DEV\ATRADER_RELEASE\UTIL.DLL"; DestDir: "{app}"
Source: "D:\DEV\ATRADER_RELEASE\XERCES-C_3_0.DLL"; DestDir: "{app}"
Source: "D:\DEV\ATRADER_RELEASE\ZLIB1.DLL"; DestDir: "{app}"
Source: "D:\DEV\ATRADER_RELEASE\ZLIBWAPI.DLL"; DestDir: "{app}"
Source: "D:\DEV\ATRADER_RELEASE\CrashCon.EXE"; DestDir: "{app}"
Source: "D:\DEV\ATRADER_RELEASE\CrashRpt.DLL"; DestDir: "{app}"
Source: "D:\DEV\ATRADER_RELEASE\xml\*.*"; DestDir: "{userdocs}\atrader\xml"
Source: "D:\DEV\ATRADER_RELEASE\cert\*.*"; DestDir: "{userdocs}\atrader\cert"
Source: "D:\DEV\ATRADER_RELEASE\dat\ib\*.*"; DestDir: "{userdocs}\atrader\dat\ib"
Source: "D:\DEV\ATRADER_RELEASE\dat\dtn\*.*"; DestDir: "{userdocs}\atrader\dat\dtn"
Source: "D:\DEV\ATRADER_RELEASE\data\historical\bar\*.*"; DestDir: "{userdocs}\atrader\data\historical\bar"
Source: "D:\DEV\ATRADER_RELEASE\data\historical\gap\*.*"; DestDir: "{userdocs}\atrader\data\historical\gap"
Source: "D:\DEV\ATRADER_RELEASE\data\historical\profile\*.*"; DestDir: "{userdocs}\atrader\data\historical\profile"
Source: "D:\DEV\ATRADER_RELEASE\data\instruments\*.*"; DestDir: "{userdocs}\atrader\instruments"
Source: "D:\DEV\ATRADER_RELEASE\quoteboards\*.*"; DestDir: "{userdocs}\atrader\data"
Source: "D:\DEV\ATRADER_RELEASE\ext\*.*"; DestDir: "{userdocs}\atrader\ext"
Source: "D:\DEV\ATRADER_RELEASE\log\applog.txt"; DestDir: "{userdocs}\atrader\log\applog.txt"
Source: "D:\DEV\ATRADER_RELEASE\strategies\*.*"; DestDir: "{userdocs}\atrader\strategies"
Source: "D:\DEV\ATRADER_RELEASE\Readme2.txt"; DestDir: "{app}"; Flags: isreadme

[Icons]
Name: "{group}\ATRADER"; Filename: "{app}\TRADER.exe"
Name: "{autodesktop}\ATRADER"; Filename: "{app}\TRADER.exe"

[Registry]
Root: HKCU; Subkey: "Software\ATRADER\"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Autotrader\"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\ATRADER\"; ValueType: string; ValueName: "Version"; ValueData: "3.0.0"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\ATRADER\Atrader Interactive Charting"; ValueType: string; ValueName: "Version"; ValueData: "3.00";Flags: uninsdeletekey 
Root: HKCU; Subkey: "Software\ATRADER\Files\"; ValueType: string; ValueName: "RootPath"; ValueData: "{userdocs}\atrader";Flags: uninsdeletekey 
Root: HKCU; Subkey: "Software\ATRADER\InstallDir\"; ValueType: string; ValueName: "RootPath"; ValueData: "{app}";Flags: uninsdeletekey 
Root: HKCU; Subkey: "Software\ATRADER\"; ValueType: dword; ValueName: "Initialised"; ValueData: "0"; Flags: uninsdeletekey
                                                                                         