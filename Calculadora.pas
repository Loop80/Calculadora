unit Calculadora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.NumberBox, System.Generics.Collections;

type
  TfrmCalculadora = class(TForm)
    pnlVisor: TPanel;
    pnlFundo: TPanel;
    pnlBotoes: TPanel;
    pnlBotoesNum: TPanel;
    Panel1: TPanel;
    pnlLinha4: TPanel;
    btnZero: TBitBtn;
    pnlLinha3: TPanel;
    btnTres: TBitBtn;
    btnDois: TBitBtn;
    btnUm: TBitBtn;
    pnlLinha2: TPanel;
    btnSeis: TBitBtn;
    BitBtn8: TBitBtn;
    btnQuatro: TBitBtn;
    pnlLinha1: TPanel;
    btnNove: TBitBtn;
    btnOito: TBitBtn;
    btnSete: TBitBtn;
    btnCE: TBitBtn;
    btnIgual: TBitBtn;
    btnVezes: TBitBtn;
    btnDividir: TBitBtn;
    btnMenos: TBitBtn;
    btnMais: TBitBtn;
    lblVisor: TLabel;
    
    procedure addValoresArray(num: Integer);
    procedure addNumVisor(num: Integer);

    
    procedure btnZeroClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnIgualClick(Sender: TObject);
    procedure btnMaisClick(Sender: TObject);
    procedure btnMenosClick(Sender: TObject);
    procedure btnDividirClick(Sender: TObject);
    procedure btnVezesClick(Sender: TObject);  

    procedure Total();   
    
    procedure btnCEClick(Sender: TObject);
                                           
  private
    { Private declarations }
  public
    { Public declarations }
    resultado: Integer;
    operacao: String;   
                          
  end;

var
  frmCalculadora: TfrmCalculadora;
  valoresDigitados: TList<Integer>;

implementation

{$R *.dfm}

procedure TfrmCalculadora.addValoresArray(num: Integer);
begin                   
  valoresDigitados.Add(num);
end;


procedure TfrmCalculadora.addNumVisor(num: Integer);
begin
  if (lblVisor.Caption = '0') then
    lblVisor.Caption := IntToStr(num)
  else
    lblVisor.Caption := lblVisor.Caption + IntToStr(num);
end;


procedure TfrmCalculadora.Total();
var
  I, ResDiv: Integer;
begin            
  if (operacao = 'soma') then
  begin
    for I := 0 to Pred(ValoresDigitados.Count) do
    begin
      resultado := resultado + ValoresDigitados[i];
    end;
  end else       
  if (operacao = 'subtracao') then
  begin
    resultado := ValoresDigitados[0];
  
    for I := 1 to Pred(ValoresDigitados.Count) do
    begin
      resultado := resultado - ValoresDigitados[i];
    end;
  end else       
  if (operacao = 'divisao') then
  begin            
    resultado := ValoresDigitados[0];
    
    for I := 1 to Pred(ValoresDigitados.Count) do
    begin
      resultado := Trunc(resultado / ValoresDigitados[i]);
    end;
  end else       
  begin
    resultado := 1;
    for I := 0 to Pred(ValoresDigitados.Count) do
    begin
      resultado := resultado * ValoresDigitados[i];
    end;
  end; 


  lblVisor.Caption := inttostr(resultado);
end;

procedure TfrmCalculadora.btnCEClick(Sender: TObject);  
var
I: Integer;

begin
  lblVisor.Caption := '0';
  operacao := '';
  resultado := 0;   

  valoresDigitados.Clear;
end;

procedure TfrmCalculadora.btnDividirClick(Sender: TObject);
begin
  operacao         := 'divisao';       
  addValoresArray(StrtoInt(lblVisor.Caption));
  
  lblVisor.Caption := '0';
end;

procedure TfrmCalculadora.btnIgualClick(Sender: TObject);
begin
  if (valoresDigitados.Count = 1) then
    addValoresArray(StrtoInt(lblVisor.Caption));
  

  Total();    
  
  operacao := '';
  resultado := 0;   
  valoresDigitados.Clear;

end;

procedure TfrmCalculadora.btnMaisClick(Sender: TObject);
begin
  operacao         := 'soma';                 
  addValoresArray(StrtoInt(lblVisor.Caption));
  
  lblVisor.Caption := '0';
end;

procedure TfrmCalculadora.btnMenosClick(Sender: TObject);
begin
  operacao         := 'subtracao';   
  addValoresArray(StrtoInt(lblVisor.Caption));
  
  lblVisor.Caption := '0';
end;

procedure TfrmCalculadora.btnVezesClick(Sender: TObject);
var
I : Integer;
begin
  operacao         := 'multiplicacao';  
  addValoresArray(StrtoInt(lblVisor.Caption));
  
  lblVisor.Caption := '0';

end;

procedure TfrmCalculadora.btnZeroClick(Sender: TObject);
var
  num: Integer;
begin              
  num := TBitBtn(Sender).Tag;
  addNumVisor(num);

end;

procedure TfrmCalculadora.FormCreate(Sender: TObject);
begin
  valoresDigitados := TList<Integer>.Create;  
end;

end.

