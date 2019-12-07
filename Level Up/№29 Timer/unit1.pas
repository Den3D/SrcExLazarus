unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    Timer1: TTimer;
    Timer2: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure Timer1StartTimer(Sender: TObject);
    procedure Timer1StopTimer(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  i : Integer;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Timer1StartTimer(Sender: TObject);
begin
  Memo1.Lines.Add('Start');
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  i := 1;
end;

procedure TForm1.Timer1StopTimer(Sender: TObject);
begin
    Memo1.Lines.Add('End');
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
   Memo1.Lines.Add('Выполнил '+IntToStr(i)+' раз');
   i := i + 1;

   if i > 15 then Timer1.Enabled := False;

end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
  Button1.Left:= Button1.Left + 5;
end;

end.

