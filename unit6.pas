unit Unit6;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons,
  ExtCtrls;

type

  { TForm6 }

  TForm6 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
  private

  public

  end;

var
  Form6: TForm6;
  exitType: integer; // 0 - yes, 1 - no, 2 - cancel
  exitWithBtn: boolean; // True - exited with "Yes", False - exited with close button


implementation
{$R *.lfm}

{ TForm6 }

procedure TForm6.Label1Click(Sender: TObject);
begin

end;

procedure TForm6.Button3Click(Sender: TObject);
begin
  exitType := 0;
  exitWithBtn := True;
  Close();
end;
procedure TForm6.Button2Click(Sender: TObject);
begin
  exitType := 1;
  Close();
end;
procedure TForm6.Button1Click(Sender: TObject);
begin
  exitType := 2;
  Close();
end;

procedure TForm6.Label2Click(Sender: TObject);
begin

end;

end.

