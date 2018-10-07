unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ComCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    ProgressBar1: TProgressBar;
    TrackBar1: TTrackBar;
    procedure TrackBar1Change(Sender: TObject);
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

procedure TForm1.TrackBar1Change(Sender: TObject);
begin
  Caption:= inttostr(TrackBar1.Position);
  TrackBar1.SelEnd:=TrackBar1.Position;
end;

end.

