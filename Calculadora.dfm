object frmCalculadora: TfrmCalculadora
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Calculadora 1.0'
  ClientHeight = 337
  ClientWidth = 405
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object pnlFundo: TPanel
    Left = 0
    Top = 0
    Width = 405
    Height = 337
    Align = alClient
    Color = clHotLight
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 401
    ExplicitHeight = 336
    object pnlVisor: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 397
      Height = 61
      Align = alTop
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 0
      ExplicitWidth = 393
      object lblVisor: TLabel
        Left = 0
        Top = 0
        Width = 308
        Height = 61
        Align = alClient
        Alignment = taRightJustify
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -40
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 286
        ExplicitWidth = 22
        ExplicitHeight = 54
      end
      object btnCE: TBitBtn
        Left = 308
        Top = 0
        Width = 89
        Height = 61
        Align = alRight
        Caption = 'CE'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = btnCEClick
        ExplicitLeft = 304
      end
    end
    object pnlBotoes: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 71
      Width = 397
      Height = 262
      Align = alClient
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 1
      ExplicitWidth = 393
      ExplicitHeight = 261
      object pnlBotoesNum: TPanel
        Left = 0
        Top = 0
        Width = 273
        Height = 262
        Align = alLeft
        TabOrder = 0
        ExplicitHeight = 261
        object pnlLinha4: TPanel
          AlignWithMargins = True
          Left = 4
          Top = 181
          Width = 265
          Height = 53
          Align = alTop
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 0
          object btnZero: TBitBtn
            Left = 0
            Top = 0
            Width = 265
            Height = 53
            Align = alClient
            Caption = '0'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -23
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            OnClick = btnZeroClick
          end
        end
        object pnlLinha3: TPanel
          AlignWithMargins = True
          Left = 4
          Top = 122
          Width = 265
          Height = 53
          Align = alTop
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 1
          object btnTres: TBitBtn
            Tag = 3
            Left = 178
            Top = 0
            Width = 89
            Height = 53
            Align = alLeft
            Caption = '3'
            Font.Charset = EASTEUROPE_CHARSET
            Font.Color = clWindowText
            Font.Height = -23
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            OnClick = btnZeroClick
            ExplicitLeft = 175
          end
          object btnDois: TBitBtn
            Tag = 2
            Left = 89
            Top = 0
            Width = 89
            Height = 53
            Align = alLeft
            Caption = '2'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -23
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            OnClick = btnZeroClick
          end
          object btnUm: TBitBtn
            Tag = 1
            Left = 0
            Top = 0
            Width = 89
            Height = 53
            Align = alLeft
            Caption = '1'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -23
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            OnClick = btnZeroClick
            ExplicitLeft = -6
          end
        end
        object pnlLinha2: TPanel
          AlignWithMargins = True
          Left = 4
          Top = 63
          Width = 265
          Height = 53
          Align = alTop
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 2
          object btnSeis: TBitBtn
            Tag = 6
            Left = 178
            Top = 0
            Width = 89
            Height = 53
            Align = alLeft
            Caption = '6'
            Font.Charset = EASTEUROPE_CHARSET
            Font.Color = clWindowText
            Font.Height = -23
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            OnClick = btnZeroClick
          end
          object BitBtn8: TBitBtn
            Tag = 5
            Left = 89
            Top = 0
            Width = 89
            Height = 53
            Align = alLeft
            Caption = '5'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -23
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            OnClick = btnZeroClick
          end
          object btnQuatro: TBitBtn
            Tag = 4
            Left = 0
            Top = 0
            Width = 89
            Height = 53
            Align = alLeft
            Caption = '4'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -23
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            OnClick = btnZeroClick
          end
        end
        object pnlLinha1: TPanel
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 265
          Height = 53
          Align = alTop
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 3
          object btnNove: TBitBtn
            Tag = 9
            Left = 178
            Top = 0
            Width = 89
            Height = 53
            Align = alLeft
            Caption = '9'
            Font.Charset = EASTEUROPE_CHARSET
            Font.Color = clWindowText
            Font.Height = -23
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            OnClick = btnZeroClick
          end
          object btnOito: TBitBtn
            Tag = 8
            Left = 89
            Top = 0
            Width = 89
            Height = 53
            Align = alLeft
            Caption = '8'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -23
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            OnClick = btnZeroClick
          end
          object btnSete: TBitBtn
            Tag = 7
            Left = 0
            Top = 0
            Width = 89
            Height = 53
            Align = alLeft
            Caption = '7'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -23
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            OnClick = btnZeroClick
          end
        end
      end
      object Panel1: TPanel
        Left = 273
        Top = 0
        Width = 124
        Height = 262
        Align = alClient
        TabOrder = 1
        ExplicitWidth = 120
        ExplicitHeight = 261
        object btnIgual: TBitBtn
          Left = 1
          Top = 189
          Width = 122
          Height = 47
          Align = alTop
          Caption = '='
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -23
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = btnIgualClick
          ExplicitWidth = 118
        end
        object btnVezes: TBitBtn
          Left = 1
          Top = 142
          Width = 122
          Height = 47
          Align = alTop
          Caption = '*'
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -23
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = btnVezesClick
          ExplicitWidth = 118
        end
        object btnDividir: TBitBtn
          Left = 1
          Top = 95
          Width = 122
          Height = 47
          Align = alTop
          Caption = '/'
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -23
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = btnDividirClick
          ExplicitWidth = 118
        end
        object btnMenos: TBitBtn
          Left = 1
          Top = 48
          Width = 122
          Height = 47
          Align = alTop
          Caption = '-'
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -23
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnClick = btnMenosClick
          ExplicitLeft = 2
          ExplicitTop = 42
        end
        object btnMais: TBitBtn
          Left = 1
          Top = 1
          Width = 122
          Height = 47
          Align = alTop
          Caption = '+'
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -23
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          OnClick = btnMaisClick
          ExplicitWidth = 118
        end
      end
    end
  end
end
