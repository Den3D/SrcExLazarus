unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtDlgs;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    ListBox1: TListBox;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
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

procedure TForm1.ListBox1Click(Sender: TObject);
begin
  Edit1.Text:= ListBox1.Items.Strings[ListBox1.ItemIndex];
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  ListBox1.Items.Add('ccccccccccc');
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  ListBox1.Items.Delete(ListBox1.ItemIndex);
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  i: Integer;
begin
  Memo1.Clear;
  ComboBox1.Clear;

  for i:=0 to ListBox1.Count-1 do
   if ListBox1.Selected[i] then  begin
      Memo1.Lines.add(ListBox1.Items.Strings[i]);
      ComboBox1.Items.add(ListBox1.Items.Strings[i]);
   end;



end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  ComboBox1.Items.Add(Edit2.Text);
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  ComboBox1.Items.Delete(ComboBox1.ItemIndex);
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  ListBox1.Items.SaveToFile('1.txt');
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  ListBox1.Items.LoadFromFile('1.txt');
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  ListBox1.Clear;;
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
  Edit2.Text:= ComboBox1.Items.Strings[ComboBox1.ItemIndex];
end;

end.

