unit Unit3;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls, LCLIntf;

type

  { TForm3 }

  TForm3 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: char);
    procedure Image1Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
  private

  public

  end;

var
  Form3: TForm3;

implementation

{$R *.lfm}

{ TForm3 }

procedure TForm3.Image1Click(Sender: TObject);
begin

end;

procedure TForm3.Label1Click(Sender: TObject);
begin

end;

procedure TForm3.Button1Click(Sender: TObject);
begin
  OpenURL('https://www.gnu.org/licenses/old-licenses/gpl-2.0.en.html');
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
  Close();
end;

procedure TForm3.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState
  );
begin
  If (key=27) then close();
end;

procedure TForm3.FormKeyPress(Sender: TObject; var Key: char);
begin

end;


procedure TForm3.Label2Click(Sender: TObject);
begin
  OpenURL(Label2.Caption);
end;

end.

