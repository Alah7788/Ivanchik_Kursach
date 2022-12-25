unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm4 = class(TForm)
    Timer1: TTimer;
    Memo1: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  Buf,WinImg:TBitmap;
  Path:String;
  map:array[0..3,0..3] of integer;
  Img:array[0..11] of TBitmap;
  Score,BestScore:integer;


implementation

{$R *.dfm}



procedure TForm4.FormCreate(Sender: TObject);
var i,j:integer;
begin
Path:=ExtractfileDir(Application.ExeName);
buf:=Tbitmap.Create;
buf.Width:=1024;
buf.Height:=2048;

WinImg:=TBitmap.Create;
WinImg.Transparent:=true;
WinImg.LoadFromFile('D:\1\win.bmp');

for i:=0  to 11 do
  begin
    img[i]:=TBitmap.Create;
    Img[i].LoadFromFile('D:\1\'+inttostr(i)+'.bmp');
  end;

  for i := 0 to 3 do
  for j := 0 to 3 do
  map[i,j]:=0;
  randomize;
  Score:=0;

  memo1.Lines.Clear;
  memo1.Lines.LoadFromFile('D:\1\best.txt');
  BestScore:=strtoint(memo1.Lines.Strings[0]);
end;

procedure TForm4.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var i,j,n:integer;
begin
n:=0;
if Key=VK_DOWN then
begin

   for i := 0 to 3 do
   for j := 0 to 2 do
   begin
  if (map[i,j]>0) and (map[i,j+1]=0) then
  begin
    map[i,j+1]:=Map[i,j];
    map[i,j]:=0;
  end;
  if (map[i,j]>0) and (map[i,j+1]=map[i,j]) then
  begin
  Score:=Score+map[i,j];
  map[i,j+1]:=Map[i,j]*2;
  map[i,j]:=0;
  end;
end;
while (n=0) do

     begin
     i:=random(8);
     j:=random(8);
      if map[i,j]=0 then
      begin
      map[i,j]:=2;
      n:=1;
      end;
     end;
end;
//////////////////////////////////////////////////////
if key=VK_UP then
begin

   for i := 0 to 3 do
   begin
   j:=3;
      while (j>0) do

      begin
         if (map[i,j]>0) and (map[i,j-1]=0) then
         begin
         map[i,j-1]:=Map[i,j];
         map[i,j]:=0;
         end;
         if (map[i,j]>0) and (map[i,j-1]=map[i,j]) then
         begin
         Score:=Score+map[i,j];
         map[i,j-1]:=Map[i,j]*2;
         map[i,j]:=0;
         end;
         j:=j-1;
   end;
 end;
  while (n=0) do
     begin
     i:=random(4);
     j:=random(4);
      if map[i,j]=0 then
      begin
      map[i,j]:=2;
      n:=1;
      end;
     end;
  end;

/////////////////////////////////////////////
if key=VK_Left then
begin

   for j := 0 to 3 do
   begin
   i:=3;
      while (i>0) do

      begin
         if (map[i,j]>0) and (map[i-1,j]=0) then
         begin
         map[i-1,j]:=Map[i,j];
         map[i,j]:=0;
         end;
         if (map[i,j]>0) and (map[i-1,j]=map[i,j]) then
         begin
         Score:=Score+map[i,j];
         map[i-1,j]:=Map[i,j]*2;
         map[i,j]:=0;
         end;
         i:=i-1;
   end;
 end;
  while (n=0) do
     begin
     i:=random(4);
     j:=random(4);
      if map[i,j]=0 then
      begin
      map[i,j]:=2;
      n:=1;
      end;
     end;
  end;
  /////////////////////////////////////////
 if key=VK_Right then
begin

   for i := 0 to 3 do
   for j := 0 to 2 do
   begin




         if (map[i,j]>0) and (map[i+1,j]=0) then
         begin
         map[i+1,j]:=Map[i,j];
         map[i,j]:=0;
         end;
         if (map[i,j]>0) and (map[i+1,j]=map[i,j]) then
         begin
         Score:=Score+map[i,j];
         map[i+1,j]:=Map[i,j]*2;
         map[i,j]:=0;
         end;


 end;
  while (n=0) do
     begin
     i:=random(4);
     j:=random(4);
      if map[i,j]=0 then
      begin
      map[i,j]:=2;
      n:=1;
      end;
     end;
  end;
end;


procedure TForm4.Timer1Timer(Sender: TObject);
var i,j:integer;
n:boolean;
begin
 form4.Caption:='-2048- / ����='+inttostr(Score)+'������ ���������='+inttostr(BestScore);
 for i := 0 to 3 do
 for j := 0 to 3 do
 begin

 case map[i,j] of
 0:buf.Canvas.Draw(i*128,j*128,IMG[0]);
 2:buf.Canvas.Draw(i*128,j*128,IMG[1]);
 4:buf.Canvas.Draw(i*128,j*128,IMG[2]);
 8:buf.Canvas.Draw(i*128,j*128,IMG[3]);
 16:buf.Canvas.Draw(i*128,j*128,IMG[4]);
 32:buf.Canvas.Draw(i*128,j*128,IMG[5]);
 64:buf.Canvas.Draw(i*128,j*128,IMG[6]);
 128:buf.Canvas.Draw(i*128,j*128,IMG[7]);
 256:buf.Canvas.Draw(i*128,j*128,IMG[8]);
 512:buf.Canvas.Draw(i*128,j*128,IMG[9]);
 1024:buf.Canvas.Draw(i*128,j*128,IMG[10]);
 2048:buf.Canvas.Draw(i*128,j*128,IMG[11]);
  end;
 end;
 n:=False;
 for i := 0 to 3 do
 for j := 0 to 3 do
   if map[i,j]=0 then n:=True;
   if n=False then
   begin
     if Score>BestScore then
     begin
       Memo1.Lines.Clear;
       Memo1.Lines.Add(inttostr(Score));
       Memo1.Lines.SaveToFile('D:\1\best.txt');
       BestScore:=Score;

     end ;
     Timer1.Enabled:=False;
     ShowMessage('�� ��������');
   end;
 form4.Canvas.Draw(0,0,Buf);

 end;




end.
