unit Unit7;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm7 }

  TForm7 = class(TForm)
    Button1: TButton;
    CheckBox1: TCheckBox;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure CheckBox1Change(Sender: TObject);
  private

  public

  end;

var
  Form7: TForm7;
  doNotShowWinDialog: boolean;

implementation

{$R *.lfm}

{ TForm7 }


procedure TForm7.CheckBox1Change(Sender: TObject);
begin
  if CheckBox1.Checked =  True  then
  begin
    doNotShowWinDialog := True;
  end
 else if CheckBox1.Checked =  False  then
  begin
    doNotShowWinDialog := False;
  end;
end;

procedure TForm7.Button1Click(Sender: TObject);
begin
  Close();
end;

end.

