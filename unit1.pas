unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, LCLProc, Forms, strutils, LazUTF8, SynEdit,
  SynHighlighterMulti, SynHighlighterPerl, SynHighlighterAny, SynHighlighterPas,
  SynCompletion, SynHighlighterIni, SynHighlighterPo, SynHighlighterBat,
  SynHighlighterVB, SynHighlighterPython, SynHighlighterPHP, SynHighlighterXML,
  SynHighlighterHTML, SynHighlighterCpp, SynPluginSyncroEdit,
  synhighlighterunixshellscript, SynHighlighterJScript, SynHighlighterCss,
  SynHighlighterTeX, Controls, Graphics, Dialogs, StdCtrls,
  Menus, ComCtrls, Buttons, Clipbrd, ExtCtrls, EditBtn, DBCtrls, ActnList,
  Unit2, Unit3, PQConnection, SQLite3Conn, Types, UITypes, IpHtml, TAGraph;

type

  { TForm1 }

  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    BitBtn14: TBitBtn;
    ClrBtn: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    ColorDialog: TColorDialog;
    clrPalette: TColorDialog;
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
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem17: TMenuItem;
    MenuItem18: TMenuItem;
    MenuItem19: TMenuItem;
    MenuItem2: TMenuItem;
    diLN: TMenuItem;
    clrplMenu: TMenuItem;
    MenuItem20: TMenuItem;
    MenuItem21: TMenuItem;
    MenuItem22: TMenuItem;
    MenuItem23: TMenuItem;
    MenuItem24: TMenuItem;
    MenuItem25: TMenuItem;
    MenuItem26: TMenuItem;
    MenuItem27: TMenuItem;
    MenuItem28: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    PopupMenu1: TPopupMenu;
    SaveAsDialog: TSaveDialog;
    SelectAll: TMenuItem;
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
    ReplaceDialog1: TReplaceDialog;
    BATSyn: TSynBatSyn;
    FPCSyn: TSynFreePascalSyn;
    HTMSyn: TSynHTMLSyn;
    JSSyn: TSynJScriptSyn;
    NoSyn: TSynAnySyn;
    XMLSyn: TSynXMLSyn;
    UNIXSyn: TSynUNIXShellScriptSyn;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
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
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ClrBtnClick(Sender: TObject);
    procedure clrplMenuClick(Sender: TObject);
    procedure ColorDialogClose(Sender: TObject);
    procedure CPPScClick(Sender: TObject);
    procedure CscClick(Sender: TObject);
    procedure CshScClick(Sender: TObject);
    procedure EditorDropFiles(Sender: TObject; X, Y: integer; AFiles: TStrings);
    procedure EditorEndDrag(Sender, Target: TObject; X, Y: integer);
    procedure EditorMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: boolean);
    procedure EditorMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: boolean);
    procedure EditorReplaceText(Sender: TObject; const ASearch,
      AReplace: string; Line, Column: integer;
      var ReplaceAction: TSynReplaceAction);
    procedure ExitMenuItemClick(Sender: TObject);
    procedure FindDialog1Find(Sender: TObject);
    procedure FontDialogClose(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDropFiles(Sender: TObject; const FileNames: array of string);
    procedure FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: boolean);
    procedure FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: boolean);
    procedure FormShow(Sender: TObject);
    procedure EditorChange(Sender: TObject);
    procedure CutMenuClick(Sender: TObject);
    procedure CopyMenuClick(Sender: TObject);
    procedure MenuItem12Click(Sender: TObject);
    procedure MenuItem14Click(Sender: TObject);
    procedure MenuItem17Click(Sender: TObject);
    procedure MenuItem18Click(Sender: TObject);
    procedure MenuItem20Click(Sender: TObject);
    procedure MenuItem21Click(Sender: TObject);
    procedure MenuItem22Click(Sender: TObject);
    procedure MenuItem23Click(Sender: TObject);
    procedure MenuItem24Click(Sender: TObject);
    procedure MenuItem25Click(Sender: TObject);
    procedure MenuItem27Click(Sender: TObject);
    procedure MenuItem29Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure diLNClick(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure MenuItem9Click(Sender: TObject);
    procedure SaveAsDialogClose(Sender: TObject);
    procedure SaveDialogCanClose(Sender: TObject; var CanClose: boolean);
    procedure SelectAllClick(Sender: TObject);
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
    procedure ReplaceDialog1Find(Sender: TObject);
    procedure ReplaceDialog1Replace(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
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
    procedure resetEtx();
    procedure resetSyn();
  private
  public

  end;

var
  Form1: TForm1;
  appName, editableFile, configFileLocation, curSyn, configPath: string;
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
    If (form2.keepCh.Checked = true) then begin

      end
      else Form1.Caption := editableFile + ' - ' + appName;
      resetEtx();
    isFileEditing := False;
  end;
end;


procedure TForm1.ShScClick(Sender: TObject);
begin
  Editor.Lines.Clear;
  Editor.Lines.Add('#! /bin/sh');
  Editor.Lines.Add('echo Hello world!');
  EditorChange(Sender);
end;

procedure TForm1.Sync();
begin
  FontDialog.Font := Editor.font;
  ColorDialog.Color := Editor.Color;
  tbCheck.Checked := ToolBar1.Visible;
  diLN.Checked := Editor.Gutter.Visible;
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
  WriteLn(config, BoolToStr(Editor.Gutter.Visible));
  writeln(config, WindowStateToStr(Form1.WindowState));
  If (form2.keepCh.Checked = true) then Writeln(config, Form2.form1caption.text) else Writeln(config, 'none');
  WriteLn(config, '');
  WriteLn(config, '-------');
  WriteLn(config, '');
  WriteLn(config, 'Fletore configuration file.');
  WriteLn(config, '');
  WriteLn(config,
    '1st string = Font color (Help - https://wiki.freepascal.org/Colors)');
  WriteLn(config, '2nd string = Font height');
  WriteLn(config, '3nd string = Font name (Monospace fonts recommended only)');
  WriteLn(config, '4nd string = Font orientation');
  WriteLn(config, '5nd string = Font size');
  WriteLn(config, '6nd string = Is font bold?');
  WriteLn(config, '7nd string = Is font italic?');
  WriteLn(config, '8nd string = Is font strikeout?');
  WriteLn(config, '9nd string = Is font underline?');
  WriteLn(config, '10th string = Background color (Help - https://wiki.freepascal.org/Colors)');
  WriteLn(config, '11th string = Master form X position');
  WriteLn(config, '12th string = Master form Y position');
  WriteLn(config, '13th string = Master form width');
  WriteLn(config, '14th string = Master form height');
  WriteLn(config, '15th string = Show toolbar?');
  WriteLn(config, '16th string = Display line numbers');
  WriteLn(config, '17th string = Window state');
  writeln(config, '18th string = Form1 caption (none = without changes)');
  CloseFile(config);
end;

procedure TForm1.SynEdit1Change(Sender: TObject);
begin

end;

procedure TForm1.resetEtx();
begin
  if (Editor.Highlighter = HTMSyn) or (Editor.Highlighter = FPCSyn) or
    (Editor.Highlighter = BATSyn) or (Editor.Highlighter = UNIXSyn) or
    (Editor.Highlighter = JSSyn) then
    begin
    CurSyn := 'none';
    editor.Highlighter:=NoSyn;
    end;

  if (ExtractFileExt(editableFile) = '.html') or
    (ExtractFileExt(editableFile) = '.htm') then
  begin
    editor.Highlighter := HTMSyn;
    CurSyn := 'html';
  end;

  if (ExtractFileExt(editableFile) = '.js') then
  begin
    editor.Highlighter := JSSyn;
    CurSyn := 'js';
  end;

  if (ExtractFileExt(editableFile) = '.pas') or
    (ExtractFileExt(editableFile) = '.dpr') or
    (ExtractFileExt(editableFile) = '.dpk') or
    (ExtractFileExt(editableFile) = '.inc') or
    (ExtractFileExt(editableFile) = '.lpr') or
    (ExtractFileExt(editableFile) = '.lfm') then
  begin
    editor.Highlighter := FPCSyn;
    CurSyn := 'fpc';
  end;

  if (ExtractFileExt(editableFile) = '.cmd') or
    (ExtractFileExt(editableFile) = '.bat') then
  begin
    editor.Highlighter := BATSyn;
    CurSyn := 'bat';
  end;

  if (ExtractFileExt(editableFile) = '.sh') then
  begin
    editor.Highlighter := UNIXSyn;
    CurSyn := 'sh';
  end;

  if (ExtractFileExt(editableFile) = '.xml') or
    (ExtractFileExt(editableFile) = '.xsd') or (ExtractFileExt(editableFile) = '.xsl') or
    (ExtractFileExt(editableFile) = '.xslt') or (ExtractFileExt(editableFile) = '.dtd') then
  begin
    editor.Highlighter := XMLSyn;
    CurSyn := 'xml';
  end;

  resetSyn();

end;

procedure TForm1.resetSyn();
begin
  Case curSyn of
       'none': StatusBar1.Panels.Items[2].text := 'Syntax: Normal text';
       'bat': StatusBar1.Panels.Items[2].text := 'Syntax: Bat';
       'fpc': StatusBar1.Panels.Items[2].text := 'Syntax: Free Pascal';
       'html': StatusBar1.Panels.Items[2].text := 'Syntax: HTML';
       'js': StatusBar1.Panels.Items[2].text := 'Syntax: JavaScript';
       'sh': StatusBar1.Panels.Items[2].text := 'Syntax: UNIX Sh';
       'xml': StatusBar1.Panels.Items[2].text := 'Syntax: XML';
  end;
end;

procedure TForm1.EditorChange(Sender: TObject);
begin
  StatusBar1.Panels.Items[0].Text := 'Length: ' + IntToStr(Length(Editor.Text));
  StatusBar1.Panels.Items[0].Width := Length(StatusBar1.Panels.Items[0].Text) * 8;

  StatusBar1.Panels.Items[1].Text := 'Lines: ' + IntToStr(editor.Lines.Count);

  resetSyn();

  if (editableFile = '') then
  begin
    If (form2.keepCh.Checked = true) then
    begin
      Form1.Caption := form2.form1caption.caption;
    end
    else
    begin
    Form1.Caption := '*New file - ' + appName;
    end;
    isFileEditing := True;
  end
  else
  begin
  If (form2.keepCh.Checked = true) then
    begin
      Form1.Caption := form2.form1caption.caption;
    end
  else
  begin
    Form1.Caption := '*' + editableFile + ' - ' + appName;
    end;
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

procedure TForm1.MenuItem12Click(Sender: TObject);
begin
  Editor.Lines.Add(DateToStr(Date));
end;

procedure TForm1.MenuItem14Click(Sender: TObject);
begin
  Editor.Lines.Add(TimeToStr(Time));
end;

procedure TForm1.MenuItem17Click(Sender: TObject);
begin
  Editor.Lines.Add(DateToStr(Date));
  Editor.Lines.Add(TimeToStr(Time));
end;

procedure TForm1.MenuItem18Click(Sender: TObject);
begin
  CurSyn := 'fpc';
  editor.Highlighter := FPCSyn;
  resetSyn();
end;

procedure TForm1.MenuItem20Click(Sender: TObject);
begin
  CurSyn := 'bat';
  editor.Highlighter := BATSyn;
  resetSyn();
end;

procedure TForm1.MenuItem21Click(Sender: TObject);
begin
  CurSyn := 'sh';
  editor.Highlighter := UNIXSyn;
  resetSyn();
end;

procedure TForm1.MenuItem22Click(Sender: TObject);
begin
  CurSyn := 'js';
  editor.Highlighter := JSSyn;
  resetSyn();
end;

procedure TForm1.MenuItem23Click(Sender: TObject);
begin
  CurSyn := 'html';
  editor.Highlighter := HTMSyn;
  resetSyn();
end;

procedure TForm1.MenuItem24Click(Sender: TObject);
begin
  CurSyn := 'xml';
  editor.Highlighter := XMLSyn;
  resetSyn();
end;

procedure TForm1.MenuItem25Click(Sender: TObject);
begin
    CurSyn := 'none';
    editor.Highlighter:=NoSyn;
    resetSyn();
end;

procedure TForm1.MenuItem27Click(Sender: TObject);
begin
  Form2.form1caption.Caption:=Form1.Caption;
  Form2.ShowModal;
end;

procedure TForm1.MenuItem29Click(Sender: TObject);
begin
  Editor.Font.CharSet := 4;
end;

procedure TForm1.MenuItem2Click(Sender: TObject);
begin
  ReplaceDialog1.Execute;
end;

procedure TForm1.diLNClick(Sender: TObject);
begin
  if (diLN.Checked = False) then
    diLN.Checked := True
  else
    diLN.Checked := False;
  Editor.Gutter.Visible := diLN.Checked;
end;

procedure TForm1.MenuItem4Click(Sender: TObject);
begin
  CutMenuClick(Sender);
end;

procedure TForm1.MenuItem7Click(Sender: TObject);
begin
  CopyMenuClick(Sender);
end;

procedure TForm1.MenuItem9Click(Sender: TObject);
begin
  PasteMenuClick(Sender);
end;

procedure TForm1.SaveAsDialogClose(Sender: TObject);
begin
  if (SaveAsDialog.FileName <> '') then
  begin
    editableFile := SaveAsDialog.FileName;
    isFileEditing := False;
    SaveAsDialog.FileName := '';
    Editor.Lines.SaveToFile(editableFile);
    If (form2.keepCh.Checked = true) then begin

      end
      else Form1.Caption := editableFile + ' - ' + appName;
      resetEtx();
    resetEtx();
  end;
end;

procedure TForm1.SaveDialogCanClose(Sender: TObject; var CanClose: boolean);
begin

end;

procedure TForm1.SelectAllClick(Sender: TObject);
begin
  Editor.SelectAll;
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
  Editor.Lines.Add('program Helloworld;');
  Editor.Lines.Add('{$APPTYPE CONSOLE}');
  Editor.Lines.Add('uses sysutils;');
  Editor.Lines.Add('begin');
  Editor.Lines.Add('  ');
  Editor.Lines.Add('  ');
  Editor.Lines.Add('end.');
  EditorChange(Sender);
end;

procedure TForm1.ExitConfirmButtonClicked(Sender: TObject;
  AModalResult: TModalResult; var ACanClose: boolean);
begin
  if ExitConfirm.ModalResult = mrNo then
    Close();
end;

procedure TForm1.ReplaceDialog1Find(Sender: TObject);
var
  Found, StartPos: integer;
  ToFind, Where: string;

  isReverse: boolean;
  fd: TReplaceDialog;
begin
  fd := Sender as TReplaceDialog;

  with Editor do
  begin
    ToFind := fd.FindText;
    Where := Text;
    if not (frMatchCase in fd.Options) then
    begin
      ToFind := AnsiUpperCase(ToFind);
      Where := AnsiUpperCase(Where);
    end;

    isReverse := not (frDown in fd.Options);
    if SelStart <> SelEnd then
    begin
      StartPos := SelStart;
      if not isReverse then
        StartPos := StartPos + (SelEnd - SelStart);
    end
    else
    begin
      if isReverse then
        StartPos := Length(Where)
      else
        StartPos := 0;
    end;

    if isReverse then
      Found := RPosex(ToFind, Where, StartPos)
    else
      Found := PosEx(ToFind, Where, StartPos + 1);

    if Found <> 0 then
    begin
      HideSelection := False;
      SelStart := Found;
      SelEnd := SelStart + Length(fd.FindText);
    end
    else
      MessageDlg(fd.FindText + ' not found!',
        mtConfirmation, [mbOK], 0);
  end;
end;

procedure TForm1.ReplaceDialog1Replace(Sender: TObject);
//var
//  SelPos: integer;
//begin
//  if frReplaceAll in ReplaceDialog1.Options then
//  begin
//    SelPos := Pos(ReplaceDialog1.FindText, Editor.Lines.Text);
//    while SelPos > 0 do
//    begin
//      Editor.Lines.Text :=
//        Copy(Editor.Lines.Text, 1, SelPos - 1) + ReplaceDialog1.ReplaceText +
//        Copy(Editor.Lines.Text, SelPos + Length(ReplaceDialog1.FindText),
//        Length(Editor.Lines.Text) - SelPos + Length(ReplaceDialog1.FindText));
//      SelPos := Pos(ReplaceDialog1.FindText, Editor.Lines.Text);
//    end;
//  end
//  else
//  if Editor.SelText <> '' then
//    Editor.SelText := ReplaceDialog1.ReplaceText;
//end;
begin
  with Sender as TReplaceDialog do
    while True do
    begin
      if Editor.SelText <> FindText then
        FindDialog1Find(Sender);
      if Editor.SelEnd+Editor.SelStart = 0 then
        Break;
      Editor.SelText := ReplaceText;
      if not (frReplaceAll in Options) then
        Break;
    end;
end;

procedure TForm1.ToolButton1Click(Sender: TObject);
begin

end;


procedure TForm1.UndoMenuClick(Sender: TObject);
begin
  Editor.Undo;
end;

procedure TForm1.MenuItem8Click(Sender: TObject);
begin
  SelectAllClick(Sender);
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
var
  canNew: boolean;
begin
  if isFileEditing = True then
  begin
    ExitConfirm.Execute();
    if ExitConfirm.ModalResult = mrNo then
    begin
      canNew := True;
    end;
    if ExitConfirm.ModalResult = mrCancel then
    begin
      canNew := False;
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
        If (form2.keepCh.Checked = true) then begin

        end
        else Form1.Caption := editableFile + ' - ' + appName;
      resetEtx();
      end;
      canNew := True;
    end;
  end
  else
    canNew := True;
  if (canNew = True) then
  begin
    Editor.Lines.Clear;
    editableFile := '';
    isFileEditing := False;
    If (form2.keepCh.Checked = true) then begin

      end
      else Form1.Caption := editableFile + ' - ' + appName;
      resetEtx();
    resetEtx();
  end;
end;

procedure TForm1.OpenDialogClose(Sender: TObject);
begin

  if (OpenDialog.FileName <> '') then
  begin
    if (FileExists(OpenDialog.FileName)) then
    begin
      editableFile := OpenDialog.FileName;
      isFileEditing := False;
      OpenDialog.FileName := '';
      Editor.Lines.LoadFromFile(editableFile);
      If (form2.keepCh.Checked = true) then begin

      end
      else Form1.Caption := editableFile + ' - ' + appName;
      resetEtx();

    end
    else
    begin
      OpenDialog.FileName := '';
      Application.MessageBox('This file cannot be opened because it does not exist.',
        'Fletore', 16);
    end;
  end;
end;

procedure TForm1.OpenMenuItemClick(Sender: TObject);
begin
  OpenDialog.Execute;
end;

procedure TForm1.PascalSCClick(Sender: TObject);
begin
  Editor.Lines.Clear;
  Editor.Lines.Add('program PROJECT;');
  Editor.Lines.Add('uses CRT;');
  Editor.Lines.Add('');
  Editor.Lines.Add('BEGIN');
  Editor.Lines.Add('       ');
  Editor.Lines.Add('END.');
  EditorChange(Sender);
end;


procedure TForm1.SaveAsMenuItemClick(Sender: TObject);
begin
  SaveAsDialog.Execute;
end;

procedure TForm1.SaveDialogClose(Sender: TObject);
begin
  if (SaveDialog.FileName <> '') then
  begin
    editableFile := SaveDialog.FileName;
    isFileEditing := False;
    SaveDialog.FileName := '';
    Editor.Lines.SaveToFile(editableFile);
    If (form2.keepCh.Checked = true) then begin

      end
      else Form1.Caption := editableFile + ' - ' + appName;
      resetEtx();
    resetEtx();
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Editor.Lines.Add(ExtractFilePath('fletore.cfg'));
end;

procedure TForm1.ClrBtnClick(Sender: TObject);
begin
  clrPalette.Execute;
end;

procedure TForm1.clrplMenuClick(Sender: TObject);
begin
  clrPalette.Execute;
end;

procedure TForm1.ColorDialogClose(Sender: TObject);
begin
  Editor.Color := ColorDialog.color;
end;

procedure TForm1.CPPScClick(Sender: TObject);
begin
  Editor.Lines.Clear;
  Editor.Lines.Add('#include <iostream>');
  Editor.Lines.Add('using namespace std;');
  Editor.Lines.Add('');
  Editor.Lines.Add('int main()');
  Editor.Lines.Add('{');
  Editor.Lines.Add('   ');
  Editor.Lines.Add('   return 0;');
  Editor.Lines.Add('}');
  EditorChange(Sender);
end;

procedure TForm1.CscClick(Sender: TObject);
begin
  Editor.Lines.Clear;
  Editor.Lines.Add('#include <stdio.h>');
  Editor.Lines.Add('');
  Editor.Lines.Add('int main()');
  Editor.Lines.Add('{');
  Editor.Lines.Add('  ');
  Editor.Lines.Add('  return 0;');
  Editor.Lines.Add('}');
  EditorChange(Sender);
end;

procedure TForm1.CshScClick(Sender: TObject);
begin
  Editor.Lines.Clear;
  Editor.Lines.Add('using System;');
  Editor.Lines.Add('');
  Editor.Lines.Add('namespace HelloWorld');
  Editor.Lines.Add('{');
  Editor.Lines.Add('    class Hello');
  Editor.Lines.Add('    {');
  Editor.Lines.Add('        static void Main() ');
  Editor.Lines.Add('        {');
  Editor.Lines.Add('            ');
  Editor.Lines.Add('        }');
  Editor.Lines.Add('    }');
  Editor.Lines.Add('}');
  EditorChange(Sender);
end;

procedure TForm1.EditorDropFiles(Sender: TObject; X, Y: integer; AFiles: TStrings);
begin

end;

procedure TForm1.EditorEndDrag(Sender, Target: TObject; X, Y: integer);
begin

end;

procedure TForm1.EditorMouseWheelDown(Sender: TObject; Shift: TShiftState;
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

procedure TForm1.EditorMouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: boolean);
begin
  if (ssCtrl in Shift) then
  begin
    Editor.Font.Size := Editor.Font.Size + 2;
    Sync();
  end;
end;

procedure TForm1.EditorReplaceText(Sender: TObject; const ASearch,
  AReplace: string; Line, Column: integer; var ReplaceAction: TSynReplaceAction
  );
begin
    if Messagedlg('Replace this occurence?', mtInformation, [mbOk,mbCancel], 0)=mrOK then
        ReplaceAction:=raReplace else ReplaceAction:=raSkip;
end;

procedure TForm1.ExitMenuItemClick(Sender: TObject);
begin
  Close();
end;

procedure TForm1.FindDialog1Find(Sender: TObject);
var
  Found, StartPos: integer;
  ToFind, Where: string;

  isReverse: boolean;
  fd: TFindDialog;
begin
  fd := Sender as TFindDialog;

  with Editor do
  begin
    ToFind := fd.FindText;
    Where := Text;
    if not (frMatchCase in fd.Options) then
    begin
      ToFind := AnsiUpperCase(ToFind);
      Where := AnsiUpperCase(Where);
    end;

    isReverse := not (frDown in fd.Options);
    if SelStart <> SelEnd then
    begin
      StartPos := SelStart;
      if not isReverse then
        StartPos := StartPos + (SelEnd - SelStart);
    end
    else
    begin
      if isReverse then
        StartPos := Length(Where)
      else
        StartPos := 0;
    end;

    if isReverse then
      Found := RPosex(ToFind, Where, StartPos)
    else
      Found := PosEx(ToFind, Where, StartPos + 1);

    if Found <> 0 then
    begin
      HideSelection := False;
      SelStart := Found;
      SelEnd := SelStart + Length(fd.FindText);
    end
    else
      MessageDlg('Строка ' + fd.FindText + ' не найдена!',
        mtConfirmation, [mbOK], 0);
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
      CanClose := False;
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

procedure TForm1.FormDropFiles(Sender: TObject; const FileNames: array of string);
begin
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
  Editor.Lines.Add('[autorun]');
  Editor.Lines.Add('open=');
  Editor.Lines.Add('icon=');
  Editor.Lines.Add('shell\open=');
  Editor.Lines.Add('shell\open\Command=');
  Editor.Lines.Add('shell\open\Default=');
  Editor.Lines.Add('shell\explore=');
  Editor.Lines.Add('shell\explore\Command=');
  EditorChange(Sender);
end;

procedure TForm1.BatScClick(Sender: TObject);
begin
  Editor.Lines.Clear;
  Editor.Lines.Add('@ECHO OFF');
  Editor.Lines.Add('TITLE Hello world');
  Editor.Lines.Add('');
  Editor.Lines.Add('PAUSE');
  Editor.Lines.Add('EXIT');
  EditorChange(Sender);
end;

procedure TForm1.BitBtn10Click(Sender: TObject);
begin
  PasteMenuClick(Sender);
end;

procedure TForm1.BitBtn11Click(Sender: TObject);
begin
  CopyMenuClick(Sender);
end;

procedure TForm1.BitBtn12Click(Sender: TObject);
begin
  CutMenuClick(Sender);
end;

procedure TForm1.BitBtn13Click(Sender: TObject);
begin
  UndoMenuClick(Sender);
end;

procedure TForm1.BitBtn14Click(Sender: TObject);
begin
  RedoMenuClick(Sender);
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  OpenMenuItemClick(Sender);
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  SelectAllClick(Sender);
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

procedure TForm1.BitBtn9Click(Sender: TObject);
begin
  MenuItem2Click(Sender);
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
    Editor.Gutter.Visible := StrToBool(configFile.Strings[15]);
    if (configFile.Strings[16] <> 'wsMinimized') then
      Form1.WindowState := StrToWindowState(configFile.Strings[16]);

    If (configFile.strings[17] = 'none') then
    begin
    end
else
    begin
      Form1.Caption:=configFile.strings[17];
      Form2.form1caption.Caption:=configFile.strings[17];
      Form2.keepCh.Checked:=true;
    end;

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
    resetEtx();
  end
  else
    editableFile := '';

end;

end.
