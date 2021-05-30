unit Unit5;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Spin, StdCtrls;

type

  { TForm5 }

  TForm5 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    caretX: TSpinEdit;
    caretY: TSpinEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
  private

  public

  end;

var
  Form5: TForm5;

implementation

uses Unit1;

{$R *.lfm}

{ TForm5 }

procedure TForm5.Button1Click(Sender: TObject);
begin
  Form1.Editor.CaretX := caretX.Value;
  Form1.Editor.Carety := carety.Value;
  Form1.StatusBar1.Panels.Items[2].Text :=
    IntToStr(Form1.Editor.CaretX) + ', ' + IntToStr(Form1.Editor.CaretY);
  Form1.StatusBar1.Panels.Items[2].Width :=
    Length(Form1.StatusBar1.Panels[2].Text) + 56;
  Close();
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
  caretX.Value:=Form1.Editor.CaretX;
  caretY.Value:=Form1.Editor.CaretY;
end;

procedure TForm5.FormKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
begin
  if (key = 27) then
    Close();
  if (key = 13) then
    Button1Click(Sender);
  Form1.StatusBar1.Panels.Items[2].Text :=
    IntToStr(Form1.Editor.CaretX) + ', ' + IntToStr(Form1.Editor.CaretY);
  Form1.StatusBar1.Panels.Items[2].Width := Length(Form1.StatusBar1.Panels[2].Text) + 56;
end;

end.
