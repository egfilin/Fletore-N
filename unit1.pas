unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Menus,
  ComCtrls, Buttons, ValEdit, Unit2, Unit3, Types;

type

  { TForm1 }

  TForm1 = class(TForm)
    MainMenu: TMainMenu;
    FileSubmenu: TMenuItem;
    AboutSubmenu: TMenuItem;
    AboutMenuItem: TMenuItem;
    Editor: TMemo;
    OpenDialog: TOpenDialog;
    SaveDialog: TSaveDialog;
    SettingsMenuItem: TMenuItem;
    NewMenuItem: TMenuItem;
    OpenMenuItem: TMenuItem;
    SaveMenuItem: TMenuItem;
    SaveAsMenuItem: TMenuItem;
    SplitterMenuItem: TMenuItem;
    ExitMenuItem: TMenuItem;
    Splitter1MenuItem: TMenuItem;
    SettingsSubmenu: TMenuItem;
    StatusBar1: TStatusBar;
    procedure AboutMenuItemClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ExitMenuItemClick(Sender: TObject);
    procedure FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure FormShow(Sender: TObject);
    procedure EditorChange(Sender: TObject);
    procedure NewMenuItemClick(Sender: TObject);
    procedure OpenDialogClose(Sender: TObject);
    procedure OpenMenuItemClick(Sender: TObject);
    procedure SaveAsMenuItemClick(Sender: TObject);
    procedure SaveDialogClose(Sender: TObject);
    procedure SaveMenuItemClick(Sender: TObject);
    procedure SettingsMenuItemClick(Sender: TObject);
    procedure TabControl1Change(Sender: TObject);
    procedure fontSync();
  private

  public

  end;

var
  Form1: TForm1;
  appName, editableFile: string;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.SaveMenuItemClick(Sender: TObject);
begin
  if (editableFile = '') then
  begin
    SaveDialog.Execute;
  end
  else
  begin
    Editor.Lines.SaveToFile(editableFile);
  end;
end;

procedure TForm1.SettingsMenuItemClick(Sender: TObject);
begin
  Form2.ShowModal;
end;

procedure TForm1.TabControl1Change(Sender: TObject);
begin

end;

procedure TForm1.fontSync();
begin
    Form2.FontDialog.Font := Editor.font;
    Form2.ColorDialog.Color := Editor.Color;
end;

procedure TForm1.EditorChange(Sender: TObject);
begin
    StatusBar1.Panels.Items[0].Text := 'Length: ' + IntToStr(Length(Editor.Text));
end;

procedure TForm1.NewMenuItemClick(Sender: TObject);
begin
  Editor.Lines.Clear;
  editableFile := '';
  Form1.Caption := 'New file - ' + appName;
end;

procedure TForm1.OpenDialogClose(Sender: TObject);
begin
  if (OpenDialog.FileName <> '') then
  begin
    editableFile := OpenDialog.FileName;
    OpenDialog.FileName := '';
    Editor.Lines.LoadFromFile(editableFile);
    Form1.Caption := editableFile + ' - ' + appName;
  end;
end;

procedure TForm1.OpenMenuItemClick(Sender: TObject);
begin
  OpenDialog.Execute;
end;

procedure TForm1.SaveAsMenuItemClick(Sender: TObject);
begin
  editableFile:='';
  SaveDialog.Execute;
end;

procedure TForm1.SaveDialogClose(Sender: TObject);
begin
  If (SaveDialog.FileName <> '') then
  begin
  editableFile:=SaveDialog.FileName;
  SaveDialog.FileName:='';
  Editor.Lines.SaveToFile(editableFile);
  Form1.Caption:=editableFile+' - '+appName;
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
end;

procedure TForm1.ExitMenuItemClick(Sender: TObject);
begin
  Close();
end;

procedure TForm1.FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
  If (Editor.Font.Size > 2) then
  begin
  if (ssCtrl in Shift) then
    begin
         Editor.Font.Size:=Editor.Font.Size-2;
         fontSync();
    end;
  end;
end;

procedure TForm1.FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
  If (Editor.Font.Size > 9999) then
  begin
  if (ssCtrl in Shift) then
  begin
    Editor.Font.Size:=Editor.Font.Size+2;
    fontSync();
  end;
  end;
end;

procedure TForm1.AboutMenuItemClick(Sender: TObject);
begin
  Form3.ShowModal;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  appName := 'Fletore';
  if paramcount = 1 then
  begin
    editableFile := ParamStr(1);
    Editor.Lines.loadfromfile(ParamStr(1));
    Form1.Caption := editableFile + ' - ' + appName;
  end
  else
    editableFile := '';

end;

end.

