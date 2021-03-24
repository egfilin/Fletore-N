unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm2 }

  TForm2 = class(TForm)
    bgColorBtn: TButton;
    Button1: TButton;
    ColorDialog: TColorDialog;
    FontDialog: TFontDialog;
    wwCheck: TCheckBox;
    fontBtn: TButton;
    GroupBox1: TGroupBox;
    procedure bgColorBtnClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ColorDialogClose(Sender: TObject);
    procedure fontBtnClick(Sender: TObject);
    procedure FontDialogClose(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure wwCheckChange(Sender: TObject);
  private

  public

  end;

var
  Form2: TForm2;

implementation
uses Unit1;

{$R *.lfm}

{ TForm2 }

procedure TForm2.Button1Click(Sender: TObject);
begin
  Close();
end;

procedure TForm2.ColorDialogClose(Sender: TObject);
begin
  Form1.Editor.Color:=ColorDialog.color;
end;

procedure TForm2.fontBtnClick(Sender: TObject);
begin
  FontDialog.Execute;
end;

procedure TForm2.FontDialogClose(Sender: TObject);
begin
  Form1.Editor.Font:=FontDialog.Font;
end;

procedure TForm2.bgColorBtnClick(Sender: TObject);
begin
  ColorDialog.Execute;
end;

procedure TForm2.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState
  );
begin
  If (key = 27) then Button1Click(Sender);
end;


procedure TForm2.wwCheckChange(Sender: TObject);
begin
     Form1.Editor.WordWrap:=wwCheck.Checked;
end;

end.

