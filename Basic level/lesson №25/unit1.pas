unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ComCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    ImageList1: TImageList;
    TreeView1: TTreeView;
    TreeView2: TTreeView;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
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
var
   str : String;
   node : TTreeNode;
begin
  InputQuery('Ввод имени.','Введите заголовок элемента',str);
  if (str<>'') then
  begin

   node:=TreeView2.Items.Add(TreeView2.Selected, str);
   //if (node.Parent <> nil) then
   node.ImageIndex:=0;

  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  if TreeView2.Selected <> nil then
   TreeView2.Items.Delete(TreeView2.Selected);
end;

procedure TForm1.Button4Click(Sender: TObject);
var
   str : String;
begin
     InputQuery('Ввод имени.','Введите заголовок элемента',str);
     TreeView2.Selected.Text:= str;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  TreeView2.SaveToFile(ExtractFilePath(Application.ExeName)+'112.txt');
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
    TreeView2.LoadFromFile(ExtractFilePath(Application.ExeName)+'112.txt');
end;

procedure TForm1.Button2Click(Sender: TObject);
var
   str : String;
   node : TTreeNode;
begin
  InputQuery('Ввод имени.','Введите заголовок элемента',str);
  if (str<>'') then
  begin

   node:=TreeView2.Items.AddChild(TreeView2.Selected, str);
   //if (node.Parent <> nil) then
   node.ImageIndex:=1;

  end;

end;

end.

