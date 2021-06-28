unit Unit3;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  Buttons, ComCtrls, lclintf, Types;

type

  { TForm3 }

  TForm3 = class(TForm)
    BitBtn1: TBitBtn;
    Image1: TImage;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    procedure Button2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure Label1Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure Label6Click(Sender: TObject);
    procedure Label8Click(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure TabSheet1ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure TabSheet2ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
  private

  public

  end;

var
  Form3: TForm3;

implementation

{$R *.lfm}

{ TForm3 }


procedure TForm3.Button2Click(Sender: TObject);
begin
  Close();
end;

procedure TForm3.FormKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
begin
  if (key = 27) then
    Close();
end;

procedure TForm3.Label1Click(Sender: TObject);
begin

end;

procedure TForm3.Label2Click(Sender: TObject);
begin
  OpenURL('https://github.com/egfilin/Fletore-N');
end;

procedure TForm3.Label3Click(Sender: TObject);
begin

end;

procedure TForm3.Label4Click(Sender: TObject);
begin

end;

procedure TForm3.Label5Click(Sender: TObject);
begin
  OpenURL('https://github.com/KATAR7');
end;
procedure TForm3.Label6Click(Sender: TObject);
begin
  OpenURL('https://github.com/egfilin');
end;
procedure TForm3.Label8Click(Sender: TObject);
begin
  OpenURL('https://tango.freedesktop.org');
end;

procedure TForm3.Memo1Change(Sender: TObject);
begin

end;

procedure TForm3.PageControl1Change(Sender: TObject);
begin

end;

procedure TForm3.TabSheet1ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin

end;

procedure TForm3.TabSheet2ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin

end;


end.

