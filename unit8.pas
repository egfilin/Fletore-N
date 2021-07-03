unit Unit8;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Buttons, StdCtrls;

type

  { TForm8 }

  TForm8 = class(TForm)
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn16: TBitBtn;
    BitBtn18: TBitBtn;
    Label1: TLabel;
    Light: TRadioButton;
    Dark: TRadioButton;
    Custom: TRadioButton;
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure CustomChange(Sender: TObject);
  private

  public

  end;

var
  Form8: TForm8;

implementation

uses unit1;

{$R *.lfm}

{ TForm8 }

procedure TForm8.BitBtn18Click(Sender: TObject);
begin
   Form1.toolbarColor.Execute;
end;

procedure TForm8.BitBtn11Click(Sender: TObject);
begin
   Form1.ColorDialog.Execute;
end;

procedure TForm8.BitBtn12Click(Sender: TObject);
begin
  Form1.gutterColor.Execute;
end;

procedure TForm8.BitBtn16Click(Sender: TObject);
begin
  Form1.fontColor.Execute;
end;

procedure TForm8.CustomChange(Sender: TObject);
begin
   BitBtn11.Enabled := Custom.Checked;
   BitBtn12.Enabled := Custom.Checked;
   BitBtn16.Enabled := Custom.Checked;
   BitBtn18.Enabled := Custom.Checked;
   theme := 'custom';
end;

end.

