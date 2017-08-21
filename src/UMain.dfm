object frmFontBrowser: TfrmFontBrowser
  Left = 880
  Top = 276
  BorderStyle = bsDialog
  Caption = 'Font Browser'
  ClientHeight = 394
  ClientWidth = 412
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lblFontList: TLabel
    Left = 8
    Top = 8
    Width = 56
    Height = 13
    Caption = 'Font Name'
  end
  object lblFontView: TLabel
    Left = 8
    Top = 104
    Width = 393
    Height = 281
    AutoSize = False
    WordWrap = True
  end
  object lblSize: TLabel
    Left = 224
    Top = 8
    Width = 20
    Height = 13
    Caption = 'Size'
  end
  object lblSample: TLabel
    Left = 8
    Top = 80
    Width = 40
    Height = 13
    Caption = 'Sample:'
  end
  object Label1: TLabel
    Left = 296
    Top = 8
    Width = 51
    Height = 13
    Caption = 'Font Style'
  end
  object cbFonts: TComboBox
    Left = 8
    Top = 24
    Width = 209
    Height = 21
    TabOrder = 0
    OnChange = cbFontsChange
  end
  object edtText: TEdit
    Left = 8
    Top = 56
    Width = 393
    Height = 21
    TabOrder = 1
    OnChange = edtTextChange
  end
  object speSize: TSpinEdit
    Left = 224
    Top = 24
    Width = 65
    Height = 22
    MaxValue = 150
    MinValue = 8
    TabOrder = 2
    Value = 15
    OnChange = speSizeChange
  end
  object cbBoldItalic: TComboBox
    Left = 296
    Top = 24
    Width = 105
    Height = 21
    TabOrder = 3
    Text = 'Normal'
    OnChange = cbBoldItalicChange
    Items.Strings = (
      'Normal'
      'Bold'
      'Italic'
      'Bold Italic')
  end
  object XPManifest1: TXPManifest
    Left = 376
    Top = 320
  end
end
