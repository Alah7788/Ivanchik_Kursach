unit Unit9;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.OleCtrls, SHDocVw, Vcl.Menus;

type
  TForm9 = class(TForm)
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
  Form9: TForm9;

implementation

{$R *.dfm}

uses Unit2;

procedure TForm9.FormCreate(Sender: TObject);
begin
WindowState := wsMaximized;
WebBrowser1.Navigate(ExtractFilePath(paramStr(0))+'4321.htm');
end;

procedure TForm9.N1Click(Sender: TObject);
begin
 Form9.Close;
 Form2.Show;
end;

end.
