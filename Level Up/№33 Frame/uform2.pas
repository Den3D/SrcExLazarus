unit uform2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, uframe1;

type

  { TForm2 }

  TForm2 = class(TForm)
    Frame1_1: TFrame1;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private

  public

  end;

var
  Form2: TForm2;

implementation

{$R *.lfm}

{ TForm2 }

procedure TForm2.Button3Click(Sender: TObject);
begin
  Frame1_1.Memo1.Lines.SaveToFile('2.txt');
end;

procedure TForm2.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
   Frame1_1.Memo1.Clear;
end;

end.

