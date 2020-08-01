unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Grids, Menus,
  Fpjson, jsonparser, FileUtil;

type

  { TForm1 }

  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    StringGrid1: TStringGrid;
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  JRoot: TJSONData;
  jDocument: TJSONObject;
  jObjValues: TJSONObject;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormClose(Sender: TObject; var CloseAction: TCloseAction);
var
  jObjForms: TJSONObject;
  jObjPos: TJSONObject;
  jObjSize: TJSONObject;

  strList: TStringList;
begin

  jObjPos:= TJSONObject.Create;
  jObjPos.Add('X', Left);
  jObjPos.Add('Y', Top);

  jObjSize:= TJSONObject.Create;
  jObjSize.Add('W', Width);
  jObjSize.Add('H', Height);

  jObjForms:= TJSONObject.Create;
  jObjForms.Add('Title', UTF8Decode('Уроки TheMrDen3D'));
  jObjForms.Add('Position', jObjPos);
  jObjForms.Add('Size', jObjSize);

  jDocument:= TJSONObject.Create;
  jDocument.Add('Forms', jObjForms);
  jDocument.Add('Values', jObjValues);


  strList := TStringList.Create;
  strList.Text:= jDocument.FormatJSON();
  strList.SaveToFile('conf.json');
  strList.Free;

  jDocument.Free;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  jForms, jPos, jSize: TJSONData;
  str : String;
begin
  JRoot := GetJSON(ReadFileToString('conf.json'));
  jForms := JRoot.FindPath('Forms');

  str :=  jForms.FindPath('Title').AsString;
  jPos := jForms.FindPath('Position');
  jSize := jForms.FindPath('Size');

  Caption:= str;
  Left:= jPos.FindPath('X').AsInteger;
  Top:=  jPos.FindPath('Y').AsInteger;
  Width:=  jSize.FindPath('W').AsInteger;
  Height:= jSize.FindPath('H').AsInteger;
end;

// загрузить
procedure TForm1.MenuItem1Click(Sender: TObject);
var
   jValues: TJSONData;
   count : Integer;
   ArrX : TJSONArray;
   ArrY : TJSONArray;
   i: Integer;
begin
  ArrX := TJSONArray.Create;
  ArrY := TJSONArray.Create;

  jValues:= JRoot.FindPath('Values');
  count := jValues.FindPath('Count').AsInteger;
  ArrX :=  TJSONArray(jValues.FindPath('X'));
  ArrY :=  TJSONArray(jValues.FindPath('Y'));

  StringGrid1.ColCount:= count +1 ;

  for i:=0 to count-1 do
  begin
     StringGrid1.Cells[i+1,0] := IntToStr(ArrX.Integers[i]);
     StringGrid1.Cells[i+1,1] := IntToStr(ArrY.Integers[i]);
  end;


end;

// сохранить
procedure TForm1.MenuItem2Click(Sender: TObject);
var
   ArrObjX : TJSONArray;
   ArrObjY : TJSONArray;
   i : Integer;
begin
  jObjValues:= TJSONObject.Create;
  ArrObjX:= TJSONArray.Create;
  ArrObjY:= TJSONArray.Create;


  for i:=0 to StringGrid1.ColCount-2 do
  begin
     ArrObjX.Add( StrToInt(StringGrid1.Cells[i+1,0]));
     ArrObjY.Add( StrToInt(StringGrid1.Cells[i+1,1]));
  end;

  jObjValues.Add('Count', StringGrid1.ColCount - 1);
  jObjValues.Add('X', ArrObjX);
  jObjValues.Add('Y', ArrObjY);


end;

end.

