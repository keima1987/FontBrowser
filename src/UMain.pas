unit UMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, XPMan;

type
  TfrmFontBrowser = class(TForm)
    cbFonts: TComboBox;
    lblFontList: TLabel;
    edtText: TEdit;
    lblFontView: TLabel;
    speSize: TSpinEdit;
    lblSize: TLabel;
    XPManifest1: TXPManifest;
    lblSample: TLabel;
    cbBoldItalic: TComboBox;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure cbFontsChange(Sender: TObject);
    procedure edtTextChange(Sender: TObject);
    procedure speSizeChange(Sender: TObject);
    procedure cbBoldItalicChange(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  frmFontBrowser: TfrmFontBrowser;

implementation

{$R *.dfm}

procedure TfrmFontBrowser.FormCreate(Sender: TObject);
begin
 CbFonts.Items.Assign(Screen.Fonts);
 CbFonts.ItemIndex:=0;
 lblFontView.Font.Name:=cbFonts.Text;
 if edtText.Text='' then
   lblFontView.Caption:=cbFonts.Text
 else
   lblFontView.Caption:=edtText.Text;
 lblFontView.Font.Size:=speSize.Value;
end;

procedure TfrmFontBrowser.cbFontsChange(Sender: TObject);
begin
  lblFontView.Font.Name:=cbFonts.Text;
    if edtText.Text='' then
    lblFontView.Caption:=cbFonts.Text
  else
    lblFontView.Caption:=edtText.Text;
end;

procedure TfrmFontBrowser.edtTextChange(Sender: TObject);
begin
  if edtText.Text='' then
    lblFontView.Caption:=cbFonts.Text
  else
    lblFontView.Caption:=edtText.Text;
end;

procedure TfrmFontBrowser.speSizeChange(Sender: TObject);
begin
  lblFontView.Font.Size:=speSize.Value;
end;

procedure TfrmFontBrowser.cbBoldItalicChange(Sender: TObject);
begin
  Case cbBoldItalic.ItemIndex of
  0:lblFontView.Font.Style:=[];
  1:lblFontView.Font.Style:=[fsBold];
  2:lblFontView.Font.Style:=[fsItalic];
  3:lblFontView.Font.Style:=[fsBold,fsItalic];
  end;
end;

end.
