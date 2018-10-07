unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ComCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Label1: TLabel;
    ScrollBar1: TScrollBar;
    procedure ScrollBar1Change(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.ScrollBar1Change(Sender: TObject);
begin
  Label1.Caption:= IntToStr(ScrollBar1.Position);
  Form1.AlphaBlendValue:=(ScrollBar1.Position);
end;

end.

