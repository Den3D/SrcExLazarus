unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button10: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Memo1: TMemo;
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation
var
  i, InsI : Integer ;
{$R *.lfm}

{ TForm1 }

procedure TForm1.Memo1Change(Sender: TObject);
begin

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Memo1.Lines[i] := IntToStr(i+1) + ' строка';
  Caption:= Memo1.Lines[i];
  inc(i);
end;

procedure TForm1.Button10Click(Sender: TObject);
var
  i : Integer;
begin
  i := Memo1.Lines.IndexOf('qqqq');
  Caption:= inttostr(i);
end;

procedure TForm1.Button11Click(Sender: TObject);
begin

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Memo1.Lines.Add('строка');
  inc(i);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Memo1.Lines.Insert( StrToInt(Edit1.Text), 'qqqq');
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Memo1.Clear;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  Memo1.Lines.Delete( StrToInt(Edit2.Text));
end;

procedure TForm1.Button6Click(Sender: TObject);
var
 x : Integer;
begin
 x :=  Memo1.Lines.Count;
 Caption:= IntToStr(x);
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  Memo1.Lines.SaveToFile('y:\1.txt');
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
    Memo1.Lines.LoadFromFile('y:\1.txt');
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
  Memo1.Lines.Move(1,3);
end;

end.

