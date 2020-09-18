unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, ComCtrls, Dos,
  TplLEDIndicatorUnit;

type

  { TForm1 }

  TForm1 = class(TForm)
    Hora: TplLEDIndicator;
    Minuto: TplLEDIndicator;
    Segundo: TplLEDIndicator;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.frm}

{ TForm1 }

function L0(w:word):string;
var
  s : string;
begin
  Str(w,s);
  if w<10 then
   L0:='0'+s
  else
   L0:=s;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
  Hour,Min,Sec,HSec : word;
begin
  GetTime(Hour,Min,Sec,HSec);
  Hora.Position    := Trunc(StrToInt64(L0(Hour)) * 100 / 23);
  Minuto.Position  := Trunc(StrToInt64(L0(Min))  * 100 / 59);
  Segundo.Position := Trunc(StrToInt64(L0(Sec))  * 100 / 59);
end;

end.

