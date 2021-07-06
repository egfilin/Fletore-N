unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm2 }

  TForm2 = class(TForm)
    Apply: TButton;
    Reset: TButton;
    keepCh: TCheckBox;
    form1caption: TEdit;
    procedure ApplyClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: char);
    procedure ResetClick(Sender: TObject);
  private

  public

  end;

var
  Form2: TForm2;

implementation

uses unit1;

{$R *.lfm}

{ TForm2 }

procedure TForm2.ApplyClick(Sender: TObject);
begin
  Form1.Caption := form1caption.Text;
  Close();
end;

procedure TForm2.FormKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
begin
  if (key = 27) then
    Form2.Close();
  if (key = 13) then
    ApplyClick(Sender);
end;

procedure TForm2.FormKeyPress(Sender: TObject; var Key: char);
begin

end;

procedure TForm2.ResetClick(Sender: TObject);
begin
  keepCh.Checked := False;
  if (editableFile = '') then
  begin
    if (isFileEditing = False) then
    begin
      Form1.Caption := 'New file';
      form1caption.Caption := 'New file';
    end
    else
    begin
      Form1.Caption := 'New file*';
      form1caption.Caption := 'New file*';
    end;
  end
  else
  begin
    if (isFileEditing = False) then
    begin
      Form1.Caption := 'Editing' + editableFile;
      form1caption.Caption := 'Editing' + editableFile;
    end
    else
    begin
      Form1.Caption := 'Editing' + editableFile + '*';
      form1caption.Caption := 'Editing ' + editableFile + '*';
    end;
  end;
end;

end.
