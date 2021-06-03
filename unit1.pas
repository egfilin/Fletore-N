unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, LCLProc, Forms, strutils, LazUTF8, SynEdit,
  SynHighlighterAny, SynHighlighterPas, SynHighlighterBat, SynHighlighterPython,
  SynHighlighterXML, SynHighlighterHTML, SynHighlighterCpp,
  synhighlighterunixshellscript, SynHighlighterJScript,
  Controls, Graphics, Dialogs, StdCtrls,
  Menus, ComCtrls, Buttons, Clipbrd, ExtCtrls, EditBtn, ActnList,
  Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Types;

type

  { TForm1 }

  TForm1 = class(TForm)
    ColorDialog: TColorDialog;
    clrPalette: TColorDialog;
    MenuItem43: TMenuItem;
    MenuItem44: TMenuItem;
    MenuItem45: TMenuItem;
    MenuItem46: TMenuItem;
    MenuItem47: TMenuItem;
    MenuItem48: TMenuItem;
    MenuItem49: TMenuItem;
    MenuItem50: TMenuItem;
    MenuItem51: TMenuItem;
    MenuItem52: TMenuItem;
    MenuItem53: TMenuItem;
    MenuItem54: TMenuItem;
    toolbarColor: TColorDialog;
    fontColor: TColorDialog;
    gutterColor: TColorDialog;
    FindDialog1: TFindDialog;
    FontDialog: TFontDialog;
    MenuItem14: TMenuItem;
    MenuItem16: TMenuItem;
    MenuItem17: TMenuItem;
    MenuItem32: TMenuItem;
    MenuItem33: TMenuItem;
    MenuItem34: TMenuItem;
    MenuItem35: TMenuItem;
    MenuItem36: TMenuItem;
    MenuItem37: TMenuItem;
    MenuItem38: TMenuItem;
    MenuItem39: TMenuItem;
    MenuItem40: TMenuItem;
    MenuItem41: TMenuItem;
    MenuItem42: TMenuItem;
    PYSyn: TSynPythonSyn;
    ToolbarIcons: TImageList;
    MainMenu: TMainMenu;
    FileSubmenu: TMenuItem;
    AboutSubmenu: TMenuItem;
    MenuItem1: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem18: TMenuItem;
    clrplMenu: TMenuItem;
    MenuItem20: TMenuItem;
    MenuItem21: TMenuItem;
    MenuItem22: TMenuItem;
    MenuItem23: TMenuItem;
    MenuItem24: TMenuItem;
    MenuItem25: TMenuItem;
    MenuItem26: TMenuItem;
    MenuItem28: TMenuItem;
    MenuItem29: TMenuItem;
    MenuItem30: TMenuItem;
    MenuItem31: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    PopupMenu1: TPopupMenu;
    SaveAsDialog: TSaveDialog;
    MenuItem5: TMenuItem;
    Editor: TSynEdit;
    ReplaceDialog1: TReplaceDialog;
    BATSyn: TSynBatSyn;
    FPCSyn: TSynFreePascalSyn;
    HTMSyn: TSynHTMLSyn;
    JSSyn: TSynJScriptSyn;
    NoSyn: TSynAnySyn;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    ToolButton16: TToolButton;
    ToolButton17: TToolButton;
    ToolButton18: TToolButton;
    ToolButton19: TToolButton;
    ToolButton20: TToolButton;
    ToolButton21: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    XMLSyn: TSynXMLSyn;
    UNIXSyn: TSynUNIXShellScriptSyn;
    ToolButton1: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
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
    SettingsSubmenu: TMenuItem;
    StatusBar1: TStatusBar;
    procedure AboutSubmenuClick(Sender: TObject);
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
    procedure BitBtn9Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ClrBtnClick(Sender: TObject);
    procedure clrplMenuClick(Sender: TObject);
    procedure ColorDialogClose(Sender: TObject);
    procedure CPPScClick(Sender: TObject);
    procedure CscClick(Sender: TObject);
    procedure CshScClick(Sender: TObject);
    procedure EditorClick(Sender: TObject);
    procedure EditorMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: boolean);
    procedure EditorMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: boolean);
    procedure EditorReplaceText(Sender: TObject; const ASearch, AReplace: string;
      Line, Column: integer; var ReplaceAction: TSynReplaceAction);
    procedure ExitMenuItemClick(Sender: TObject);
    procedure FindDialog1Find(Sender: TObject);
    procedure fontColorClose(Sender: TObject);
    procedure FontDialogClose(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDropFiles(Sender: TObject; const FileNames: array of string);
    procedure FormKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: char);
    procedure FormKeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure EditorChange(Sender: TObject);
    procedure CutMenuClick(Sender: TObject);
    procedure CopyMenuClick(Sender: TObject);
    procedure gutterColorClose(Sender: TObject);
    procedure MenuItem12Click(Sender: TObject);
    procedure MenuItem18Click(Sender: TObject);
    procedure MenuItem19Click(Sender: TObject);
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
    procedure MenuItem31Click(Sender: TObject);
    procedure MenuItem32Click(Sender: TObject);
    procedure MenuItem33Click(Sender: TObject);
    procedure MenuItem35Click(Sender: TObject);
    procedure MenuItem36Click(Sender: TObject);
    procedure MenuItem37Click(Sender: TObject);
    procedure MenuItem39Click(Sender: TObject);
    procedure MenuItem40Click(Sender: TObject);
    procedure MenuItem41Click(Sender: TObject);
    procedure MenuItem43Click(Sender: TObject);
    procedure MenuItem44Click(Sender: TObject);
    procedure MenuItem45Click(Sender: TObject);
    procedure MenuItem46Click(Sender: TObject);
    procedure MenuItem47Click(Sender: TObject);
    procedure MenuItem48Click(Sender: TObject);
    procedure MenuItem49Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem50Click(Sender: TObject);
    procedure MenuItem52Click(Sender: TObject);
    procedure MenuItem53Click(Sender: TObject);
    procedure MenuItem54Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure MenuItem9Click(Sender: TObject);
    procedure SaveAsDialogClose(Sender: TObject);
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
    procedure ReplaceDialog1Find(Sender: TObject);
    procedure ReplaceDialog1Replace(Sender: TObject);
    procedure toolbarColorClose(Sender: TObject);
    procedure ToolButton20Click(Sender: TObject);
    procedure ToolButton21Click(Sender: TObject);
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
    procedure loadCfg();
    procedure resetEtx();
    procedure resetSyn();
  private
  public

  end;

var
  Form1: TForm1;
  editableFile, configFileLocation, curSyn, tmpSyn: string;
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
    if (form2.keepCh.Checked = True) then
    begin

    end
    else
      Form1.Caption := 'Editing ' + editableFile;

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
{$IFDEF WIN32}
if doNotShowWinDialog = False then
begin
 Form7.ShowModal;
 end;
{$ENDIF}
  FontDialog.Font := Editor.font;
  fontColor.Color := Editor.Font.Color;
  ColorDialog.Color := Editor.Color;
  gutterColor.Color := Editor.Gutter.Color;
  Form4.tbcheck.Checked := ToolBar1.Visible;
  form4.diLN.Checked := Editor.Gutter.Visible;
  form4.gutterSeparator.Checked := editor.Gutter.Parts[3].Visible;
  form4.enlargeGutter.Checked := editor.Gutter.Parts[0].Visible;
  if (editor.BorderStyle = bsNone) then
    form4.editorsBorder.Checked := False;
  if (FileExists('fletore-n.conf')) then
  Form4.CheckBox1.Checked := StatusBar1.Visible;
  Form4.CheckBox2.Checked := Form1.FileSubmenu.Visible;

  if (ToolBar1.Align = alBottom) then
    Form4.ComboBox3.Caption := 'Bottom';
  if (StatusBar1.Align = alTop) then
    Form4.ComboBox2.Caption := 'Top';

  toolbarColor.Color := ToolBar1.color;

end;

procedure TForm1.SaveCfg();
begin
  AssignFile(config, configFileLocation);
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
  WriteLn(config, BoolToStr(form4.tbCheck.Checked));
  WriteLn(config, BoolToStr(Editor.Gutter.Visible));
  writeln(config, WindowStateToStr(Form1.WindowState));
  if (form2.keepCh.Checked = True) then
    Writeln(config, Form2.form1caption.Text)
  else
    Writeln(config, 'none');
  writeln(config, BoolToStr(StatusBar1.Visible));
  Writeln(config, BoolToStr(Form1.FileSubmenu.Visible));
  Writeln(config, ColorToString(Editor.Gutter.Color));
  if (editor.BorderStyle = bsNone) then
  begin
    Writeln(config, 'no_bs');
  end
  else
  begin
    Writeln(config, 'bs');
  end;
  writeln(config, BoolToStr(Editor.Gutter.Parts[0].Visible));
  writeln(config, BoolToStr(Editor.Gutter.Parts[3].Visible));

  if (ToolBar1.Align = alBottom) then
    writeln(config, 'bottom');
  if (ToolBar1.Align = alTop) then
    writeln(config, 'top');

  if (StatusBar1.Align = alBottom) then
    writeln(config, 'bottom');
  if (StatusBar1.Align = alTop) then
    writeln(config, 'top');
  writeln(config, ColorToString(ToolBar1.color));
  writeln(config, doNotShowWinDialog);
  CloseFile(config);
end;

procedure TForm1.loadCfg();
begin

  if FileExists(configFileLocation) then
  begin

    configFile := TStringList.Create;
    configFile.LoadFromFile(configFileLocation);
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

    if (configFile.strings[17] = 'none') then
    begin

    end
    else
    begin
      Form1.Caption := configFile.strings[17];
      Form2.form1caption.Caption := configFile.strings[17];
      Form2.keepCh.Checked := True;
    end;

    StatusBar1.Visible := StrToBool(configFile.Strings[18]);

    Form1.FileSubmenu.Visible := StrToBool(configFile.Strings[19]);
    Form1.SettingsSubmenu.Visible := StrToBool(configFile.Strings[19]);
    Form1.MenuItem11.Visible := StrToBool(configFile.Strings[19]);
    Form1.AboutSubmenu.Visible := StrToBool(configFile.Strings[19]);
    Form1.MenuItem43.Visible := StrToBool(configFile.Strings[19]);

    Form1.Editor.Gutter.Color := StringToColor(configFile.Strings[20]);
    Form1.Editor.Gutter.Parts[1].MarkupInfo.Background :=
      StringToColor(configFile.Strings[20]);

    if (configFile.Strings[21] = 'no_bs') then
      Form1.Editor.BorderStyle := bsNone;
    Form1.Editor.Gutter.Parts[0].Visible := StrToBool(configFile.Strings[22]);
    Form1.Editor.Gutter.Parts[3].Visible := StrToBool(configFile.Strings[23]);
    case configFile.Strings[24] of
      'bottom':
      begin
        Form1.ToolBar1.Align := alBottom;
        Form1.ToolBar1.Anchors := [akBottom, akLeft, akRight];
        Form1.ToolBar1.Height := 29;
      end;
    end;

    case configFile.Strings[25] of
      'top':
      begin
        Form1.StatusBar1.Align := alTop;
        Form1.StatusBar1.Anchors := [akTop, akLeft, akRight];
        Form1.StatusBar1.Height := 23;
      end;
    end;

    toolbar1.Color := StringToColor(configFile.Strings[26]);
    doNotShowWinDialog :=  StrToBool(configFile.Strings[27])
  end; //Config file reading ends
end;

procedure TForm1.resetEtx();
begin
  if (Editor.Highlighter = HTMSyn) or (Editor.Highlighter = FPCSyn) or
    (Editor.Highlighter = BATSyn) or (Editor.Highlighter = UNIXSyn) or
    (Editor.Highlighter = JSSyn) or (Editor.Highlighter = PYSyn) then
  begin
    CurSyn := 'none';
    editor.Highlighter := NoSyn;
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

  if (ExtractFileExt(editableFile) = '.py') then
  begin
    editor.Highlighter := PYSyn;
    CurSyn := 'py';
  end;

  if (ExtractFileExt(editableFile) = '.xml') or
    (ExtractFileExt(editableFile) = '.xsd') or (ExtractFileExt(editableFile) = '.xsl') or
    (ExtractFileExt(editableFile) = '.xslt') or
    (ExtractFileExt(editableFile) = '.dtd') then
  begin
    editor.Highlighter := XMLSyn;
    CurSyn := 'xml';
  end;

  resetSyn();

end;

procedure TForm1.resetSyn();
begin
  case curSyn of
    'none': StatusBar1.Panels.Items[3].Text := 'Plain text';
    'bat': StatusBar1.Panels.Items[3].Text := 'BAT script';
    'fpc': StatusBar1.Panels.Items[3].Text := 'Free Pascal source file';
    'html': StatusBar1.Panels.Items[3].Text := 'HTML file';
    'js': StatusBar1.Panels.Items[3].Text := 'JS source file';
    'sh': StatusBar1.Panels.Items[3].Text := 'Shell script';
    'xml': StatusBar1.Panels.Items[3].Text := 'XML file';
    'py': StatusBar1.Panels.Items[3].Text := 'Python Script';
  end;
end;

procedure TForm1.EditorChange(Sender: TObject);
begin
  StatusBar1.Panels.Items[2].Text :=
    IntToStr(Editor.CaretX) + ', ' + IntToStr(Editor.CaretY);
  StatusBar1.Panels.Items[2].Width := Length(StatusBar1.Panels[2].Text) + 56;

  StatusBar1.Panels.Items[0].Text := 'Length: ' + IntToStr(Length(Editor.Text));
  StatusBar1.Panels.Items[0].Width := Length(StatusBar1.Panels.Items[0].Text) * 8;

  StatusBar1.Panels.Items[1].Text := 'Lines: ' + IntToStr(editor.Lines.Count);
  StatusBar1.Panels.Items[1].Width := Length(StatusBar1.Panels.Items[1].Text) * 8;


  resetSyn();

  if (editableFile = '') then
  begin
    if (form2.keepCh.Checked = True) then
    begin
      Form1.Caption := form2.form1caption.Caption;
    end
    else
    begin
      Form1.Caption := 'New file*';
    end;
    isFileEditing := True;
  end
  else
  begin
    if (form2.keepCh.Checked = True) then
    begin
      Form1.Caption := form2.form1caption.Caption;
    end
    else
    begin
      Form1.Caption := 'Editing ' + editableFile + '*';
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

procedure TForm1.gutterColorClose(Sender: TObject);
begin
  Editor.Gutter.Color := gutterColor.Color;
  Editor.Gutter.Parts[1].MarkupInfo.Background := gutterColor.Color;
end;

procedure TForm1.MenuItem12Click(Sender: TObject);
begin
  MenuItem33Click(Sender);
end;

procedure TForm1.MenuItem18Click(Sender: TObject);
begin
  tmpSyn := 'fpc';
  CurSyn := 'fpc';
  editor.Highlighter := FPCSyn;
  resetSyn();
end;

procedure TForm1.MenuItem19Click(Sender: TObject);
begin
  Form5.ShowModal;
end;

procedure TForm1.MenuItem20Click(Sender: TObject);
begin
  tmpSyn := 'bat';
  CurSyn := 'bat';
  editor.Highlighter := BATSyn;
  resetSyn();
end;

procedure TForm1.MenuItem21Click(Sender: TObject);
begin
  tmpSyn := 'sh';
  CurSyn := 'sh';
  editor.Highlighter := UNIXSyn;
  resetSyn();
end;

procedure TForm1.MenuItem22Click(Sender: TObject);
begin
  tmpSyn := 'js';
  CurSyn := 'js';
  editor.Highlighter := JSSyn;
  resetSyn();
end;

procedure TForm1.MenuItem23Click(Sender: TObject);
begin
  tmpSyn := 'html';
  CurSyn := 'html';
  editor.Highlighter := HTMSyn;
  resetSyn();
end;

procedure TForm1.MenuItem24Click(Sender: TObject);
begin
  tmpSyn := 'xml';
  CurSyn := 'xml';
  editor.Highlighter := XMLSyn;
  resetSyn();
end;

procedure TForm1.MenuItem25Click(Sender: TObject);
begin
  CurSyn := 'none';
  tmpSyn := 'none';
  editor.Highlighter := NoSyn;
  resetSyn();
end;

procedure TForm1.MenuItem27Click(Sender: TObject);
begin
  Form2.form1caption.Caption := Form1.Caption;
  Form2.ShowModal;
end;

procedure TForm1.MenuItem29Click(Sender: TObject);
begin
  UndoMenuClick(Sender);
end;

procedure TForm1.MenuItem2Click(Sender: TObject);
begin
  ReplaceDialog1.Execute;
end;

procedure TForm1.diLNClick(Sender: TObject);
begin
  if (form4.diLN.Checked = False) then
    form4.diLN.Checked := True
  else
    form4.diLN.Checked := False;
  Editor.Gutter.Visible := form4.diLN.Checked;
end;

procedure TForm1.MenuItem31Click(Sender: TObject);
begin
  RedoMenuClick(Sender);
end;

procedure TForm1.MenuItem32Click(Sender: TObject);
begin
  tmpSyn := 'py';
  CurSyn := 'py';
  editor.Highlighter := PYSyn;
  resetSyn();
end;

procedure TForm1.MenuItem33Click(Sender: TObject);
begin
  Form4.ShowModal;
end;

procedure TForm1.MenuItem35Click(Sender: TObject);
begin
  Editor.Lines.Add(DateToStr(Date));
end;

procedure TForm1.MenuItem36Click(Sender: TObject);
begin
  Editor.Lines.Add(TimeToStr(Time));
end;

procedure TForm1.MenuItem37Click(Sender: TObject);
begin
  Editor.Lines.Add(DateToStr(Date));
  Editor.Lines.Add(TimeToStr(Time));
end;

procedure TForm1.MenuItem39Click(Sender: TObject);
begin
  MenuItem35Click(Sender);
end;

procedure TForm1.MenuItem40Click(Sender: TObject);
begin
  MenuItem36Click(Sender);
end;

procedure TForm1.MenuItem41Click(Sender: TObject);
begin
  MenuItem37Click(Sender);
end;

procedure TForm1.MenuItem43Click(Sender: TObject);
begin

end;

procedure TForm1.MenuItem44Click(Sender: TObject);
begin

end;

procedure TForm1.MenuItem45Click(Sender: TObject);
begin
  Editor.Undo;
end;

procedure TForm1.MenuItem46Click(Sender: TObject);
begin
  Editor.SelectAll;
end;

procedure TForm1.MenuItem47Click(Sender: TObject);
begin
  Editor.CutToClipboard;
end;

procedure TForm1.MenuItem48Click(Sender: TObject);
begin
  Editor.CopyToClipboard;
end;

procedure TForm1.MenuItem49Click(Sender: TObject);
begin
  Editor.PasteFromClipboard;
end;

procedure TForm1.MenuItem4Click(Sender: TObject);
begin
  CutMenuClick(Sender);
end;

procedure TForm1.MenuItem50Click(Sender: TObject);
begin
  Editor.Redo;
end;

procedure TForm1.MenuItem52Click(Sender: TObject);
begin
  FindDialog1.Execute;
end;

procedure TForm1.MenuItem53Click(Sender: TObject);
begin
  ReplaceDialog1.Execute;
end;

procedure TForm1.MenuItem54Click(Sender: TObject);
begin
  Form5.ShowModal;
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
    if (form2.keepCh.Checked = True) then
    begin

    end
    else
      Form1.Caption := editableFile;

  end;
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
      Beep;
  end;
end;

procedure TForm1.ReplaceDialog1Replace(Sender: TObject);
begin
  FindDialog1.Options := ReplaceDialog1.Options;
  FindDialog1.FindText := ReplaceDialog1.FindText;
  with Sender as TReplaceDialog do
    while True do
    begin
      if Editor.SelText <> FindText then
        FindDialog1Find(Sender);
      if Length(Editor.SelText) = 0 then
        Break;
      Editor.SelText := ReplaceText;
      if not (frReplaceAll in Options) then
        Break;
    end;
end;

procedure TForm1.toolbarColorClose(Sender: TObject);
begin
  Form1.ToolBar1.Color := toolbarColor.Color;
end;

procedure TForm1.ToolButton20Click(Sender: TObject);
begin
  MenuItem33Click(Sender);
end;

procedure TForm1.ToolButton21Click(Sender: TObject);
begin
  MenuItem27Click(Sender);
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
  if (form4.tbCheck.Checked = False) then
    form4.tbCheck.Checked := True
  else
    form4.tbCheck.Checked := False;
  ToolBar1.Visible := form4.tbCheck.Checked;
end;

procedure TForm1.NewMenuItemClick(Sender: TObject);
var
  canNew: boolean;
begin
  if isFileEditing = True then
  begin
    Form6.ShowModal;
    if (exitType = 0) and (exitWithBtn = True) then
    begin
      if (editableFile = '') then
      begin
        SaveDialog.Execute;
      end
      else
      begin
        Editor.Lines.SaveToFile(editableFile);
        Form1.Caption := 'Editing ' + editableFile;
      end;
      canNew := True;
    end
    else if (exitType = 0) and (exitWithBtn = False) then
    begin
      canNew := False;
      Form6.Close();
    end
    else if exitType = 1 then
    begin
      Form6.Close();
      canNew := True;
    end
    else if exitType = 2 then
    begin
      canNew := False;
      Form6.Close();
    end;
  end
  else
    canNew := True;
  if (canNew = True) then
  begin
    Editor.Lines.Clear;
    editableFile := '';
    isFileEditing := False;
    if (form2.keepCh.Checked = True) then
    begin

    end
    else
    begin
      if (editableFile <> '') then
      begin
        Form1.Caption := editableFile;
      end
      else
      begin
        Form1.Caption := 'New file';
      end;
    end;
    resetEtx();
    StatusBar1.Panels.Items[0].Text := 'Length: ' + IntToStr(Length(Editor.Text));
    StatusBar1.Panels.Items[0].Width := Length(StatusBar1.Panels.Items[0].Text) * 8;
    StatusBar1.Panels.Items[1].Text := 'Lines: ' + IntToStr(editor.Lines.Count);
    StatusBar1.Panels.Items[1].Width := Length(StatusBar1.Panels.Items[1].Text) * 8;
  end;
  exitType := 3;
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
      StatusBar1.Panels.Items[0].Text := 'Length: ' + IntToStr(Length(Editor.Text));
      StatusBar1.Panels.Items[0].Width := Length(StatusBar1.Panels.Items[0].Text) * 8;
      StatusBar1.Panels.Items[1].Text := 'Lines: ' + IntToStr(editor.Lines.Count);
      StatusBar1.Panels.Items[1].Width := Length(StatusBar1.Panels.Items[1].Text) * 8;
      if (form2.keepCh.Checked = True) then
      begin

      end
      else
        Form1.Caption := 'Editing ' + editableFile;
      resetEtx();

    end
    else
    begin
      OpenDialog.FileName := '';
      Application.MessageBox('This file cannot be opened because it does not exist.',
        'Fletore', 16);
    end;
  end;
  StatusBar1.Panels.Items[2].Text :=
    IntToStr(Editor.CaretX) + ', ' + IntToStr(Editor.CaretY);
  StatusBar1.Panels.Items[2].Width := Length(StatusBar1.Panels[2].Text) + 56;

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
    if (form2.keepCh.Checked = True) then
    begin

    end
    else
      Form1.Caption := 'Editing ' + editableFile;

  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Editor.Lines.Add(ExtractFilePath('fletore-n.conf'));
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

procedure TForm1.EditorClick(Sender: TObject);
begin
  StatusBar1.Panels.Items[2].Text :=
    IntToStr(Editor.CaretX) + ', ' + IntToStr(Editor.CaretY);
  StatusBar1.Panels.Items[2].Width := Length(StatusBar1.Panels[2].Text) + 56;

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

procedure TForm1.EditorReplaceText(Sender: TObject; const ASearch, AReplace: string;
  Line, Column: integer; var ReplaceAction: TSynReplaceAction);
begin
  if Messagedlg('Replace this occurence?', mtInformation, [mbOK, mbCancel],
    0) = mrOk then
    ReplaceAction := raReplace
  else
    ReplaceAction := raSkip;
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
      Beep;
  end;
end;

procedure TForm1.fontColorClose(Sender: TObject);
begin
  Editor.Font.Color := fontColor.Color;
end;


procedure TForm1.FontDialogClose(Sender: TObject);
begin
  Editor.Font := FontDialog.Font;
  Editor.Font.Color := fontColor.Color;
end;

procedure TForm1.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  SaveCfg();
end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: boolean);
begin
  if (isFileEditing = True) then
  begin
    Form6.ShowModal;
    if (exitType = 0) and (exitWithBtn = True) then
    begin
      if (editableFile = '') then
      begin
        SaveDialog.Execute;
      end
      else
      begin
        Editor.Lines.SaveToFile(editableFile);
        Form1.Caption := 'Editing ' + editableFile;
      end;
    end
    else if (exitType = 0) and (exitWithBtn = False) then
    begin
      CanClose := False;
      Form6.Close();
    end
    else if exitType = 1 then
    begin
      Form6.Close();
    end
    else if exitType = 2 then
    begin
      CanClose := False;
      Form6.Close();
    end;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin


  editableFile := '';
  curSyn := 'none';
  tmpSyn := 'none';

  StatusBar1.Panels.Items[0].Text := 'Length: ' + IntToStr(Length(Editor.Text));
  StatusBar1.Panels.Items[0].Width := Length(StatusBar1.Panels.Items[0].Text) * 8;

  StatusBar1.Panels.Items[1].Text := 'Lines: ' + IntToStr(editor.Lines.Count);
  StatusBar1.Panels.Items[1].Width := Length(StatusBar1.Panels.Items[1].Text) * 8;


  isFileEditing := False;
end;

procedure TForm1.FormDropFiles(Sender: TObject; const FileNames: array of string);
var
  i: integer;
begin
  for i := Low(FileNames) to High(FileNames) do
    editableFile := FileNames[i];
  isFileEditing := False;
  Editor.Lines.LoadFromFile(FileNames[i]);
  if (form2.keepCh.Checked = True) then
  begin

  end
  else
    Form1.Caption := 'Editing ' + editableFile;
  StatusBar1.Panels.Items[0].Text := 'Length: ' + IntToStr(Length(Editor.Text));
  StatusBar1.Panels.Items[0].Width := Length(StatusBar1.Panels.Items[0].Text) * 8;

  StatusBar1.Panels.Items[1].Text := 'Lines: ' + IntToStr(editor.Lines.Count);
  StatusBar1.Panels.Items[1].Width := Length(StatusBar1.Panels.Items[1].Text) * 8;

  StatusBar1.Panels.Items[2].Text :=
    IntToStr(Editor.CaretX) + ', ' + IntToStr(Editor.CaretY);
  StatusBar1.Panels.Items[2].Width := Length(StatusBar1.Panels[2].Text) + 56;

  resetEtx();
end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
begin
  StatusBar1.Panels.Items[2].Text :=
    IntToStr(Editor.CaretX) + ', ' + IntToStr(Editor.CaretY);
  StatusBar1.Panels.Items[2].Width := Length(StatusBar1.Panels[2].Text) + 56;
end;

procedure TForm1.FormKeyPress(Sender: TObject; var Key: char);
begin
  StatusBar1.Panels.Items[2].Text :=
    IntToStr(Editor.CaretX) + ', ' + IntToStr(Editor.CaretY);
  StatusBar1.Panels.Items[2].Width := Length(StatusBar1.Panels[2].Text) + 56;

end;

procedure TForm1.FormKeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
begin
  StatusBar1.Panels.Items[2].Text :=
    IntToStr(Editor.CaretX) + ', ' + IntToStr(Editor.CaretY);
  StatusBar1.Panels.Items[2].Width := Length(StatusBar1.Panels[2].Text) + 56;

end;



procedure TForm1.AboutSubmenuClick(Sender: TObject);
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

procedure TForm1.BitBtn9Click(Sender: TObject);
begin
  MenuItem2Click(Sender);
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  configFileLocation := ExtractFilePath(Application.ExeName) + 'fletore-n.conf';
  if paramcount = 1 then
  begin
    editableFile := ParamStr(1);
    Editor.Lines.LoadFromFile(ParamStr(1));
    Form1.Caption := 'Editing ' + editableFile;
    isFileEditing := False;
    StatusBar1.Panels.Items[0].Text := 'Length: ' + IntToStr(Length(Editor.Text));
    StatusBar1.Panels.Items[0].Width := Length(StatusBar1.Panels.Items[0].Text) * 10;
    StatusBar1.Panels.Items[1].Text := 'Lines: ' + IntToStr(editor.Lines.Count);
    StatusBar1.Panels.Items[1].Width := Length(StatusBar1.Panels.Items[1].Text) * 10;
    resetEtx();
  end
  else
    editableFile := '';

  loadCfg();
  Sync();

end;

end.
