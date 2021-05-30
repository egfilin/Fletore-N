unit Unit4;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Buttons, StdCtrls,
  ComCtrls, UITypes;

type

  { TForm4 }

  TForm4 = class(TForm)
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn15: TBitBtn;
    BitBtn16: TBitBtn;
    BitBtn18: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    ComboBox1: TComboBox;
    ComboBox3: TComboBox;
    ComboBox2: TComboBox;
    diln: TCheckBox;
    editorsBorder: TCheckBox;
    enlargeGutter: TCheckBox;
    gutterSeparator: TCheckBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    PageControl1: TPageControl;
    rstSettings: TTaskDialog;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    tbcheck: TCheckBox;
    procedure BitBtn18Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure CheckBox1Change(Sender: TObject);
    procedure CheckBox2Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure enlargeGutterChange(Sender: TObject);
    procedure gutterSeparatorChange(Sender: TObject);
    procedure editorsBorderChange(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tbcheckChange(Sender: TObject);
    procedure dilnChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
  private

  public

  end;

var
  Form4: TForm4;

implementation

uses Unit1;

{$R *.lfm}

{ TForm4 }


procedure TForm4.CheckBox1Change(Sender: TObject);
begin
  Form1.StatusBar1.Visible := CheckBox1.Checked;
end;

procedure TForm4.CheckBox2Change(Sender: TObject);
begin
  Form1.FileSubmenu.Visible := CheckBox2.Checked;
  Form1.SettingsSubmenu.Visible := CheckBox2.Checked;
  Form1.MenuItem11.Visible := CheckBox2.Checked;
  Form1.AboutSubmenu.Visible := CheckBox2.Checked;
end;


procedure TForm4.ComboBox2Change(Sender: TObject);
begin
  case ComboBox2.Caption of
    'Top':
    begin
      Form1.StatusBar1.Align := alTop;
      Form1.StatusBar1.Anchors := [akTop, akLeft, akRight];
      Form1.StatusBar1.Height := 23;
    end;
    'Bottom':
    begin
      Form1.StatusBar1.Align := alBottom;
      Form1.StatusBar1.Anchors := [akBottom, akLeft, akRight];
      Form1.StatusBar1.Height := 23;
    end;
  end;
end;

procedure TForm4.ComboBox3Change(Sender: TObject);
begin
  case ComboBox3.Caption of
    'Top':
    begin
      Form1.ToolBar1.Align := alTop;
      Form1.ToolBar1.Anchors := [akTop, akLeft, akRight];
      Form1.ToolBar1.Height := 29;
    end;
    'Bottom':
    begin
      Form1.ToolBar1.Align := alBottom;
      Form1.ToolBar1.Anchors := [akBottom, akLeft, akRight];
      Form1.ToolBar1.Height := 29;
    end;
  end;
end;

procedure TForm4.enlargeGutterChange(Sender: TObject);
begin
  Form1.Editor.Gutter.Parts[0].Visible := enlargeGutter.Checked;
end;

procedure TForm4.gutterSeparatorChange(Sender: TObject);
begin
  Form1.Editor.Gutter.Parts[3].Visible := gutterSeparator.Checked;
end;

procedure TForm4.editorsBorderChange(Sender: TObject);
begin
  if (editorsBorder.Checked = True) then
  begin
    Form1.Editor.BorderStyle := bsSingle;
  end
  else
  begin
    Form1.Editor.BorderStyle := bsNone;
  end;
end;

procedure TForm4.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.Caption of
    'Auto both': Form1.Editor.ScrollBars := ssAutoBoth;
    'Auto horizontal': Form1.Editor.ScrollBars := ssAutoHorizontal;
    'Auto vertical': Form1.Editor.ScrollBars := ssAutoVertical;
    'Both': Form1.Editor.ScrollBars := ssBoth;
    'Horizontal': Form1.Editor.ScrollBars := ssHorizontal;
    'None': Form1.Editor.ScrollBars := ssNone;
    'Vertical': Form1.Editor.ScrollBars := ssVertical;
  end;
end;

procedure TForm4.FormShow(Sender: TObject);
begin
  Form1.Sync();
  case Form1.Editor.ScrollBars of
    ssAutoBoth: ComboBox1.Caption := 'Auto both';
    ssAutoHorizontal: ComboBox1.Caption := 'Auto horizontal';
    ssAutoVertical: ComboBox1.Caption := 'Auto vertical';
    ssBoth: ComboBox1.Caption := 'Both';
    ssHorizontal: ComboBox1.Caption := 'Horizontal';
    ssNone: ComboBox1.Caption := 'None';
    ssVertical: ComboBox1.Caption := 'Vertical';
  end;
end;

procedure TForm4.tbcheckChange(Sender: TObject);
begin
  Form1.ToolBar1.Visible := tbcheck.Checked;
end;

procedure TForm4.dilnChange(Sender: TObject);
begin
  Form1.Editor.Gutter.Visible := diln.Checked;
end;

procedure TForm4.FormKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
begin
  if (key = 27) then
    Close();
end;

procedure TForm4.BitBtn1Click(Sender: TObject);
begin
  Form1.FontDialog.Execute;
end;

procedure TForm4.BitBtn18Click(Sender: TObject);
begin
  form1.toolbarColor.Execute;
end;

procedure TForm4.BitBtn2Click(Sender: TObject);
begin
  rstSettings.Execute();
  if rstSettings.ModalResult = mrYes then
  begin
    Form1.Close();
    DeleteFile(configFileLocation);
  end;
end;

procedure TForm4.BitBtn4Click(Sender: TObject);
begin
  Form1.fontColor.Execute;
end;

procedure TForm4.BitBtn5Click(Sender: TObject);
begin
  Form1.gutterColor.Execute;
end;

procedure TForm4.BitBtn6Click(Sender: TObject);
begin
  Form1.ColorDialog.Execute;
end;

end.
