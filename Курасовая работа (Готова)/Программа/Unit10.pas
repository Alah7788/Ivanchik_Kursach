unit Unit10;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.Imaging.pngimage;

type
  TForm10 = class(TForm)
    ProgressBar1: TProgressBar;
    ProgressBar2: TProgressBar;
    Label1: TLabel;
    Label3: TLabel;
    Timer1: TTimer;
    Label4: TLabel;
    Image1: TImage;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

{$R *.dfm}

uses Unit2;


procedure TForm10.Timer1Timer(Sender: TObject);
begin
Progressbar1.position:= progressbar1.Position+1;
Progressbar2.position:= progressbar2.Position+1;
label4.Caption:= '???????? ????????? ?????????...' +inttostr(Progressbar1.position);
if progressbar1.Position=100 then
begin
Timer1.Enabled:=false;
Form2.show;
Form10.hide;
end;
end;

end.
