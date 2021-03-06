program PrepBuild;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Forms,
  d_XmlVersionInfo in 'd_XmlVersionInfo.pas' {dm_XmlVersionInfo: TDataModule},
  d_DprojVersionInfo in 'd_DprojVersionInfo.pas' {dm_DprojVersionInfo: TDataModule},
  d_BdsProjVersionInfo in 'd_BdsProjVersionInfo.pas' {dm_BdsProjVersionInfo: TDataModule},
  d_ManifestVersionInfo in 'd_ManifestVersionInfo.pas' {dm_ManifestVersionInfo: TDataModule},
  i_VersionInfoAccess in 'i_VersionInfoAccess.pas',
  u_DofVersionInfo in 'u_DofVersionInfo.pas',
  u_IniVersionInfo in 'u_IniVersionInfo.pas',
  u_CentralIniVersionInfo in 'u_CentralIniVersionInfo.pas',
  u_PrepBuildMain in 'u_PrepBuildMain.pas',
  u_VersionInfo in 'u_VersionInfo.pas',
  w_dzDialog in '..\libs\dzlib\forms\w_dzDialog.pas' {f_dzDialog},
  u_dzDefaultMain in '..\libs\dzlib\src\u_dzDefaultMain.pas';

{$R *_icon.res}
{$R *_version.res}
{$R *_manifest.res}

begin
  Application.Initialize;
  Application.Title := 'PrepBuild';
  MainClass := TPrepBuildMain;
  System.ExitCode := Main;
end.

