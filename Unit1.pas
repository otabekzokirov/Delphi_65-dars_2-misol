unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, ExtCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Timer1: TTimer;
    CheckBox1: TCheckBox;
    SpinEdit1: TSpinEdit;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  var x,y,dx,dy:integer;
implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
 x:=0;
 y:=0;
 dx:=2;
 dy:=1;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var n:integer;
begin
 n:=SpinEdit1.Value;
 if not CheckBox1.Checked then
 Image1.Canvas.Rectangle(-3,-3,Image1.Width+3,Image1.Height+3);
 x:=x+dx*n;
 if x>Image1.Width then
 begin x:=2*Image1.Width-x;dx:=-dx;end;
 if x<0 then begin x:=-x;dx:=-dx;end;
 y:=y+dy*n;
 if y>Image1.Height then
 begin y:=2*Image1.Height-y;dy:=-dy;end;
 if y<0 then begin y:=-y;dy:=-dy;end;
 Image1.Canvas.Ellipse(x-10,y-10,x+10,y+10);
end;

end.
