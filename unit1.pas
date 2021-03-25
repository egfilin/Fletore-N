unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, LCLProc, Forms, strutils, LazUTF8, SynEdit, Controls,
  Graphics, Dialogs, StdCtrls, Menus,
  ComCtrls, Buttons, Clipbrd, ValEdit, ExtCtrls, Unit2, Unit3, Types;

type

  { TForm1 }

  TForm1 = class(TForm)
    FindDialog1: TFindDialog;
    MainMenu: TMainMenu;
    FileSubmenu: TMenuItem;
    AboutSubmenu: TMenuItem;
    AboutMenuItem: TMenuItem;
    Editor: TMemo;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    PascalSC: TMenuItem;
    CPPSc: TMenuItem;
    Csc: TMenuItem;
    CshSc: TMenuItem;
    HTMLD: TMenuItem;
    MenuItem3: TMenuItem;
    Scripts: TMenuItem;
    MenuItem6: TMenuItem;
    ShSc: TMenuItem;
    BatSc: TMenuItem;
    AuSc: TMenuItem;
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
    procedure AsScClick(Sender: TObject);
    procedure AuScClick(Sender: TObject);
    procedure BatScClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CPPScClick(Sender: TObject);
    procedure CscClick(Sender: TObject);
    procedure CshScClick(Sender: TObject);
    procedure ExitMenuItemClick(Sender: TObject);
    procedure FindDialog1Find(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: boolean);
    procedure FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: boolean);
    procedure FormShow(Sender: TObject);
    procedure EditorChange(Sender: TObject);
    procedure JaScClick(Sender: TObject);
    procedure JsScClick(Sender: TObject);
    procedure MenuItem10Click(Sender: TObject);
    procedure MenuItem12Click(Sender: TObject);
    procedure MenuItem14Click(Sender: TObject);
    procedure MenuItem17Click(Sender: TObject);
    procedure MenuItem18Click(Sender: TObject);
    procedure MenuItem19Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MbScClick(Sender: TObject);
    procedure HTMLDClick(Sender: TObject);
    procedure CSSSSClick(Sender: TObject);
    procedure MenuItem20Click(Sender: TObject);
    procedure MenuItem21Click(Sender: TObject);
    procedure MenuItem22Click(Sender: TObject);
    procedure MenuItem23Click(Sender: TObject);
    procedure MenuItem24Click(Sender: TObject);
    procedure MenuItem25Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure NewMenuItemClick(Sender: TObject);
    procedure OpenDialogClose(Sender: TObject);
    procedure OpenMenuItemClick(Sender: TObject);
    procedure PascalSCClick(Sender: TObject);
    procedure SaveAsMenuItemClick(Sender: TObject);
    procedure SaveDialogClose(Sender: TObject);
    procedure SaveMenuItemClick(Sender: TObject);
    procedure SettingsMenuItemClick(Sender: TObject);
    procedure ShScClick(Sender: TObject);
    procedure Sync();
    procedure SaveCfg();
    procedure SynEdit1Change(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  appName, editableFile: string;
  config: Text;
  configFile: TStringList;

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
    Form1.Caption := editableFile + ' - ' + appName;
  end;
end;

procedure TForm1.SettingsMenuItemClick(Sender: TObject);
begin
  Form2.ShowModal;
end;

procedure TForm1.ShScClick(Sender: TObject);
begin
  Editor.Lines.Clear;
  Editor.Lines[0] := '#! /bin/sh';
  Editor.Lines[1] := 'echo Hello world!';
  EditorChange(Sender);
end;

procedure TForm1.Sync();
begin
  Form2.FontDialog.Font := Editor.font;
  Form2.ColorDialog.Color := Editor.Color;
  Form2.wwCheck.Checked := editor.WordWrap;
  Form2.ColorDialog.Color := Editor.color;
  Form2.FontDialog.font := Editor.font;
end;

procedure TForm1.SaveCfg();
begin
  AssignFile(config, 'fletore.cfg');
  Rewrite(config);
  WriteLn(config, ColorToString(Editor.Font.Color));
  WriteLn(config, IntToStr(Editor.Font.Height));
  WriteLn(config, Editor.Font.Name);
  WriteLn(config, IntToStr(Editor.Font.Orientation));
  WriteLn(config, IntToStr(Editor.Font.Size));
  WriteLn(config, BoolToStr(Editor.Font.Bold));
  WriteLn(config, BoolToStr(Editor.Font.Italic));
  WriteLn(config, BoolToStr(Editor.Font.StrikeThrough));
  WriteLn(config, BoolToStr(Editor.Font.Underline));
  WriteLn(config, ColorToString(Editor.Color));
  WriteLn(config, BoolToStr(Editor.WordWrap));
  WriteLn(config, IntToStr(Form1.Left));
  WriteLn(config, IntToStr(Form1.Top));
  WriteLn(config, IntToStr(Form1.Width));
  WriteLn(config, IntToStr(Form1.Height));
  WriteLn(config, '');
  WriteLn(config, '-------');
  WriteLn(config, '');
  WriteLn(config, 'Fletore configuration file.');
  WriteLn(config, '');
  WriteLn(config,
    '1st string = Font color (Help - https://wiki.freepascal.org/Colors)');
  WriteLn(config, '2nd string = Font height');
  WriteLn(config, '3nd string = Font name');
  WriteLn(config, '4nd string = Font orientation');
  WriteLn(config, '5nd string = Font size');
  WriteLn(config, '6nd string = Is font bold?');
  WriteLn(config, '7nd string = Is font italic?');
  WriteLn(config, '8nd string = Is font strikeout?');
  WriteLn(config, '9nd string = Is font underline?');
  WriteLn(config, '');
  WriteLn(config,
    '10th string = Background color (Help - https://wiki.freepascal.org/Colors)');
  WriteLn(config, '11th string = Is word wrap enabled?');
  WriteLn(config, '');
  WriteLn(config, '12th string = Master form X position');
  WriteLn(config, '13th string = Master form Y position');
  WriteLn(config, '');
  WriteLn(config, '14th string = Master form width');
  WriteLn(config, '15th string = Master form height');
  CloseFile(config);
end;

procedure TForm1.SynEdit1Change(Sender: TObject);
begin

end;

procedure TForm1.EditorChange(Sender: TObject);
begin
  StatusBar1.Panels.Items[0].Text := 'Length: ' + IntToStr(Length(Editor.Text));
  StatusBar1.Panels.Items[0].Width := Length(StatusBar1.Panels.Items[0].Text) * 7;
  StatusBar1.Panels.Items[1].Text := 'Lines: ' + IntToStr(editor.Lines.Count);
  if (editableFile = '') then
  begin
    Form1.Caption := '*New file - ' + appName;
  end
  else
  begin
    Form1.Caption := '*' + editableFile + ' - ' + appName;
  end;
end;

procedure TForm1.JaScClick(Sender: TObject);
begin
end;

procedure TForm1.JsScClick(Sender: TObject);
begin
  Editor.Lines.Clear;
  Editor.Lines[0] := 'function Hello() {';
  Editor.Lines[1] := '    Alert(''Hello world!'');';
  Editor.Lines[2] := '}';
  EditorChange(Sender);
end;

procedure TForm1.MenuItem10Click(Sender: TObject);
begin
  Editor.Lines.Clear;
  Editor.Lines[0] := 'PRINT "HELLO WORLD"';
  EditorChange(Sender);
end;

procedure TForm1.MenuItem12Click(Sender: TObject);
begin
  Editor.Lines.Clear;
  Editor.Lines[0] := 'with Ada.Text_IO;';
  Editor.Lines[1] := '';
  Editor.Lines[2] := 'procedure HelloWorld is';
  Editor.Lines[3] := 'begin';
  Editor.Lines[4] := '  Ada.Text_IO.Put_Line("Hello, World!");';
  Editor.Lines[5] := 'end HelloWorld;';
  EditorChange(Sender);
end;

procedure TForm1.MenuItem14Click(Sender: TObject);
begin
  Editor.Lines.Clear;
  Editor.Lines[0] := '';
  Editor.Lines[1] := '';
  Editor.Lines[2] := '';
  Editor.Lines[3] := '';
  Editor.Lines[4] := '';
  Editor.Lines[5] := '';
  Editor.Lines[6] := '';
  EditorChange(Sender);
end;

procedure TForm1.MenuItem17Click(Sender: TObject);
begin
  Editor.Lines.Clear;
  Editor.Lines[0] := 'REPORT first_programm.';
  Editor.Lines[1] := 'WRITE / ''Hello, World!''.';
  EditorChange(Sender);
end;

procedure TForm1.MenuItem18Click(Sender: TObject);
begin

end;

procedure TForm1.MenuItem19Click(Sender: TObject);
begin
  Editor.Lines.Clear;
  Editor.Lines[0] := 'const int rs = 12, en = 11, d4 = 5, d5 = 4, d6 = 3, d7 = 2;';
  Editor.Lines[1] := 'LiquidCrystal lcd(rs, en, d4, d5, d6, d7);';
  Editor.Lines[2] := 'void setup() {';
  Editor.Lines[3] := '  lcd.begin(16, 2);';
  Editor.Lines[4] := '  lcd.print("Hello, World!");';
  Editor.Lines[5] := '}';
  Editor.Lines[6] := '';
  Editor.Lines[7] := 'void loop() {';
  Editor.Lines[8] := '  lcd.setCursor(0, 1);';
  Editor.Lines[9] := '  lcd.print(millis() / 1000);';
  Editor.Lines[10] := '}';
  EditorChange(Sender);
end;

procedure TForm1.MenuItem1Click(Sender: TObject);
begin
  if (editor.SelText <> '') then
    Clipboard.AsText := Editor.SelText;
end;

procedure TForm1.MbScClick(Sender: TObject);
begin
  Editor.Lines.Clear;
  Editor.Lines[0] :=
    '(=<`:9876Z4321UT.-Q+*)M''&%$H"!~}|Bzy?=|{z]KwZY44Eq0/{mlk**hKs_dG5[m_BA{?-Y;;Vb''rR5431M}/.zHGwEDCBA@98\6543W10/.R,+O<';
  EditorChange(Sender);
end;

procedure TForm1.HTMLDClick(Sender: TObject);
begin
  Editor.Lines.Clear;
  Editor.Lines[0] := '<!DOCTYPE html>';
  Editor.Lines[1] := '<HTML>';
  Editor.Lines[2] := '    <HEAD>';
  Editor.Lines[3] := '        <SCRIPT src="script.js"></SCRIPT>';
  Editor.Lines[4] := '        <LINK rel="stylesheet" type="text/css" href="style.css">';
  Editor.Lines[5] := '        <META charset="UTF-8">';
  Editor.Lines[6] := '        <TITLE>TITLE</TITLE>';
  Editor.Lines[7] := '    </HEAD>';
  Editor.Lines[8] := '    <BODY>';
  Editor.Lines[9] := '        <h1>Hello World!</h1>';
  Editor.Lines[10] := '    </BODY>';
  Editor.Lines[11] := '</HTML>';
  EditorChange(Sender);
end;

procedure TForm1.CSSSSClick(Sender: TObject);
begin
  Editor.Lines.Clear;
  Editor.Lines[0] := 'body {';
  Editor.Lines[1] := '    background-repeat: no-repeat;';
  Editor.Lines[2] := '    font-family: arial;';
  Editor.Lines[2] := '}';
  EditorChange(Sender);
end;

procedure TForm1.MenuItem20Click(Sender: TObject);
begin
  Editor.Lines.Clear;
  Editor.Lines[0] := '#include <MsgBoxConstants.au3>';
  Editor.Lines[1] := '';
  Editor.Lines[2] := 'MsgBox($MB_OK, "Tutorial", "Hello World!")';
  EditorChange(Sender);
end;

procedure TForm1.MenuItem21Click(Sender: TObject);
begin
  Editor.Lines.Clear;
  Editor.Lines[0] := 'Сообщить("Hello, World!");';
  EditorChange(Sender);
end;

procedure TForm1.MenuItem22Click(Sender: TObject);
begin
  Editor.Lines.Clear;
  Editor.Lines[0] := '_root.createTextField("mytext",1,100,100,300,100);';
  Editor.Lines[1] := 'mytext.multiline = true;';
  Editor.Lines[2] := 'mytext.wordWrap = true;';
  Editor.Lines[3] := 'mytext.border = false;';
  Editor.Lines[4] := 'myformat = new TextFormat();';
  Editor.Lines[5] := 'myformat.color = 0xff0000;';
  Editor.Lines[6] := 'myformat.bullet = false;';
  Editor.Lines[7] := 'myformat.underline = true;';
  Editor.Lines[8] := 'mytext.text = "Hello, World!";';
  Editor.Lines[9] := 'mytext.setTextFormat(myformat);';
  EditorChange(Sender);
end;

procedure TForm1.MenuItem23Click(Sender: TObject);
begin
  Editor.Lines.Clear;
  Editor.Lines[0] := 'display dialog "Hello, World!"';
  EditorChange(Sender);
end;

procedure TForm1.MenuItem24Click(Sender: TObject);
begin
  Editor.Lines.Clear;
  Editor.Lines[0] := 'alert "Hello, World!"';
  EditorChange(Sender);
end;

procedure TForm1.MenuItem25Click(Sender: TObject);
begin
  Editor.Lines.Clear;
  Editor.Lines[0] := '$strString = "Hello, World!"';
  Editor.Lines[1] := 'write-host $strString';
  EditorChange(Sender);
end;

procedure TForm1.MenuItem2Click(Sender: TObject);
begin
  FindDialog1.Execute;
end;

procedure TForm1.MenuItem5Click(Sender: TObject);
begin
  Editor.Lines.Clear;
  Editor.Lines[0] := 'program Helloworld;';
  Editor.Lines[1] := '{$APPTYPE CONSOLE}';
  Editor.Lines[2] := 'uses sysutils;';
  Editor.Lines[3] := 'begin';
  Editor.Lines[4] := '  ';
  Editor.Lines[5] := '  ';
  Editor.Lines[6] := 'end.';
  EditorChange(Sender);
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

procedure TForm1.PascalSCClick(Sender: TObject);
begin
  Editor.Lines.Clear;
  Editor.Lines[0] := 'program PROJECT;';
  Editor.Lines[1] := 'uses CRT;';
  Editor.Lines[2] := '';
  Editor.Lines[3] := 'BEGIN';
  Editor.Lines[4] := '       WriteLn(''Hello world!!!'');';
  Editor.Lines[5] := 'END.';
  EditorChange(Sender);
end;


procedure TForm1.SaveAsMenuItemClick(Sender: TObject);
begin
  editableFile := '';
  SaveDialog.Execute;
end;

procedure TForm1.SaveDialogClose(Sender: TObject);
begin
  if (SaveDialog.FileName <> '') then
  begin
    editableFile := SaveDialog.FileName;
    SaveDialog.FileName := '';
    Editor.Lines.SaveToFile(editableFile);
    Form1.Caption := editableFile + ' - ' + appName;
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
end;

procedure TForm1.CPPScClick(Sender: TObject);
begin
  Editor.Lines.Clear;
  Editor.Lines[0] := '#include <iostream>';
  Editor.Lines[1] := 'using namespace std;';
  Editor.Lines[2] := '';
  Editor.Lines[3] := 'int main()';
  Editor.Lines[4] := '{';
  Editor.Lines[5] := '   cout << "Hello, world!" << endl;';
  Editor.Lines[6] := '   return 0;';
  Editor.Lines[7] := '}';
  EditorChange(Sender);
end;

procedure TForm1.CscClick(Sender: TObject);
begin
  Editor.Lines.Clear;
  Editor.Lines[0] := '#include <stdio.h>';
  Editor.Lines[1] := '';
  Editor.Lines[2] := 'int main()';
  Editor.Lines[3] := '{';
  Editor.Lines[4] := '  printf("Hello world\n");';
  Editor.Lines[5] := '  return 0;';
  Editor.Lines[6] := '}';
  EditorChange(Sender);
end;

procedure TForm1.CshScClick(Sender: TObject);
begin
  Editor.Lines.Clear;
  Editor.Lines[0] := 'using System;';
  Editor.Lines[1] := '';
  Editor.Lines[2] := 'namespace HelloWorld';
  Editor.Lines[3] := '{';
  Editor.Lines[4] := '    class Hello';
  Editor.Lines[5] := '    {';
  Editor.Lines[6] := '        static void Main() ';
  Editor.Lines[7] := '        {';
  Editor.Lines[8] := '            Console.WriteLine("Hello World!");';
  Editor.Lines[9] := '        }';
  Editor.Lines[10] := '    }';
  Editor.Lines[11] := '}';
  EditorChange(Sender);
end;

procedure TForm1.ExitMenuItemClick(Sender: TObject);
begin
  Close();
end;

procedure TForm1.FindDialog1Find(Sender: TObject);
var
  k: integer;
begin
  with Sender as TFindDialog do
  begin
    k := Pos(FindText, Editor.Lines.Text);
    if k > 0 then
    begin
      Editor.Selstart := k - 1;
      Editor.SelLength := length(FindText);
      Form1.SetFocus;
    end
    else
      Beep();
  end;
end;

procedure TForm1.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  SaveCfg();
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  if FileExists('fletore.cfg') then
  begin
    configFile := TStringList.Create;
    configFile.LoadFromFile('fletore.cfg');

    Editor.Font.Color := StringToColor(configFile.Strings[0]);
    Editor.Font.Height := StrToInt(configFile.Strings[1]);
    Editor.Font.Name := configFile.Strings[2];
    Editor.Font.Orientation := StrToInt(configFile.Strings[3]);
    Editor.Font.Size := StrToInt(configFile.Strings[4]);
    Editor.Font.Bold := StrToBool(configFile.Strings[5]);
    Editor.Font.Italic := StrToBool(configFile.Strings[6]);
    Editor.Font.StrikeThrough := StrToBool(configFile.Strings[7]);
    Editor.Font.Underline := StrToBool(configFile.Strings[8]);
    Editor.Color := StringToColor(configFile.Strings[9]);
    Editor.WordWrap := StrToBool(configFile.Strings[10]);

    Form1.Left := StrToInt(configFile.Strings[11]);
    Form1.Top := StrToInt(configFile.Strings[12]);
    Form1.Width := StrToInt(configFile.Strings[13]);
    Form1.Height := StrToInt(configFile.Strings[14]);
  end;
end;

procedure TForm1.FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: boolean);
begin
  if (Editor.Font.Size > 2) then
  begin
    if (ssCtrl in Shift) then
    begin
      Editor.Font.Size := Editor.Font.Size - 2;
      Sync();
    end;
  end;
end;

procedure TForm1.FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: boolean);
begin
  if (ssCtrl in Shift) then
  begin
    Editor.Font.Size := Editor.Font.Size + 2;
    Sync();
  end;
end;

procedure TForm1.AboutMenuItemClick(Sender: TObject);
begin
  Form3.ShowModal;
end;

procedure TForm1.AsScClick(Sender: TObject);
begin
  Editor.Lines.Clear;
  Editor.Lines[0] := '.MODEL SMALL';
  Editor.Lines[1] := '.STACK 100h';
  Editor.Lines[2] := '.DATA';
  Editor.Lines[3] := '    HelloMessage DB ''Hello World'',13,10,''$''';
  Editor.Lines[4] := '.CODE';
  Editor.Lines[5] := 'START:';
  Editor.Lines[6] := '    mov ax,@data';
  Editor.Lines[7] := '    mov ds,ax';
  Editor.Lines[8] := '    mov ah,9';
  Editor.Lines[9] := '    mov dx,OFFSET HelloMessage';
  Editor.Lines[10] := '    int 21h';
  Editor.Lines[11] := '    mov ah,4ch';
  Editor.Lines[12] := '    int 21h';
  Editor.Lines[13] := 'END START';
  EditorChange(Sender);
end;

procedure TForm1.AuScClick(Sender: TObject);
begin
  Editor.Lines.Clear;
  Editor.Lines[0] := '[autorun]';
  Editor.Lines[1] := 'open=';
  Editor.Lines[2] := 'icon=';
  Editor.Lines[3] := 'shell\open=';
  Editor.Lines[4] := 'shell\open\Command=';
  Editor.Lines[5] := 'shell\open\Default=';
  Editor.Lines[6] := 'shell\explore=';
  Editor.Lines[7] := 'shell\explore\Command=';
  EditorChange(Sender);
end;

procedure TForm1.BatScClick(Sender: TObject);
begin
  Editor.Lines.Clear;
  Editor.Lines[0] := '@ECHO OFF';
  Editor.Lines[1] := 'TITLE Hello world';
  Editor.Lines[2] := 'ECHO Hello!';
  Editor.Lines[3] := 'PAUSE';
  Editor.Lines[4] := 'EXIT';
  EditorChange(Sender);
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

  Sync();

end;

end.
