program Project1;

uses
  Forms,
  Unit1 in '..\Прикладная программа\Unit1.pas' {Form1},
  Unit2 in '..\Прикладная программа\Unit2.pas' {AboutBox};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TAboutBox1, AboutBox1);
  Application.Run;
end.
