unit Unit4;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Buttons, StdCtrls, UITypes;

type

  { TForm4 }

  TForm4 = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Button1: TButton;
    Button2: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    enlargeGutter: TCheckBox;
    gutterSeparator: TCheckBox;
    editorsBorder: TCheckBox;
    ComboBox1: TComboBox;
    Label1: TLabel;
    rstSettings: TTaskDialog;
    tbcheck: TCheckBox;
    diln: TCheckBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure CheckBox1Change(Sender: TObject);
    procedure CheckBox2Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure enlargeGutterChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure gutterSeparatorChange(Sender: TObject);
    procedure editorsBorderChange(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rstSettingsButtonClicked(Sender: TObject;
      AModalResult: TModalResult; var ACanClose: boolean);
    procedure tbcheckChange(Sender: TObject);
    procedure dilnChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
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

procedure TForm4.Button1Click(Sender: TObject);
begin
  Form1.ColorDialog.Execute;
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
  Form1.gutterColor.Execute;
end;

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

end;

procedure TForm4.enlargeGutterChange(Sender: TObject);
begin
  Form1.Editor.Gutter.Parts[0].Visible := enlargeGutter.Checked;
end;

procedure TForm4.FormCreate(Sender: TObject);
begin

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
end;

procedure TForm4.rstSettingsButtonClicked(Sender: TObject;
  AModalResult: TModalResult; var ACanClose: boolean);
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

procedure TForm4.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin

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

procedure TForm4.BitBtn2Click(Sender: TObject);
begin
  rstSettings.Execute();
  if rstSettings.ModalResult = mrYes then
  begin
    Form1.Close();
    DeleteFile('fletore.cfg');
  end;
end;

end.
