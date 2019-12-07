unit uform3;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, uframe1;

type

  { TForm3 }

  TForm3 = class(TForm)
    Frame1_1: TFrame1;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private

  public

  end;

var
  Form3: TForm3;

implementation

{$R *.lfm}

{ TForm3 }

procedure TForm3.Button3Click(Sender: TObject);
begin
  Frame1_1.Memo1.Lines.SaveToFile('3.txt');
end;

procedure TForm3.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

end.

