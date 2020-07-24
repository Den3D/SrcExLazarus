unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs,
  IniFiles;

type

  { TForm1 }

  TForm1 = class(TForm)
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
var
  inif: TIniFile;
  x,y, w, h : Integer;
  str : String;
  r,g,b : Integer;
begin
  inif := TIniFile.Create('conf.ini');
  x := inif.ReadInteger('Position', 'X', 0);
  y := inif.ReadInteger('Position', 'Y', 0);
  w := inif.ReadInteger('Size', 'W', 0);
  h := inif.ReadInteger('Size', 'H', 0);
  r := inif.ReadInteger('Color', 'R', 0);
  g := inif.ReadInteger('Color', 'G', 0);
  b := inif.ReadInteger('Color', 'B', 0);

  Caption := inif.ReadString('Form', 'title','');


  Form1.Color := RGBToColor(r, g, b);

  Form1.Left:=x;
  Form1.Top:=y;
  Form1.Width:=w;
  Form1.Height:=h;
end;

end.

