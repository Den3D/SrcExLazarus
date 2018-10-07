unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Grids,
  Buttons, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    DrawGrid1: TDrawGrid;
    Label1: TLabel;
    StringGrid1: TStringGrid;
    procedure BitBtn1Click(Sender: TObject);
    procedure DrawGrid1DrawCell(Sender: TObject; aCol, aRow: Integer;
      aRect: TRect; aState: TGridDrawState);
    procedure StringGrid1DrawCell(Sender: TObject; aCol, aRow: Integer;
      aRect: TRect; aState: TGridDrawState);
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

procedure TForm1.DrawGrid1DrawCell(Sender: TObject; aCol, aRow: Integer;
  aRect: TRect; aState: TGridDrawState);
var
  Bitmap: TBitmap;
begin
  {
  Bitmap:=TBitmap.Create;
  Bitmap.LoadFromFile('y:\Test.bmp');
  Bitmap.TransparentColor := clWhite;
  Bitmap.Transparent := True;
  DrawGrid1.Canvas.Draw(aRect.Left, aRect.Top, Bitmap);

  Bitmap.Free;
  }
end;

procedure TForm1.StringGrid1DrawCell(Sender: TObject; aCol, aRow: Integer;
  aRect: TRect; aState: TGridDrawState);
var
  Bitmap: TBitmap;
begin

  Bitmap:=TBitmap.Create;
  Bitmap.LoadFromFile('y:\Test.bmp');
  Bitmap.TransparentColor := clWhite;
  Bitmap.Transparent := True;
  StringGrid1.Canvas.Draw(0, 0, Bitmap);

  Bitmap.Free;

end;

procedure TForm1.BitBtn1Click(Sender: TObject);
var
  i, j : Integer;
begin
  for i:= 0 to StringGrid1.ColCount-1 do
    for j:= 0 to StringGrid1.RowCount-1 do
StringGrid1.Cells[i,j] :=  inttostr(i)+' '+inttostr(j);
end;

end.

