unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  CheckLst;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckListBox1: TCheckListBox;
    Memo1: TMemo;
    RadioButton1: TRadioButton;
    ScrollBox1: TScrollBox;
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
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

procedure TForm1.Button13Click(Sender: TObject);
begin
  Form1.CheckBox1.Checked:=  not Form1.CheckBox1.Checked;
end;

procedure TForm1.Button14Click(Sender: TObject);
var
   i : integer;
begin

  Memo1.Clear;
  for i:=0 to CheckListBox1.Items.Count-1 do
  if  CheckListBox1.Checked[i] = true  then
   memo1.Lines.Add(CheckListBox1.Items[i]) ;
end;

procedure TForm1.Button15Click(Sender: TObject);
var
   i : integer;
begin

  Memo1.Clear;
  for i:=0 to CheckListBox1.Items.Count-1 do
  if  CheckListBox1.Selected[i] = true  then
   memo1.Lines.Add(CheckListBox1.Items[i]) ;
end;

end.

