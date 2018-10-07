unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    ButOK: TButton;
    Label1: TLabel;
    procedure ButOKClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
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

procedure TForm1.Button1Click(Sender: TObject);
begin
  close;
end;

procedure TForm1.ButOKClick(Sender: TObject);
begin
  Label1.Caption:='Привет МИР!!!';
  ButOK.Width:=ButOK.Width+5;
end;

end.

