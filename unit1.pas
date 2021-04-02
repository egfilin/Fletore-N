unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, LCLProc, Forms, strutils, LazUTF8, SynEdit,
  SynHighlighterMulti, SynHighlighterPerl, SynHighlighterAny, SynHighlighterPas,
  SynCompletion, Controls, Graphics, Dialogs, StdCtrls, Menus, ComCtrls,
  Buttons, Clipbrd, ValEdit, ExtCtrls, Unit3, Types, UITypes, IpHtml;

type

  { TForm1 }

  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    ColorDialog: TColorDialog;
    FindDialog1: TFindDialog;
    FontDialog: TFontDialog;
    MainMenu: TMainMenu;
    FileSubmenu: TMenuItem;
    AboutSubmenu: TMenuItem;
    AboutMenuItem: TMenuItem;
    MenuItem1: TMenuItem;
    MenuItem10: TMenuItem;
    CutMenu: TMenuItem;
    CopyMenu: TMenuItem;
    PasteMenu: TMenuItem;
    RedoMenu: TMenuItem;
    MenuItem15: TMenuItem;
    MenuItem16: TMenuItem;
    bgColor: TMenuItem;
    FindMenu: TMenuItem;
    chFont: TMenuItem;
    MenuItem5: TMenuItem;
    ExitConfirm: TTaskDialog;
    Editor: TSynEdit;
    UndoMenu: TMenuItem;
    tbCheck: TMenuItem;
    ToolBar1: TToolBar;
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
    procedure AuScClick(Sender: TObject);
    procedure BatScClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ColorDialogClose(Sender: TObject);
    procedure CPPScClick(Sender: TObject);
    procedure CscClick(Sender: TObject);
    procedure CshScClick(Sender: TObject);
    procedure EditorDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure EditorMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure EditorMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure ExitMenuItemClick(Sender: TObject);
    procedure FindDialog1Find(Sender: TObject);
    procedure FontDialogClose(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDropFiles(Sender: TObject; const FileNames: array of String);
    procedure FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: boolean);
    procedure FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: boolean);
    procedure FormShow(Sender: TObject);
    procedure EditorChange(Sender: TObject);
    procedure CutMenuClick(Sender: TObject);
    procedure CopyMenuClick(Sender: TObject);
    procedure PasteMenuClick(Sender: TObject);
    procedure RedoMenuClick(Sender: TObject);
    procedure bgColorClick(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure HTMLDClick(Sender: TObject);
    procedure CSSSSClick(Sender: TObject);
    procedure FindMenuClick(Sender: TObject);
    procedure chFontClick(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure ExitConfirmButtonClicked(Sender: TObject;
      AModalResult: TModalResult; var ACanClose: boolean);
    procedure UndoMenuClick(Sender: TObject);
    procedure MenuItem8Click(Sender: TObject);
    procedure tbCheckClick(Sender: TObject);
    procedure NewMenuItemClick(Sender: TObject);
    procedure OpenDialogClose(Sender: TObject);
    procedure OpenMenuItemClick(Sender: TObject);
    procedure PascalSCClick(Sender: TObject);
    procedure SaveAsMenuItemClick(Sender: TObject);
    procedure SaveDialogClose(Sender: TObject);
    procedure SaveMenuItemClick(Sender: TObject);
    procedure ShScClick(Sender: TObject);
    procedure Sync();
    procedure SaveCfg();
    procedure SynEdit1Change(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  appName, editableFile, configFileLocation: string;
  config: Text;
  configFile: TStringList;
  isFileEditing: boolean;

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
    isFileEditing:=false;
  end;
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
  FontDialog.Font := Editor.font;
  ColorDialog.Color := Editor.Color;
  tbCheck.Checked := ToolBar1.Visible;
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
  WriteLn(config, IntToStr(Form1.Left));
  WriteLn(config, IntToStr(Form1.Top));
  WriteLn(config, IntToStr(Form1.Width));
  WriteLn(config, IntToStr(Form1.Height));
  WriteLn(config, BoolToStr(tbCheck.Checked));
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
  WriteLn(config, '');
  WriteLn(config, '11th string = Master form X position');
  WriteLn(config, '12th string = Master form Y position');
  WriteLn(config, '');
  WriteLn(config, '13th string = Master form width');
  WriteLn(config, '14th string = Master form height');
  WriteLn(config, '');
  WriteLn(config, '15th string = Show toolbar?');
  CloseFile(config);
end;

procedure TForm1.SynEdit1Change(Sender: TObject);
begin

end;

procedure TForm1.EditorChange(Sender: TObject);
begin
  StatusBar1.Panels.Items[0].Text := 'Length: ' + IntToStr(Length(Editor.Text));
  StatusBar1.Panels.Items[0].Width := Length(StatusBar1.Panels.Items[0].Text) * 8;

  StatusBar1.Panels.Items[1].Text := 'Lines: ' + IntToStr(editor.Lines.Count);

  if (editableFile = '') then
  begin
    Form1.Caption := '*New file - ' + appName;
    isFileEditing := True;
  end
  else
  begin
    Form1.Caption := '*' + editableFile + ' - ' + appName;
    isFileEditing := True;
  end;
end;

procedure TForm1.CutMenuClick(Sender: TObject);
begin
  Editor.CutToClipboard;
end;

procedure TForm1.CopyMenuClick(Sender: TObject);
begin
  Editor.CopyToClipboard;
end;

procedure TForm1.PasteMenuClick(Sender: TObject);
begin
  Editor.PasteFromClipboard;
end;

procedure TForm1.RedoMenuClick(Sender: TObject);
begin
  Editor.Redo;
end;

procedure TForm1.bgColorClick(Sender: TObject);
begin
     ColorDialog.Execute;
end;



procedure TForm1.MenuItem1Click(Sender: TObject);
begin
  if (editor.SelText <> '') then
    Clipboard.AsText := Editor.SelText;
end;


procedure TForm1.HTMLDClick(Sender: TObject);
begin
  Editor.Lines.Clear;
  Editor.Lines.Add('<!DOCTYPE html>');
  Editor.Lines.Add('<HTML>');
  Editor.Lines.Add('    <HEAD>');
  Editor.Lines.Add('        <SCRIPT src="script.js"></SCRIPT>');
  Editor.Lines.Add('        <LINK rel="stylesheet" type="text/css" href="style.css">');
  Editor.Lines.Add('        <META charset="UTF-8">');
  Editor.Lines.Add('        <TITLE>TITLE</TITLE>');
  Editor.Lines.Add('    </HEAD>');
  Editor.Lines.Add('    <BODY>');
  Editor.Lines.Add('        <h1>Hello World!</h1>');
  Editor.Lines.Add('    </BODY>');
  Editor.Lines.Add('</HTML>');
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

procedure TForm1.FindMenuClick(Sender: TObject);
begin
  FindDialog1.Execute;
end;

procedure TForm1.chFontClick(Sender: TObject);
begin
  FontDialog.Execute;
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

procedure TForm1.ExitConfirmButtonClicked(Sender: TObject;
  AModalResult: TModalResult; var ACanClose: boolean);
begin
  if ExitConfirm.ModalResult = mrNo then
    Close();
end;

procedure TForm1.UndoMenuClick(Sender: TObject);
begin
  Editor.Undo;
end;

procedure TForm1.MenuItem8Click(Sender: TObject);
begin

end;


procedure TForm1.tbCheckClick(Sender: TObject);
begin
  if (tbCheck.Checked = False) then
    tbCheck.Checked := True
  else
    tbCheck.Checked := False;
  ToolBar1.Visible := tbCheck.Checked;
end;

procedure TForm1.NewMenuItemClick(Sender: TObject);
begin
  Editor.Lines.Clear;
  editableFile := '';
  isFileEditing := False;
  Form1.Caption := 'New file - ' + appName;
end;

procedure TForm1.OpenDialogClose(Sender: TObject);
begin
  if (OpenDialog.FileName <> '') then
  begin
    editableFile := OpenDialog.FileName;
    isFileEditing := False;
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
    isFileEditing := False;
    SaveDialog.FileName := '';
    Editor.Lines.SaveToFile(editableFile);
    Form1.Caption := editableFile + ' - ' + appName;
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
Editor.Lines.Add(ExtractFilePath('fletore.cfg'));
end;

procedure TForm1.ColorDialogClose(Sender: TObject);
begin
  Editor.Color := ColorDialog.color;
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

procedure TForm1.EditorDragDrop(Sender, Source: TObject; X, Y: Integer);
begin
end;

procedure TForm1.EditorMouseWheelDown(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
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

procedure TForm1.EditorMouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
   if (ssCtrl in Shift) then
  begin
    Editor.Font.Size := Editor.Font.Size + 2;
    Sync();
  end;
end;

procedure TForm1.ExitMenuItemClick(Sender: TObject);
begin
  Close();
end;

procedure TForm1.FindDialog1Find(Sender: TObject);
var k: integer;
begin
  with Sender as TFindDialog do begin
    k := Pos(FindText, Editor.Lines.Text);
    if k > 0 then begin
      Editor.SelStart := k;
      Editor.SelEnd := Editor.SelStart + Length(FindText);
      Editor.SetFocus;
    end else
      Beep();
  end;
end;


procedure TForm1.FontDialogClose(Sender: TObject);
begin
  Editor.Font := FontDialog.Font;
end;

procedure TForm1.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  SaveCfg();

end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: boolean);
begin
  if (isFileEditing = True) then
  begin
    ExitConfirm.Execute();
    if ExitConfirm.ModalResult = mrNo then
    begin

    end;
    if ExitConfirm.ModalResult = mrCancel then
    begin
         CanClose:=false;
    end;
    if ExitConfirm.ModalResult = mrYes then
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
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  appName := 'Fletore';



  isFileEditing := False;
  Sync();
  isFileEditing := False;





end;

procedure TForm1.FormDropFiles(Sender: TObject; const FileNames: array of String
  );
begin
  Editor.Lines.LoadFromFile(FileNames[0]);
end;

procedure TForm1.FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: boolean);
begin

end;

procedure TForm1.FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: boolean);
begin

end;

procedure TForm1.AboutMenuItemClick(Sender: TObject);
begin
  Form3.ShowModal;
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

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  OpenMenuItemClick(Sender);
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
  SaveMenuItemClick(Sender);
end;

procedure TForm1.BitBtn4Click(Sender: TObject);
begin
  NewMenuItemClick(Sender);
end;

procedure TForm1.BitBtn5Click(Sender: TObject);
begin
  FindMenuClick(Sender);
end;

procedure TForm1.BitBtn6Click(Sender: TObject);
begin
  bgColorClick(Sender);
end;

procedure TForm1.BitBtn7Click(Sender: TObject);
begin
  chFontClick(Sender);
end;

procedure TForm1.BitBtn8Click(Sender: TObject);
begin
  AboutMenuItemClick(Sender);
end;

procedure TForm1.FormShow(Sender: TObject);
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

    Form1.Left := StrToInt(configFile.Strings[10]);
    Form1.Top := StrToInt(configFile.Strings[11]);
    Form1.Width := StrToInt(configFile.Strings[12]);
    Form1.Height := StrToInt(configFile.Strings[13]);

    ToolBar1.Visible := StrToBool(configFile.Strings[14]);
  end;


     if paramcount = 1 then
  begin
    editableFile := ParamStr(1);
    Editor.Lines.LoadFromFile(ParamStr(1));
    Form1.Caption := editableFile + ' - ' + appName;
    isFileEditing := False;
    StatusBar1.Panels.Items[0].Text := 'Length: ' + IntToStr(Length(Editor.Text));
    StatusBar1.Panels.Items[0].Width := Length(StatusBar1.Panels.Items[0].Text) * 8;
    StatusBar1.Panels.Items[1].Text := 'Lines: ' + IntToStr(editor.Lines.Count);
  end
  else
    editableFile := '';
end;

end.
