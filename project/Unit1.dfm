object Form1: TForm1
  Left = 218
  Top = 185
  Width = 790
  Height = 527
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 200
    Top = 24
    Width = 170
    Height = 20
    Caption = #1069#1083#1077#1084#1077#1085#1090#1099' '#1084#1072#1090#1088#1080#1094#1099' '#1040':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 568
    Top = 24
    Width = 165
    Height = 20
    Caption = #1069#1083#1077#1084#1077#1085#1090#1099' '#1074#1077#1082#1090#1086#1088#1072' '#1061':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 104
    Top = 200
    Width = 191
    Height = 20
    Caption = #1043#1088#1072#1092#1080#1082' '#1079#1072#1074#1080#1089#1080#1084#1086#1089#1090#1080' '#1061'[i]:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 464
    Top = 200
    Width = 165
    Height = 20
    Caption = #1047#1085#1072#1095#1077#1085#1080#1077' '#1092#1091#1085#1082#1094#1080#1080' G:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 504
    Top = 240
    Width = 100
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 392
    Top = 304
    Width = 150
    Height = 30
    Caption = #1056#1072#1089#1095#1077#1090' '#1084#1072#1090#1088#1080#1094#1099' '#1040
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 392
    Top = 352
    Width = 150
    Height = 30
    Caption = #1056#1072#1089#1095#1077#1090' '#1074#1077#1082#1090#1086#1088#1072' '#1061
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 568
    Top = 304
    Width = 150
    Height = 30
    Caption = #1056#1072#1089#1095#1077#1090' '#1092#1091#1085#1082#1080#1080' G'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 568
    Top = 352
    Width = 150
    Height = 30
    Caption = #1055#1086#1089#1090#1088#1086#1077#1085#1080#1077' '#1075#1088#1072#1092#1080#1082#1072' '#1061'[i]'
    TabOrder = 4
    OnClick = Button4Click
  end
  object StringGrid1: TStringGrid
    Left = 40
    Top = 48
    Width = 508
    Height = 128
    DefaultColWidth = 100
    FixedCols = 0
    FixedRows = 0
    TabOrder = 5
  end
  object Chart1: TChart
    Left = 40
    Top = 224
    Width = 313
    Height = 217
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Text.Strings = (
      'TChart')
    TabOrder = 6
    object Series1: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clRed
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
      object TeeFunction1: TAddTeeFunction
      end
    end
  end
  object Memo1: TMemo
    Left = 600
    Top = 48
    Width = 100
    Height = 129
    TabOrder = 7
  end
  object MainMenu1: TMainMenu
    Left = 544
    Top = 400
    object N1: TMenuItem
      Caption = #1052#1077#1085#1102
      object N2: TMenuItem
        Caption = #1056#1072#1089#1095#1077#1090' '#1084#1072#1090#1088#1080#1094#1099' '#1040
        OnClick = Button1Click
      end
      object N3: TMenuItem
        Caption = #1056#1072#1089#1095#1077#1090' '#1074#1077#1082#1090#1086#1088#1072' '#1061
        OnClick = Button2Click
      end
      object G1: TMenuItem
        Caption = #1056#1072#1089#1095#1077#1090' '#1092#1091#1085#1082#1094#1080#1080' G'
        OnClick = Button3Click
      end
      object i1: TMenuItem
        Caption = #1055#1086#1089#1090#1088#1086#1077#1085#1080#1077' '#1075#1088#1072#1092#1080#1082#1072' '#1061'[i]'
        OnClick = Button4Click
      end
    end
    object N4: TMenuItem
      Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
      OnClick = N4Click
    end
    object N5: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      OnClick = N5Click
    end
  end
end
