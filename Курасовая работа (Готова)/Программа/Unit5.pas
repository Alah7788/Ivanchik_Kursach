unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.OleCtrls, SHDocVw, Vcl.Menus;

type
  TForm5 = class(TForm)
    WebBrowser1: TWebBrowser;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure N1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

uses Unit2;

procedure TForm5.FormCreate(Sender: TObject);
begin
WindowState := wsMaximized;
WebBrowser1.Navigate(ExtractFilePath(paramStr(0))+'1234.htm');
end;

procedure TForm5.N1Click(Sender: TObject);
begin
Form5.Close;
Form2.Show;
end;

end.
