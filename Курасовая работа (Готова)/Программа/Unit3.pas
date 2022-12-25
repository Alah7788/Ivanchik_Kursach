unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.OleCtrls, SHDocVw, Vcl.StdCtrls,
  Vcl.Menus;

type
  TForm3 = class(TForm)
    WebBrowser1: TWebBrowser;
    Button1: TButton;
    MainMenu1: TMainMenu;
    N1: TMenuItem;

    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses Unit2;


procedure TForm3.Button1Click(Sender: TObject);
begin
Form3.Close;
Form2.Show;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
WindowState := wsMaximized;
WebBrowser1.Navigate(ExtractFilePath(paramStr(0))+'11111.htm');
end;

procedure TForm3.N1Click(Sender: TObject);
begin
Form2.Show;
Form3.Close;
end;

end.
