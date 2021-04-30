unit Unit4;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Buttons, StdCtrls;

type

  { TForm4 }

  TForm4 = class(TForm)
    BitBtn1: TBitBtn;
    Button1: TButton;
    Button2: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    ComboBox1: TComboBox;
    Label1: TLabel;
    tbcheck: TCheckBox;
    diln: TCheckBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure CheckBox1Change(Sender: TObject);
    procedure CheckBox2Change(Sender: TObject);
    procedure CheckBox3Change(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tbcheckChange(Sender: TObject);
    procedure dilnChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private

  public

  end;

var
  Form4: TForm4;

implementation
Uses Unit1;

{$R *.lfm}

{ TForm4 }

procedure TForm4.Button1Click(Sender: TObject);
begin
  Form1.ColorDialog.Execute;
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
  Form4.Close;
end;

procedure TForm4.CheckBox1Change(Sender: TObject);
begin
  Form1.StatusBar1.Visible:=CheckBox1.Checked;
end;

procedure TForm4.CheckBox2Change(Sender: TObject);
begin
  Form1.FileSubmenu.Visible:=CheckBox2.Checked;
  Form1.SettingsSubmenu.Visible:=CheckBox2.Checked;
  Form1.MenuItem11.Visible:=CheckBox2.Checked;
  Form1.AboutSubmenu.Visible:=CheckBox2.Checked;
end;

procedure TForm4.CheckBox3Change(Sender: TObject);
begin
  Form1.Editor.Visible:=CheckBox3.Checked;
end;

procedure TForm4.ComboBox1Change(Sender: TObject);
begin
  Case ComboBox1.Caption of
       'Auto both': Form1.Editor.ScrollBars:=ssAutoBoth;
       'Auto horizontal': Form1.Editor.ScrollBars:=ssAutoHorizontal;
       'Auto vertical': Form1.Editor.ScrollBars:=ssAutoVertical;
       'Both': Form1.Editor.ScrollBars:=ssBoth;
       'Horizontal': Form1.Editor.ScrollBars:=ssHorizontal;
       'None': Form1.Editor.ScrollBars:=ssNone;
       'Vertical': Form1.Editor.ScrollBars:=ssVertical;
  end;
end;

procedure TForm4.FormShow(Sender: TObject);
begin
  Form1.Sync();
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

procedure TForm4.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState
  );
begin
  If (key=27) then close();
end;

procedure TForm4.BitBtn1Click(Sender: TObject);
begin
  Form1.FontDialog.Execute;
end;

end.

