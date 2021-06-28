unit Unit4;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Buttons, StdCtrls,
  ComCtrls, UITypes, Unit2;

type

  { TForm4 }

  TForm4 = class(TForm)
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn15: TBitBtn;
    BitBtn16: TBitBtn;
    BitBtn18: TBitBtn;
    BitBtn19: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    ComboBox3: TComboBox;
    ComboBox2: TComboBox;
    diln: TCheckBox;
    editorsBorder: TCheckBox;
    enlargeGutter: TCheckBox;
    gutterSeparator: TCheckBox;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    tbcheck: TCheckBox;
    procedure BitBtn18Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure CheckBox1Change(Sender: TObject);
    procedure CheckBox2Change(Sender: TObject);
    procedure CheckBox3Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure enlargeGutterChange(Sender: TObject);
    procedure gutterSeparatorChange(Sender: TObject);
    procedure editorsBorderChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure rstSettingsButtonClicked(Sender: TObject;
      AModalResult: TModalResult; var ACanClose: Boolean);
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
  Form1.MenuItem43.Visible := CheckBox2.Checked;
end;

procedure TForm4.CheckBox3Change(Sender: TObject);
begin
  BitBtn2.Visible := CheckBox3.Checked;
  case CheckBox3.Checked of
    True:
    begin
      BitBtn3.Visible := False;
      TabSheet1.TabVisible := False;
      TabSheet2.TabVisible := False;
      TabSheet3.TabVisible := False;
    end;
    False:
    begin
      BitBtn3.Visible := True;
      TabSheet1.TabVisible := True;
      TabSheet2.TabVisible := True;
      TabSheet3.TabVisible := True;
    end;
  end;
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


procedure TForm4.FormShow(Sender: TObject);
begin
  Form1.Sync();
end;

procedure TForm4.Label1Click(Sender: TObject);
begin

end;

procedure TForm4.PageControl1Change(Sender: TObject);
begin

end;

procedure TForm4.rstSettingsButtonClicked(Sender: TObject;
  AModalResult: TModalResult; var ACanClose: Boolean);
begin

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
  Form2.form1caption.Caption := Form1.Caption;
  Form2.ShowModal;
end;

procedure TForm4.BitBtn2Click(Sender: TObject);
begin
    Form1.Close();
    DeleteFile(configFileLocation);
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
