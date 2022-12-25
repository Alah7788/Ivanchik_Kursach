unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.Imaging.pngimage,ShellAPI, Vcl.Menus;

type
  TForm2 = class(TForm)
    Image4: TImage;
    Label2: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Image3Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses DBLPIC_, Unit3, Unit6, Unit8, Unit4, Unit5, Unit9;

procedure TForm2.BitBtn1Click(Sender: TObject);
begin
Form1.Show;
end;

procedure TForm2.BitBtn3Click(Sender: TObject);
begin
Form8.Show;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
Form3.Show;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
Form5.Show;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
Form9.Show;
Form2.Hide;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
application.Terminate;
end;

procedure TForm2.Image1Click(Sender: TObject);
begin
Form4.Show;
end;

procedure TForm2.Image2Click(Sender: TObject);
begin
Form8.Show;
end;

procedure TForm2.Image3Click(Sender: TObject);
begin
Form1.Show;
end;

procedure TForm2.N1Click(Sender: TObject);
begin
Form2.Close;
end;

procedure TForm2.N3Click(Sender: TObject);
begin
ShellExecute(0,PChar('Open'),PChar(ExtractFilePath(Application.ExeName)+'Spravka.chm'),nil,nil,SW_SHOW);
end;

end.
