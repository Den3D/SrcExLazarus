unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs,
  Fpjson, jsonparser, FileUtil;

type

  { TForm1 }

  TForm1 = class(TForm)
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  JRoot: TJSONData;
  jDocument: TJSONObject;

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

end.

