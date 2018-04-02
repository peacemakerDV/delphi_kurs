unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Math, StdCtrls, Menus, TeEngine, TeeFunci, Series,
  ExtCtrls, TeeProcs, Chart, Grids;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    StringGrid1: TStringGrid;
    Chart1: TChart;
    Series1: TLineSeries;
    TeeFunction1: TAddTeeFunction;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    G1: TMenuItem;
    i1: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Memo1: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  Form1: TForm1;

implementation
{$R *.dfm}
uses LibModule, Unit2;
{LiBModule - ������������ ������, � �������
��������� ��������� ����������}

//��������� ��������� ������ ���� "� ���������"
procedure TForm1.N4Click(Sender: TObject);
begin
 AboutBox1.Show;
end;

//��������� ���������� ������
procedure TForm1.FormCreate(Sender: TObject);
begin
 Button2.Enabled:=False; //������ "������ ������� �"
 Button3.Enabled:=False; //������ "������ ������� G",
 Button4.Enabled:=False; //������ "���������� ������� X[i]"
 N3.Enabled:=False; //����� ���� "������ ������� �"
 G1.Enabled:=False; //����� ���� "������ ������� G"
 i1.Enabled:=False; //����� ���� "��������� ������� X[i]"
end;

//��������� ��������� ������ "������ ������� �"
procedure TForm1.Button1Click(Sender: TObject);
var
   i,j :integer; //���������� ���������
begin
   N3.Enabled:=True; //������������� ������ ���� "������ ������� �"
   Button2.Enabled:=True; //������������� ������ "������ ������� �"
   matric;
   for i:= 1 to n do //������� �����
      for j:= 1 to n do //������� ��������
//����� �������� ������� � � ���� StringGrid
       StringGrid1.Cells[j-1,i-1]:=FloatToStrF(a[i,j],ffFixed,5,5);
end;

//��������� ��������� ������ "������ ������� �"
procedure TForm1.Button2Click(Sender: TObject);
var
   i: integer; //���������� ��������
begin
   G1.Enabled:=True; //������������� ������ ���� "������ ������� G"
   i1.Enabled:=True; //������������� ������ ���� "��������� ������� X[i]"
   Button3.Enabled:=True; //������������� ������ "������ ������� G",
   Button4.Enabled:=True; //������������� ������ "���������� ������� X[i]"
   vector;
   for i:= 1 to n do //������� �����
   //����� ������� ������� � � ���� Memo
   Memo1.Lines.Add(FloatToStrF(x[i],ffFixed,5,5));
end;

//��������� ��������� ������ "������ ������� G"
procedure TForm1.Button3Click(Sender: TObject);
begin
//����� ������� � ���� Edit
Edit1.text:=FloatToStrF(g,ffFixed,5,5);
end;

//��������� ��������� ������ "���������� ������� X[i]"
procedure TForm1.Button4Click(Sender: TObject);
var i: integer; //���������� ��������
begin
   for i:=1 to n do //������� ���������
    //���������� ������� ����������� X[i]
    Series1.AddXY(i,x[i],'',clRed);
end;

//��������� ��������� ������ ���� "�����"
procedure TForm1.N5Click(Sender: TObject);
begin
 Form1.Close;
end;

end.
