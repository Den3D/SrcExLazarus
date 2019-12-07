unit uframe1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, StdCtrls, Buttons;

type

  { TFrame1 }

  TFrame1 = class(TFrame)
    BitBtn1: TBitBtn;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit1: TEdit;
    Memo1: TMemo;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private

  public

  end;

implementation

{$R *.lfm}

{ TFrame1 }

procedure TFrame1.Button1Click(Sender: TObject);
begin
  Edit1.Clear;
end;

procedure TFrame1.BitBtn1Click(Sender: TObject);
begin

end;

procedure TFrame1.Button2Click(Sender: TObject);
begin
  Memo1.Lines.Add(Edit1.Text);
end;

procedure TFrame1.Button3Click(Sender: TObject);
begin
  Memo1.Lines.SaveToFile('1.txt');
end;

end.

