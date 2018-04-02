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
{LiBModule - библиотечный модуль, в котором
находятся процедуры вычисления}

//процедура обработки пункта меню "О программе"
procedure TForm1.N4Click(Sender: TObject);
begin
 AboutBox1.Show;
end;

//процедура блокировки кнопок
procedure TForm1.FormCreate(Sender: TObject);
begin
 Button2.Enabled:=False; //кнопка "Расчет вектора Х"
 Button3.Enabled:=False; //кнопка "Расчет функции G",
 Button4.Enabled:=False; //кнопка "Построение графика X[i]"
 N3.Enabled:=False; //пункт меню "Расчет вектора Х"
 G1.Enabled:=False; //пункт меню "Расчет функции G"
 i1.Enabled:=False; //пункт меню "Пстроение графика X[i]"
end;

//процедура обработки кнопки "Расчет матрицы А"
procedure TForm1.Button1Click(Sender: TObject);
var
   i,j :integer; //объявление счетчиков
begin
   N3.Enabled:=True; //разблокировка пункта меню "Расчет вектора Х"
   Button2.Enabled:=True; //разблокировка кнопки "Расчет вектора Х"
   matric;
   for i:= 1 to n do //счетчик строк
      for j:= 1 to n do //счетчик столбцов
//вывод значений матрицы А в поле StringGrid
       StringGrid1.Cells[j-1,i-1]:=FloatToStrF(a[i,j],ffFixed,5,5);
end;

//процедура обработки кнопки "Расчет вектора Х"
procedure TForm1.Button2Click(Sender: TObject);
var
   i: integer; //объявление счетчика
begin
   G1.Enabled:=True; //разблокировка пункта меню "Расчет функции G"
   i1.Enabled:=True; //разблокировка пункта меню "Пстроение графика X[i]"
   Button3.Enabled:=True; //разблокировка кнопки "Расчет функции G",
   Button4.Enabled:=True; //разблокировка кнопки "Построение графика X[i]"
   vector;
   for i:= 1 to n do //счетчик строк
   //вывод столбца матрицы А в поле Memo
   Memo1.Lines.Add(FloatToStrF(x[i],ffFixed,5,5));
end;

//процедура обработки кнопки "Расчет функции G"
procedure TForm1.Button3Click(Sender: TObject);
begin
//вывод функции в поле Edit
Edit1.text:=FloatToStrF(g,ffFixed,5,5);
end;

//процедура обработки кнопки "Построение графика X[i]"
procedure TForm1.Button4Click(Sender: TObject);
var i: integer; //объявление счетчика
begin
   for i:=1 to n do //счетчик элементов
    //построение графика зависимости X[i]
    Series1.AddXY(i,x[i],'',clRed);
end;

//процедура обработки пункта меню "Выход"
procedure TForm1.N5Click(Sender: TObject);
begin
 Form1.Close;
end;

end.
