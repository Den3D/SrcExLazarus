unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ColorBox,
  StdCtrls;

type

  { TForm2 }

  TForm2 = class(TForm)
    Button1: TButton;
    ColorBox1: TColorBox;
    procedure Button1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form2: TForm2;

implementation
uses unit1;

{$R *.lfm}

{ TForm2 }

procedure TForm2.Button1Click(Sender: TObject);
begin
    Form1.ValueListEditor1.Cells[1,5]:=ColorToString(ColorBox1.Selected);
   Form2.close;
end;

end.

