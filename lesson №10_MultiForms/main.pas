unit main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation
 uses u_f2,u_f3;

{$R *.lfm}

 { TForm1 }

 procedure TForm1.Button1Click(Sender: TObject);
 begin
   u_f2.Form2.Show;
 end;

procedure TForm1.Button2Click(Sender: TObject);
begin
   u_f3.Form3.ShowModal;
  // Form3.ShowModal;
end;

end.

