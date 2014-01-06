

[Setup]
AppName=Love compiler
AppVersion=1.5
DefaultDirName={pf}\l2d
; Since no icons will be created in "{group}", we don't need the wizard
; to ask for a Start Menu folder name:
DisableProgramGroupPage=yes
UninstallDisplayIcon={app}\MyProg.exe
OutputDir=userdocs:Inno Setup Examples Output
ChangesEnvironment=yes
[Files]
Source: "l2d.exe"; DestDir: "{app}"
[Registry]
Root: HKLM; Subkey: "SYSTEM\CurrentControlSet\Control\Session Manager\Environment"; ValueType: expandsz; ValueName: "Path"; ValueData: "{olddata};{pf}\l2d";Check: NeedsAddPath('l2d')

[Code]

const
    ModPathName = 'modifypath';
    ModPathType = 'system';

function ModPathDir(): TArrayOfString;
begin
    setArrayLength(Result, 1)
    Result[0] := ExpandConstant('{app}');
end;



function NeedsAddPath(Param: string): boolean;

var
  OrigPath: string;
  Path:string;
  OldData:string;
  Check:Integer;
 
begin
  Log(Param)   ;
  Path := ExpandConstant('{app}');
  RegQueryStringValue(HKEY_LOCAL_MACHINE,'SYSTEM\CurrentControlSet\Control\Session Manager\Environment', 'Path', OrigPath);
  Log(OrigPath);
  
  
  
  Log(Path);
  Result := Pos(Path, OrigPath) = 0; 
  if Result = False then  begin
  Log('ok');
  Result := False;
  exit;
  end;
  Result := True;
  exit;
  end;