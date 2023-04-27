object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'X-Ray Calc 2'
  ClientHeight = 861
  ClientWidth = 1511
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = mmMain
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 15
  object Status: TRzStatusBar
    Left = 0
    Top = 842
    Width = 1511
    Height = 19
    BorderInner = fsNone
    BorderOuter = fsNone
    BorderSides = [sdLeft, sdTop, sdRight, sdBottom]
    BorderWidth = 0
    Color = 15987699
    TabOrder = 0
    ExplicitTop = 841
    ExplicitWidth = 1507
    object spnTime: TRzStatusPane
      Left = 0
      Top = 0
      Height = 19
      Align = alLeft
      Caption = ''
      ExplicitLeft = 1354
      ExplicitHeight = 20
    end
    object spnFitTime: TRzStatusPane
      Left = 100
      Top = 0
      Width = 150
      Height = 19
      Align = alLeft
      Caption = ''
    end
    object RzVersionInfoStatus1: TRzVersionInfoStatus
      Left = 1411
      Top = 0
      Height = 19
      Align = alRight
      Field = vifFileVersion
      VersionInfo = frmAbout.RzVersionInfo1
      ExplicitLeft = 1511
      ExplicitHeight = 20
    end
  end
  object LeftSplitter: TRzSplitter
    Left = 0
    Top = 0
    Width = 1511
    Height = 842
    Position = 248
    Percent = 16
    UpperLeft.Color = 15987699
    LowerRight.Color = 15987699
    Align = alClient
    Color = 15987699
    TabOrder = 1
    ExplicitWidth = 1507
    ExplicitHeight = 841
    BarSize = (
      248
      0
      252
      842)
    UpperLeftControls = (
      RzPanel1)
    LowerRightControls = (
      pnlMain
      StructurePanel)
    object RzPanel1: TRzPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 242
      Height = 836
      Align = alClient
      BorderOuter = fsFlatRounded
      Color = 15987699
      TabOrder = 0
      object tlbrFile: TRzToolbar
        Left = 2
        Top = 2
        Width = 238
        Height = 29
        Images = ilProject
        BorderInner = fsNone
        BorderOuter = fsGroove
        BorderSides = [sdTop]
        BorderWidth = 0
        ParentShowHint = False
        ShowHint = True
        StyleName = 'Windows'
        TabOrder = 0
        ToolbarControls = (
          BtnNew
          BtnOpen
          BtnSave
          RzSpacer1
          BtnPrint)
        object BtnNew: TRzToolButton
          Left = 4
          Top = 2
          DisabledIndex = 1
          ImageIndex = 0
          Action = FileNew
        end
        object BtnOpen: TRzToolButton
          Left = 29
          Top = 2
          DisabledIndex = 3
          ImageIndex = 2
          Action = FileOpen
        end
        object BtnSave: TRzToolButton
          Left = 54
          Top = 2
          DisabledIndex = 5
          ImageIndex = 4
          Action = FileSave
        end
        object RzSpacer1: TRzSpacer
          Left = 79
          Top = 2
        end
        object BtnPrint: TRzToolButton
          Left = 87
          Top = 2
          DisabledIndex = 7
          ImageIndex = 6
          Action = FilePrint
        end
      end
      object RzPanel5: TRzPanel
        AlignWithMargins = True
        Left = 5
        Top = 749
        Width = 232
        Height = 82
        Align = alBottom
        BorderOuter = fsFlatRounded
        Color = 15987699
        FlatColor = clSkyBlue
        TabOrder = 1
        ExplicitTop = 748
        object mmDescription: TRzMemo
          AlignWithMargins = True
          Left = 5
          Top = 5
          Width = 222
          Height = 72
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          Color = clBtnFace
          ReadOnly = True
          TabOrder = 0
          StyleName = 'Windows'
          FrameHotColor = cl3DDkShadow
          FrameHotStyle = fsNone
          FrameVisible = True
          ReadOnlyColor = clBtnFace
        end
      end
      object tlbrProject: TRzToolbar
        Left = 2
        Top = 31
        Width = 238
        Height = 29
        Hint = 'Delete item'
        Images = ilProject
        BorderInner = fsNone
        BorderOuter = fsGroove
        BorderSides = [sdTop]
        BorderWidth = 0
        ParentShowHint = False
        ShowHint = True
        StyleName = 'Windows'
        TabOrder = 2
        ToolbarControls = (
          btnAddModel
          BtnExport
          BtnCopy
          BtnPaste
          BtnEdit
          RzSpacer4
          BtnWordWrap
          RzSpacer5
          BtnRecycle)
        object btnAddModel: TRzToolButton
          Left = 4
          Top = 2
          DisabledIndex = 9
          ImageIndex = 8
          Action = ModelCreate
        end
        object BtnExport: TRzToolButton
          Left = 29
          Top = 2
          DisabledIndex = 11
          ImageIndex = 10
          Action = actProjectItemDuplicate
        end
        object BtnCopy: TRzToolButton
          Left = 54
          Top = 2
          Hint = 'Copy model to clipboard'
          DisabledIndex = 13
          ImageIndex = 12
          Action = actModelCopy
        end
        object BtnPaste: TRzToolButton
          Left = 79
          Top = 2
          Hint = 'Paste model'
          DisabledIndex = 15
          ImageIndex = 14
          Action = actModelPaste
        end
        object BtnEdit: TRzToolButton
          Left = 104
          Top = 2
          Hint = 'Properites'
          DisabledIndex = 17
          ImageIndex = 16
          Action = actItemProperites
        end
        object RzSpacer4: TRzSpacer
          Left = 129
          Top = 2
        end
        object BtnWordWrap: TRzToolButton
          Left = 137
          Top = 2
          Hint = 'Add extension'
          DisabledIndex = 19
          ImageIndex = 18
          Action = ProjectItemExtension
        end
        object RzSpacer5: TRzSpacer
          Left = 162
          Top = 2
        end
        object BtnRecycle: TRzToolButton
          Left = 170
          Top = 2
          Hint = 'Delete item'
          DisabledIndex = 21
          ImageIndex = 20
          Action = ProjectItemDelete
        end
      end
    end
    object pnlMain: TRzPanel
      AlignWithMargins = True
      Left = 356
      Top = 3
      Width = 903
      Height = 836
      Margins.Left = 0
      Margins.Right = 0
      Align = alClient
      BorderOuter = fsFlatRounded
      Color = 15987699
      TabOrder = 0
      object Pages: TRzPageControl
        Left = 2
        Top = 671
        Width = 899
        Height = 163
        Hint = ''
        ActivePage = tsFittingProgress
        Align = alBottom
        TabIndex = 3
        TabOrder = 0
        ExplicitTop = 670
        ExplicitWidth = 895
        FixedDimension = 21
        object tsThickness: TRzTabSheet
          Color = 15987699
          Caption = 'Thickness'
          object chThickness: TChart
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 889
            Height = 132
            Cursor = crCross
            Legend.TopPos = 0
            MarginRight = 0
            MarginUnits = muPixels
            Title.Text.Strings = (
              'TChart')
            Title.Visible = False
            View3D = False
            ZoomWheel = pmwNormal
            Align = alClient
            BevelOuter = bvNone
            Color = 15925239
            TabOrder = 0
            DefaultCanvas = 'TGDIPlusCanvas'
            ColorPaletteIndex = 13
          end
        end
        object tsRoughness: TRzTabSheet
          Color = 15987699
          Caption = 'Roughness'
          object chRoughness: TChart
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 889
            Height = 132
            Cursor = crCross
            Legend.TopPos = 0
            MarginRight = 0
            MarginUnits = muPixels
            Title.Text.Strings = (
              'TChart')
            Title.Visible = False
            View3D = False
            ZoomWheel = pmwNormal
            Align = alClient
            BevelOuter = bvNone
            Color = 16773087
            TabOrder = 0
            DefaultCanvas = 'TGDIPlusCanvas'
            ColorPaletteIndex = 13
          end
        end
        object tsDensity: TRzTabSheet
          Color = 15987699
          Caption = 'Density'
          object chDensity: TChart
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 889
            Height = 132
            Cursor = crCross
            Legend.TopPos = 0
            MarginRight = 0
            MarginUnits = muPixels
            Title.Text.Strings = (
              'TChart')
            Title.Visible = False
            View3D = False
            ZoomWheel = pmwNormal
            Align = alClient
            BevelOuter = bvNone
            Color = 16773087
            TabOrder = 0
            DefaultCanvas = 'TGDIPlusCanvas'
            ColorPaletteIndex = 13
          end
        end
        object tsFittingProgress: TRzTabSheet
          Color = 15987699
          Caption = 'Fitting Progress'
          ExplicitWidth = 891
          object chFittingProgress: TChart
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 889
            Height = 132
            Cursor = crCross
            Legend.TopPos = 0
            Legend.Visible = False
            MarginLeft = 5
            MarginRight = 5
            MarginUnits = muPixels
            Title.Text.Strings = (
              'TChart')
            Title.Visible = False
            LeftAxis.AxisValuesFormat = '#,##0'
            LeftAxis.LabelsExponent = True
            LeftAxis.Logarithmic = True
            LeftAxis.MaximumRound = True
            View3D = False
            ZoomWheel = pmwNormal
            Align = alClient
            BevelOuter = bvNone
            Color = 16771538
            TabOrder = 0
            ExplicitWidth = 885
            DefaultCanvas = 'TGDIPlusCanvas'
            ColorPaletteIndex = 13
            object Series1: TLineSeries
              HoverElement = [heCurrent]
              SeriesColor = 16744448
              Title = 'srFitProgress'
              Brush.BackColor = clDefault
              LinePen.Color = clRed
              LinePen.Width = 3
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              Stairs = True
              XValues.Name = 'X'
              XValues.Order = loAscending
              YValues.Name = 'Y'
              YValues.Order = loNone
            end
          end
        end
      end
      object Chart: TChart
        AlignWithMargins = True
        Left = 5
        Top = 148
        Width = 893
        Height = 464
        Cursor = crCross
        Foot.Visible = False
        Legend.Brush.Color = clSilver
        Legend.Brush.BackColor = clSilver
        Legend.Brush.Gradient.Direction = gdTopBottom
        Legend.Brush.Gradient.EndColor = 2152289
        Legend.Brush.Gradient.MidColor = 7548915
        Legend.Brush.Gradient.StartColor = 10109259
        Legend.Color = 14210754
        Legend.Font.Height = -13
        Legend.Font.Style = [fsBold]
        Legend.Frame.Width = 2
        Legend.Frame.Visible = False
        Legend.LegendStyle = lsSeries
        Legend.ResizeChart = False
        Legend.Shadow.Color = 9211020
        Legend.ShapeStyle = fosRoundRectangle
        Legend.TextStyle = ltsPlain
        Legend.Title.Transparent = False
        Legend.TopPos = 3
        MarginBottom = 5
        MarginLeft = 5
        MarginRight = 5
        MarginTop = 5
        MarginUnits = muPixels
        PrintProportional = False
        SubFoot.Visible = False
        SubTitle.Visible = False
        Title.Alignment = taLeftJustify
        Title.Text.Strings = (
          'TChart')
        Title.Visible = False
        DepthAxis.Automatic = False
        DepthAxis.AutomaticMaximum = False
        DepthAxis.AutomaticMinimum = False
        DepthAxis.Maximum = 0.439999999999999900
        DepthAxis.Minimum = -0.560000000000000300
        DepthTopAxis.Automatic = False
        DepthTopAxis.AutomaticMaximum = False
        DepthTopAxis.AutomaticMinimum = False
        DepthTopAxis.Maximum = 0.439999999999999900
        DepthTopAxis.Minimum = -0.560000000000000300
        LeftAxis.Axis.SmallSpace = 1
        LeftAxis.AxisValuesFormat = '00e-0'
        LeftAxis.LabelsExponent = True
        LeftAxis.LabelsFormat.Margins.Left = 0
        LeftAxis.LabelsFormat.Margins.Top = 0
        LeftAxis.LabelsFormat.Margins.Right = 0
        LeftAxis.LabelsFormat.Margins.Bottom = 0
        LeftAxis.LabelsFormat.Margins.Units = maPixels
        LeftAxis.Logarithmic = True
        LeftAxis.MaximumOffset = 10
        LeftAxis.RoundFirstLabel = False
        LeftAxis.Title.Caption = 'Reflectivity'
        LeftAxis.TitleSize = 15
        Pages.AutoScale = True
        RightAxis.Automatic = False
        RightAxis.AutomaticMaximum = False
        RightAxis.AutomaticMinimum = False
        View3D = False
        Zoom.Pen.Color = clRed
        Zoom.Pen.Mode = pmNotXor
        Align = alClient
        BevelOuter = bvLowered
        Color = clCream
        TabOrder = 1
        ExplicitWidth = 889
        ExplicitHeight = 463
        DefaultCanvas = 'TGDIPlusCanvas'
        PrintMargins = (
          5
          5
          5
          5)
        ColorPaletteIndex = -2
        ColorPalette = (
          255
          8404992
          32768
          16711680
          128
          8388608
          4210688
          16711935
          8421376
          8388736
          32896
          0)
      end
      object RzPanel3: TRzPanel
        AlignWithMargins = True
        Left = 5
        Top = 618
        Width = 893
        Height = 50
        Align = alBottom
        BorderOuter = fsFlatRounded
        Color = 15987699
        FlatColor = clSkyBlue
        TabOrder = 2
        ExplicitTop = 617
        ExplicitWidth = 889
        DesignSize = (
          893
          50)
        object RzStatusPane1: TRzStatusPane
          Left = 5
          Top = 4
          Width = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Alignment = taRightJustify
          Caption = 'X'
        end
        object RzStatusPane2: TRzStatusPane
          Left = 5
          Top = 28
          Width = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Alignment = taRightJustify
          Caption = 'Y'
        end
        object StatusY: TRzStatusPane
          Left = 33
          Top = 28
          Width = 64
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Caption = '0.00'
        end
        object StatusX: TRzStatusPane
          Left = 33
          Top = 4
          Width = 64
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Caption = '0.00'
        end
        object RzStatusPane3: TRzStatusPane
          Left = 103
          Top = 5
          Width = 46
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Alignment = taRightJustify
          Caption = 'Rmax'
        end
        object RzStatusPane4: TRzStatusPane
          Left = 104
          Top = 28
          Width = 44
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Alignment = taRightJustify
          Caption = 'Xmax'
        end
        object StatusMaxX: TRzStatusPane
          Left = 153
          Top = 28
          Width = 64
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Caption = '0.00'
        end
        object StatusRMax: TRzStatusPane
          Left = 153
          Top = 4
          Width = 64
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Caption = '0.00'
        end
        object RzStatusPane5: TRzStatusPane
          Left = 221
          Top = 4
          Width = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Alignment = taRightJustify
          Caption = 'Ri'
        end
        object StatusD: TRzStatusPane
          Left = 252
          Top = 28
          Width = 89
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Caption = '0.00'
        end
        object RzStatusPane6: TRzStatusPane
          Left = 221
          Top = 28
          Width = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Alignment = taRightJustify
          Caption = 'D'
        end
        object StatusRi: TRzStatusPane
          Left = 252
          Top = 4
          Width = 89
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Caption = '0.00'
        end
        object spChiSqr: TRzStatusPane
          Left = 392
          Top = 5
          Width = 89
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Alignment = taCenter
          Caption = '0.00'
        end
        object RzStatusPane7: TRzStatusPane
          Left = 364
          Top = 5
          Width = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Alignment = taRightJustify
          Caption = #967'2'
        end
        object spChiBest: TRzStatusPane
          Left = 392
          Top = 27
          Width = 89
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Alignment = taCenter
          Caption = '0.00'
        end
        object btnChartScale: TRzBitBtn
          Left = 750
          Top = 7
          Anchors = [akTop, akRight]
          Caption = 'Linear'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = btnChartScaleClick
          ExplicitLeft = 746
        end
        object cbMinLimit: TRzComboBox
          Left = 831
          Top = 8
          Width = 53
          Height = 24
          Anchors = [akRight, akBottom]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          Text = '5e-7'
          Items.Strings = (
            '1e-5'
            '1e-6'
            '1e-7'
            '1e-8')
          ExplicitLeft = 827
        end
      end
      object pnl1: TPanel
        Left = 2
        Top = 31
        Width = 899
        Height = 114
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 3
        ExplicitWidth = 895
        object RzPanel6: TRzPanel
          AlignWithMargins = True
          Left = 459
          Top = 6
          Width = 437
          Height = 105
          Margins.Top = 6
          Align = alClient
          BorderOuter = fsFlatRounded
          Color = 15987699
          TabOrder = 0
          ExplicitWidth = 433
          object Label7: TLabel
            Left = 9
            Top = 11
            Width = 47
            Height = 13
            Caption = 'Itreations'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label8: TLabel
            Left = 9
            Top = 38
            Width = 50
            Height = 13
            Caption = 'Population'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object edFIter: TEdit
            Left = 62
            Top = 7
            Width = 43
            Height = 22
            Alignment = taRightJustify
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            NumbersOnly = True
            ParentFont = False
            TabOrder = 0
            Text = '50'
          end
          object edFPopulation: TEdit
            Left = 62
            Top = 34
            Width = 43
            Height = 22
            Alignment = taRightJustify
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            NumbersOnly = True
            ParentFont = False
            TabOrder = 1
            Text = '50'
          end
          object RzGroupBox1: TRzGroupBox
            Left = 111
            Top = 0
            Width = 162
            Height = 100
            Caption = 'LFPSO'
            Color = 15987699
            TabOrder = 2
            object Label16: TLabel
              Left = 6
              Top = 19
              Width = 26
              Height = 13
              Caption = 'Vmax'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label13: TLabel
              Left = 6
              Top = 47
              Width = 23
              Height = 13
              Caption = 'k '#967'2 '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label14: TLabel
              Left = 86
              Top = 46
              Width = 31
              Height = 13
              Caption = 'kVmax'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label15: TLabel
              Left = 6
              Top = 75
              Width = 19
              Height = 13
              Caption = 'Skip'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label17: TLabel
              Left = 81
              Top = 76
              Width = 31
              Height = 13
              Caption = 'RImax'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object cbLFPSOShake: TRzCheckBox
              Left = 98
              Top = 16
              Width = 54
              Height = 19
              Caption = 'Shake'
              Checked = True
              State = cbChecked
              TabOrder = 0
            end
            object edFVmax: TEdit
              Left = 38
              Top = 15
              Width = 35
              Height = 22
              Alignment = taRightJustify
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              Text = '0.05'
            end
            object edLFPSOChiFactor: TEdit
              Left = 38
              Top = 43
              Width = 35
              Height = 22
              Alignment = taRightJustify
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              Text = '1'
            end
            object edLFPSOkVmax: TEdit
              Left = 118
              Top = 42
              Width = 35
              Height = 22
              Alignment = taRightJustify
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              Text = '1.4'
            end
            object edLFPSOSkip: TEdit
              Left = 38
              Top = 71
              Width = 35
              Height = 22
              Alignment = taRightJustify
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
              Text = '1'
            end
            object edLFPSORImax: TEdit
              Left = 118
              Top = 70
              Width = 35
              Height = 22
              Alignment = taRightJustify
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
              Text = '3'
            end
          end
        end
        object RzPanel7: TRzPanel
          Left = 0
          Top = 0
          Width = 456
          Height = 114
          Align = alLeft
          BorderOuter = fsNone
          Color = 15987699
          TabOrder = 1
          object RzPanel4: TRzPanel
            Left = 351
            Top = 6
            Width = 98
            Height = 108
            BorderOuter = fsFlatRounded
            Color = 15987699
            TabOrder = 0
            object Label5: TLabel
              Left = 9
              Top = 8
              Width = 82
              Height = 13
              Caption = 'Number of points'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object edN: TEdit
              Left = 41
              Top = 27
              Width = 48
              Height = 22
              Alignment = taRightJustify
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              NumbersOnly = True
              ParentFont = False
              TabOrder = 0
              Text = '2000'
            end
          end
          object rgPolarisation: TRzRadioGroup
            Left = 193
            Top = 0
            Width = 152
            Height = 42
            BorderOuter = fsFlatRounded
            Caption = 'Polarization'
            Color = 15987699
            Columns = 2
            ItemHeight = 17
            ItemIndex = 0
            Items.Strings = (
              's-type'
              'sp-type')
            SpaceEvenly = True
            TabOrder = 1
          end
          object pnlWaveParams: TRzPanel
            Left = 192
            Top = 47
            Width = 153
            Height = 67
            BorderOuter = fsFlatRounded
            Color = 15987699
            Enabled = False
            TabOrder = 2
            Transparent = True
            object Label9: TLabel
              Left = 8
              Top = 40
              Width = 16
              Height = 19
              Caption = 'l2'
              Enabled = False
              Font.Charset = GREEK_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Symbol'
              Font.Style = []
              ParentFont = False
            end
            object Label10: TLabel
              Left = 7
              Top = 17
              Width = 16
              Height = 19
              Caption = 'l1'
              Enabled = False
              Font.Charset = GREEK_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Symbol'
              Font.Style = []
              ParentFont = False
            end
            object Label11: TLabel
              Left = 83
              Top = 14
              Width = 8
              Height = 19
              Caption = 'q'
              Enabled = False
              Font.Charset = GREEK_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Symbol'
              Font.Style = []
              ParentFont = False
            end
            object Label12: TLabel
              Left = 80
              Top = 41
              Width = 17
              Height = 19
              Caption = 'Dl'
              Enabled = False
              Font.Charset = GREEK_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Symbol'
              Font.Style = []
              ParentFont = False
            end
            object edStartL: TEdit
              Left = 23
              Top = 13
              Width = 47
              Height = 22
              Alignment = taRightJustify
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              Text = '1'
            end
            object edEndL: TEdit
              Left = 23
              Top = 39
              Width = 47
              Height = 22
              Alignment = taRightJustify
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              Text = '10'
            end
            object edTheta: TEdit
              Left = 97
              Top = 13
              Width = 40
              Height = 22
              Alignment = taRightJustify
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              Text = '85'
            end
            object edDL: TEdit
              Left = 97
              Top = 40
              Width = 40
              Height = 22
              Alignment = taRightJustify
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              Text = '0'
            end
          end
          object pnlAngleParams: TRzPanel
            Left = 3
            Top = 47
            Width = 182
            Height = 67
            BorderOuter = fsFlatRounded
            Color = 15987699
            TabOrder = 3
            Transparent = True
            object Label1: TLabel
              Left = 3
              Top = 40
              Width = 16
              Height = 19
              Caption = 'q2'
              Font.Charset = GREEK_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Symbol'
              Font.Style = []
              ParentFont = False
            end
            object Label2: TLabel
              Left = 3
              Top = 14
              Width = 16
              Height = 19
              Caption = 'q1'
              Font.Charset = GREEK_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Symbol'
              Font.Style = []
              ParentFont = False
            end
            object Label3: TLabel
              Left = 80
              Top = 14
              Width = 8
              Height = 19
              Caption = 'l'
              Font.Charset = GREEK_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Symbol'
              Font.Style = []
              ParentFont = False
            end
            object Label4: TLabel
              Left = 75
              Top = 40
              Width = 17
              Height = 19
              Caption = 'Dq'
              Font.Charset = GREEK_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Symbol'
              Font.Style = []
              ParentFont = False
            end
            object edStartTeta: TEdit
              Left = 19
              Top = 13
              Width = 50
              Height = 22
              Alignment = taRightJustify
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              Text = '0.01'
            end
            object edEndTeta: TEdit
              Left = 19
              Top = 40
              Width = 50
              Height = 22
              Alignment = taRightJustify
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              Text = '10'
            end
            object edWidth: TEdit
              Left = 96
              Top = 39
              Width = 37
              Height = 22
              Alignment = taRightJustify
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              Text = '0.015'
            end
            object edLambda: TEdit
              Left = 96
              Top = 13
              Width = 73
              Height = 22
              Alignment = taRightJustify
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              Text = '1.54043'
            end
            object cb2Theta: TRzCheckBox
              Left = 139
              Top = 40
              Width = 39
              Height = 21
              Caption = '2q'
              Checked = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Symbol'
              Font.Style = []
              ParentFont = False
              State = cbChecked
              TabOrder = 4
              Transparent = True
            end
          end
          object rgCalcMode: TRzRadioGroup
            Left = 3
            Top = 0
            Width = 182
            Height = 42
            BorderOuter = fsFlatRounded
            Caption = 'Mode'
            Color = 15987699
            Columns = 2
            ItemHeight = 17
            ItemIndex = 0
            Items.Strings = (
              'by angle'
              'by wave')
            SpaceEvenly = True
            TabOrder = 4
          end
        end
      end
      object ChartToolBar: TRzToolbar
        Left = 2
        Top = 2
        Width = 899
        Height = 29
        Images = ilCalc
        BorderInner = fsNone
        BorderOuter = fsGroove
        BorderSides = [sdTop]
        BorderWidth = 0
        StyleName = 'Windows'
        TabOrder = 4
        ExplicitWidth = 895
        ToolbarControls = (
          btnCalcRun
          BtnFastForward
          BtnExecute
          RzSpacer2
          BtnCancel
          rzspcr4
          btnResultSave
          btnBtnCopy
          btnCopyImage
          btnPrintGraphics
          rzspcr3
          btnDataLoad
          btnDataPaste)
        object btnDataLoad: TRzToolButton
          Left = 228
          Top = 2
          ImageIndex = 8
          Action = DataLoad
          ParentShowHint = False
          ShowHint = True
        end
        object btnDataPaste: TRzToolButton
          Left = 253
          Top = 2
          ImageIndex = 9
          Action = DataPaste
          ParentShowHint = False
          ShowHint = True
        end
        object rzspcr3: TRzSpacer
          Left = 220
          Top = 2
        end
        object btnCalcRun: TRzToolButton
          Left = 4
          Top = 2
          ImageIndex = 0
          Action = CalcRun
          ParentShowHint = False
          ShowHint = True
        end
        object rzspcr4: TRzSpacer
          Left = 112
          Top = 2
        end
        object btnResultSave: TRzToolButton
          Left = 120
          Top = 2
          DisabledIndex = 35
          ImageIndex = 4
          Action = ResultSave
          ParentShowHint = False
          ShowHint = True
        end
        object btnBtnCopy: TRzToolButton
          Left = 145
          Top = 2
          DisabledIndex = 37
          ImageIndex = 5
          Action = ResultCopy
          ParentShowHint = False
          ShowHint = True
        end
        object RzSpacer2: TRzSpacer
          Left = 79
          Top = 2
        end
        object BtnExecute: TRzToolButton
          Left = 54
          Top = 2
          DisabledIndex = 41
          ImageIndex = 2
          Action = actAutoFitting
        end
        object BtnFastForward: TRzToolButton
          Left = 29
          Top = 2
          DisabledIndex = 52
          ImageIndex = 1
          Action = CalcAll
        end
        object BtnCancel: TRzToolButton
          Left = 87
          Top = 2
          DisabledIndex = 54
          ImageIndex = 3
          Action = CalcStop
        end
        object btnCopyImage: TRzToolButton
          Left = 170
          Top = 2
          ImageIndex = 6
          Action = FilePlotCopyWMF
        end
        object btnPrintGraphics: TRzToolButton
          Left = 195
          Top = 2
          ImageIndex = 7
        end
      end
    end
    object StructurePanel: TRzPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 350
      Height = 836
      Align = alLeft
      BorderOuter = fsFlatRounded
      Color = 15987699
      TabOrder = 1
      object RzToolbar2: TRzToolbar
        Left = 2
        Top = 2
        Width = 346
        Height = 29
        Images = ilStructure
        BorderInner = fsNone
        BorderOuter = fsGroove
        BorderSides = [sdTop]
        BorderWidth = 0
        StyleName = 'Windows'
        TabOrder = 0
        ToolbarControls = (
          btnPeriodAdd
          btnPeriodInsert
          btnPeriodDelete
          rzspcr1
          btnLayerAdd
          btnLayerInsert
          btnCopyLayer
          btnLayerCut
          btnLayerPaste
          RzSpacer3
          btnLayerDelete)
        object btnPeriodAdd: TRzToolButton
          Left = 4
          Top = 2
          ImageIndex = 0
          Action = PeriodAdd
          ParentShowHint = False
          ShowHint = True
        end
        object btnPeriodInsert: TRzToolButton
          Left = 29
          Top = 2
          ImageIndex = 1
          Action = PeriodInsert
          ParentShowHint = False
          ShowHint = True
        end
        object btnPeriodDelete: TRzToolButton
          Left = 54
          Top = 2
          ImageIndex = 2
          Action = PeriodDelete
          ParentShowHint = False
          ShowHint = True
        end
        object rzspcr1: TRzSpacer
          Left = 79
          Top = 2
        end
        object btnLayerAdd: TRzToolButton
          Left = 87
          Top = 2
          Hint = 'Add Layer'
          ImageIndex = 3
          Action = LayerAdd
          ParentShowHint = False
          ShowHint = True
        end
        object btnLayerInsert: TRzToolButton
          Left = 112
          Top = 2
          Hint = 'Insert Layer'
          ImageIndex = 4
          Action = LayerInsert
          ParentShowHint = False
          ShowHint = True
        end
        object btnLayerPaste: TRzToolButton
          Left = 187
          Top = 2
          Hint = 'Paste layer'
          ImageIndex = 7
          Action = LayerPaste
          ParentShowHint = False
          ShowHint = True
        end
        object btnLayerDelete: TRzToolButton
          Left = 220
          Top = 2
          Hint = 'Delete layer'
          ImageIndex = 8
          Action = LayerDelete
          ParentShowHint = False
          ShowHint = True
        end
        object btnLayerCut: TRzToolButton
          Left = 162
          Top = 2
          Hint = 'Cut layer'
          ImageIndex = 6
          Action = LayerCut
          ParentShowHint = False
          ShowHint = True
        end
        object RzSpacer3: TRzSpacer
          Left = 212
          Top = 2
        end
        object btnCopyLayer: TRzToolButton
          Left = 137
          Top = 2
          ImageIndex = 5
          Action = actLayerCopy
        end
      end
      object RzPanel2: TRzPanel
        Left = 2
        Top = 31
        Width = 346
        Height = 41
        Align = alTop
        BorderOuter = fsNone
        Color = 15987699
        TabOrder = 1
        object Label6: TLabel
          Left = 6
          Top = 10
          Width = 49
          Height = 13
          Caption = 'Increment'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object cbIncrement: TRzComboBox
          Left = 61
          Top = 6
          Width = 52
          Height = 23
          TabOrder = 0
          Text = '0.1'
          OnChange = cbIncrementChange
          Items.Strings = (
            '10'
            '5'
            '1'
            '0.1'
            '0.01'
            '0.001')
          ItemIndex = 3
          Values.Strings = (
            '10'
            '5'
            '1'
            '0.25'
            '0.1'
            '0.01'
            '0.001')
        end
        object btnSetFitLimits: TBitBtn
          Left = 265
          Top = 5
          Width = 75
          Height = 25
          Caption = 'Limits'
          TabOrder = 1
          OnClick = btnSetFitLimitsClick
        end
      end
    end
  end
  object mmMain: TMainMenu
    Left = 472
    Top = 232
    object File1: TMenuItem
      Caption = 'File'
      object File2: TMenuItem
        Action = FileNew
      end
      object Openproject1: TMenuItem
        Action = FileOpen
      end
      object Reopen1: TMenuItem
        Caption = 'Reopen ...'
      end
      object Openproject2: TMenuItem
        Action = FileSave
      end
      object Saveprojectas1: TMenuItem
        Action = FileSaveAs
      end
      object Saveprojectas2: TMenuItem
        Caption = '-'
      end
      object Settings1: TMenuItem
        Caption = 'Settings'
      end
      object Settings2: TMenuItem
        Caption = '-'
      end
      object Exit1: TMenuItem
        Action = FileClose
      end
    end
    object Project1: TMenuItem
      Caption = 'Project'
      object New1: TMenuItem
        Action = ModelCreate
        Caption = 'New model'
      end
      object Newextension1: TMenuItem
        Action = actProjectItemDuplicate
      end
      object Copymodel1: TMenuItem
        Action = actModelCopy
      end
      object PasteModel1: TMenuItem
        Action = actModelPaste
      end
    end
    object Project2: TMenuItem
      Caption = 'Structure'
      Hint = 'Add Stack'
      ImageIndex = 1
      OnClick = PeriodAddExecute
      object Add1: TMenuItem
        Action = PeriodAdd
        Caption = 'Add Period'
      end
      object Insert1: TMenuItem
        Action = PeriodInsert
        Caption = 'Insert Period'
      end
      object Delete1: TMenuItem
        Action = PeriodDelete
        Caption = 'Delete Period'
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object Add2: TMenuItem
        Action = LayerAdd
        Caption = 'Add Layer'
      end
      object Insert2: TMenuItem
        Action = LayerInsert
        Caption = 'Insert Layer'
      end
      object Copy1: TMenuItem
        Action = actLayerCopy
        Caption = 'Copy Layer'
      end
      object Paste1: TMenuItem
        Action = LayerPaste
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object Cut1: TMenuItem
        Action = LayerCut
      end
      object Delete2: TMenuItem
        Action = LayerDelete
      end
    end
    object Calc1: TMenuItem
      Caption = 'Calc'
      object Calc3: TMenuItem
        Caption = 'Calc'
        ShortCut = 116
      end
      object Calcall1: TMenuItem
        Caption = 'Calc all'
        ShortCut = 123
      end
    end
    object Result1: TMenuItem
      Caption = 'Result'
      object Save1: TMenuItem
        Action = ResultSave
      end
      object Saveplotasfile1: TMenuItem
        Action = FilePlotToFile
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Copytoclipboard1: TMenuItem
        Action = ResultCopy
      end
      object CopyasBMP1: TMenuItem
        Action = FileCopyPlotBMP
      end
      object CopyasWMF1: TMenuItem
        Action = FilePlotCopyWMF
      end
    end
    object ools1: TMenuItem
      Caption = 'Tools'
      object ShowLibrary1: TMenuItem
        Action = actShowLibrary
        Caption = 'Materials Library'
      end
    end
    object Calc2: TMenuItem
      Caption = 'Help'
      object About1: TMenuItem
        Action = HelpAbout
      end
    end
  end
  object ActionManager: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Items = <
              item
                Action = PeriodInsert
                Caption = '&Insert'
                ImageIndex = 13
              end>
            Action = PeriodAdd
            Caption = '&Add'
            ImageIndex = 1
            CommandProperties.ButtonSize = bsLarge
            CommandProperties.ButtonType = btSplit
          end
          item
            Action = PeriodDelete
            Caption = '&Delete'
            ImageIndex = 29
            CommandProperties.ButtonSize = bsLarge
          end>
      end
      item
        Items = <
          item
            Items = <
              item
                Action = LayerInsert
                Caption = '&Insert'
                ImageIndex = 2
                ShortCut = 45
              end>
            Action = LayerAdd
            Caption = '&Add'
            ImageIndex = 0
            CommandProperties.ButtonSize = bsLarge
            CommandProperties.ButtonType = btSplit
          end
          item
            Caption = '-'
          end
          item
            Action = LayerDelete
            Caption = '&Delete'
            ImageIndex = 14
            ShortCut = 16430
            CommandProperties.ButtonSize = bsLarge
          end>
      end
      item
      end
      item
        Items = <
          item
            ChangesAllowed = [caModify]
            Items = <
              item
                Action = FileNew
                Caption = '&New project'
              end
              item
                Action = FileOpen
                Caption = '&Open project ...'
                ShortCut = 114
              end
              item
                Action = FileSave
                Caption = '&Save project'
                ShortCut = 16467
              end
              item
                Action = FilePrint
                Caption = '&Print'
              end
              item
                Action = FileClose
                Caption = '&Exit'
              end>
            Caption = '&ActionClientItem0'
            KeyTip = 'F'
          end>
        AutoSize = False
      end
      item
        Items = <
          item
            Action = LayerCut
            Caption = 'C&ut'
            ImageIndex = 8
            ShortCut = 24664
            CommandProperties.ButtonSize = bsLarge
          end
          item
            Items = <
              item
                Action = LayerPasteBefore
                Caption = '&Paste before'
              end
              item
                Action = LayerPasteAfter
                Caption = 'P&aster after'
              end
              item
                Action = LayerPaste
                Caption = 'Pa&ste'
                ImageIndex = 10
                ShortCut = 24662
              end>
            Action = LayerPaste
            Caption = '&Paste'
            ImageIndex = 10
            ShortCut = 24662
            CommandProperties.ButtonSize = bsLarge
            CommandProperties.ButtonType = btSplit
          end>
      end
      item
        Items = <
          item
            Action = CalcRun
            Caption = '&Run'
            ImageIndex = 14
            ShortCut = 116
            CommandProperties.ButtonSize = bsLarge
          end>
      end
      item
        Items = <
          item
            Caption = '&ActionClientItem0'
            CommandStyle = csControl
            CommandProperties.Width = 250
          end>
      end
      item
        Items = <
          item
            Caption = '&CheckBox1'
            CommandStyle = csControl
            CommandProperties.Width = 250
          end>
      end
      item
        Items = <
          item
            Caption = '&Edit1'
            CommandStyle = csControl
            CommandProperties.Width = 250
            CommandProperties.ContainedControl = edEndL
          end>
      end
      item
        Items = <
          item
            Action = ModelCreate
            Caption = '&New'
            ImageIndex = 47
          end
          item
            Action = actItemProperites
            Caption = '&Properies'
            ImageIndex = 36
          end>
      end
      item
        Items = <
          item
            Items = <
              item
                Action = DataPaste
                Caption = '&From clipboard'
              end>
            Action = DataLoad
            Caption = '&Load'
            ImageIndex = 1
            CommandProperties.ButtonSize = bsLarge
            CommandProperties.ButtonType = btSplit
          end>
      end
      item
        Items = <
          item
            Caption = '&Label6'
            CommandStyle = csComboBox
            CommandProperties.Width = -1
          end>
      end
      item
      end
      item
        Items = <
          item
            Items = <
              item
                Action = ResultCopy
                Caption = '&Copy to clipboard'
                ImageIndex = 33
              end>
            Action = ResultSave
            ImageIndex = 2
            CommandProperties.ButtonSize = bsLarge
            CommandProperties.ButtonType = btSplit
          end>
      end
      item
        Items = <
          item
            Caption = '&ActionClientItem0'
            CommandStyle = csControl
            CommandProperties.Width = 250
          end>
      end
      item
        Items = <
          item
            Caption = '&ActionClientItem0'
          end>
      end
      item
        Items = <
          item
            ChangesAllowed = [caModify]
            Items = <
              item
                Action = FileNew
                Caption = '&New project'
              end
              item
                Action = FileOpen
                Caption = '&Open project ...'
                ShortCut = 114
              end
              item
                Items = <
                  item
                    Action = FileSave
                    Caption = '&Save project'
                    CommandStyle = csMenu
                    ImageIndex = 16
                    ShortCut = 16467
                    CommandProperties.Width = -1
                    CommandProperties.Content.Strings = (
                      'Save project with the same file name')
                    CommandProperties.Font.Charset = DEFAULT_CHARSET
                    CommandProperties.Font.Color = clWindowText
                    CommandProperties.Font.Height = -11
                    CommandProperties.Font.Name = 'Tahoma'
                    CommandProperties.Font.Style = []
                    CommandProperties.Height = 0
                    CommandProperties.ShowRichContent = True
                  end
                  item
                    Action = FileSaveAs
                    Caption = 'S&ave project As ...'
                    CommandStyle = csMenu
                    ImageIndex = 11
                    ShortCut = 113
                    CommandProperties.Width = -1
                    CommandProperties.Content.Strings = (
                      'Select file name and location')
                    CommandProperties.Font.Charset = DEFAULT_CHARSET
                    CommandProperties.Font.Color = clWindowText
                    CommandProperties.Font.Height = -11
                    CommandProperties.Font.Name = 'Tahoma'
                    CommandProperties.Font.Style = []
                    CommandProperties.Height = 0
                    CommandProperties.ShowRichContent = True
                  end>
                Action = FileSave
                Caption = '&Save project'
                ShortCut = 16467
              end
              item
                Caption = '-'
              end
              item
                ContextItems.SmallIcons = False
                ContextItems = <>
                Items = <
                  item
                    Action = FilePlotToFile
                    CommandStyle = csMenu
                    ImageIndex = 14
                    CommandProperties.Width = -1
                    CommandProperties.Font.Charset = DEFAULT_CHARSET
                    CommandProperties.Font.Color = clWindowText
                    CommandProperties.Font.Height = -11
                    CommandProperties.Font.Name = 'Tahoma'
                    CommandProperties.Font.Style = []
                    CommandProperties.Height = 0
                  end
                  item
                    Action = FileCopyPlotBMP
                    Caption = '&Copy as BMP'
                    CommandStyle = csMenu
                    ImageIndex = 13
                    CommandProperties.Width = -1
                    CommandProperties.Content.Strings = (
                      'Copy plot to clipboard as bitmap')
                    CommandProperties.Font.Charset = DEFAULT_CHARSET
                    CommandProperties.Font.Color = clWindowText
                    CommandProperties.Font.Height = -11
                    CommandProperties.Font.Name = 'Tahoma'
                    CommandProperties.Font.Style = []
                    CommandProperties.Height = 0
                    CommandProperties.ShowRichContent = True
                  end
                  item
                    Action = FilePlotCopyWMF
                    Caption = 'C&opy as WMF'
                    CommandStyle = csMenu
                    ImageIndex = 13
                    CommandProperties.Width = -1
                    CommandProperties.Content.Strings = (
                      'Copy plot to clipboard as Windows metafile')
                    CommandProperties.Font.Charset = DEFAULT_CHARSET
                    CommandProperties.Font.Color = clWindowText
                    CommandProperties.Font.Height = -11
                    CommandProperties.Font.Name = 'Tahoma'
                    CommandProperties.Font.Style = []
                    CommandProperties.Height = 0
                    CommandProperties.ShowRichContent = True
                  end>
                Caption = 'E&xport plot'
                ImageIndex = 15
              end
              item
                Action = FilePrint
                Caption = '&Print'
              end
              item
                Caption = '-'
              end
              item
                Action = FileClose
                Caption = '&Exit'
              end>
            Caption = '&ActionClientItem0'
            KeyTip = 'F'
          end>
        AutoSize = False
      end
      item
        Items = <
          item
            Action = ModelCreate
            Caption = '&New'
            ImageIndex = 47
          end>
      end
      item
        Items = <
          item
            Caption = '-'
          end>
      end
      item
        Items = <
          item
            Action = PeriodAdd
            Caption = '&Add'
            ImageIndex = 1
          end
          item
            Action = PeriodInsert
            Caption = '&Insert'
            ImageIndex = 13
          end
          item
            Action = PeriodDelete
            Caption = '&Delete'
            ImageIndex = 29
          end>
      end
      item
        Items = <
          item
            Items = <
              item
                Action = LayerInsert
                Caption = '&Insert'
                ImageIndex = 2
                ShortCut = 45
              end>
            Action = LayerAdd
            Caption = '&Add'
            ImageIndex = 0
            CommandProperties.ButtonSize = bsLarge
            CommandProperties.ButtonType = btSplit
          end
          item
            Caption = '-'
          end
          item
            Items = <
              item
                Action = LayerPasteBefore
                Caption = '&Paste before'
              end
              item
                Action = LayerPasteAfter
                Caption = 'P&aster after'
              end>
            Action = LayerPaste
            Caption = '&Paste'
            ImageIndex = 10
            ShortCut = 24662
            CommandProperties.ButtonType = btSplit
          end
          item
            Items = <
              item
                Action = LayerCut
                Caption = '&Cut'
                ImageIndex = 8
                ShortCut = 24664
              end>
            Action = LayerDelete
            Caption = '&Delete'
            ImageIndex = 14
            ShortCut = 16430
            CommandProperties.ButtonType = btSplit
          end>
      end
      item
        Items = <
          item
            Items = <
              item
                Action = CalcAll
                Caption = '&Compute All'
                ShortCut = 123
              end>
            Action = CalcRun
            Caption = '&Run'
            ImageIndex = 9
            ShortCut = 116
            CommandProperties.ButtonSize = bsLarge
            CommandProperties.ButtonType = btDropDown
          end
          item
            Caption = '-'
          end
          item
            Action = CalcStop
            Caption = '&Stop'
            ImageIndex = 4
            CommandProperties.ButtonSize = bsLarge
          end
          item
            Color = 16776176
            Caption = '-'
          end
          item
            Action = actAutoFitting
            Caption = '&Auto Fitting'
            ImageIndex = 50
            ShortCut = 118
            CommandProperties.ButtonSize = bsLarge
          end>
      end
      item
        Items = <
          item
            Action = ResultSave
            ImageIndex = 2
          end>
      end
      item
        Items = <
          item
            Items = <
              item
                Action = ResultCopy
                Caption = '&Copy to clipboard'
                ImageIndex = 33
              end>
            Action = ResultSave
            Caption = '&Export'
            ImageIndex = 35
            CommandProperties.ButtonSize = bsLarge
            CommandProperties.ButtonType = btSplit
          end>
      end
      item
        Items = <
          item
            Caption = '&ActionClientItem0'
            CommandStyle = csControl
            CommandProperties.Width = 150
          end>
      end
      item
        Items = <
          item
            Action = ProjectAddFolder
            Caption = '&New Folder'
          end>
      end
      item
        Items = <
          item
            Caption = '&RibbonSpinEdit1'
          end>
      end
      item
        Items = <
          item
            Action = ModelCreate
            Caption = 'N&ew Model'
            ImageIndex = 47
          end
          item
            Action = ProjectAddFolder
            Caption = '&New Folder'
            ImageIndex = 23
          end
          item
            Action = ProjectItemExtension
            Caption = 'Ne&w extension'
            ImageIndex = 0
          end
          item
            Caption = '-'
          end
          item
            Action = ProjectItemCopy
            Caption = '&Copy as text'
            ImageIndex = 11
          end
          item
            Action = actItemProperites
            Caption = '&Properies'
            ImageIndex = 36
          end
          item
            Action = ProjectItemDelete
            Caption = '&Delete Item'
            ImageIndex = 48
          end>
      end
      item
        Items = <
          item
            Items = <
              item
                Action = DataPaste
                Caption = '&From clipboard'
                ImageIndex = 10
              end>
            Action = DataLoad
            Caption = '&Load'
            ImageIndex = 23
            KeyTip = #1087#1086#1088#1087#1087#1086#1088#1087#1086#1087#1086#1088#1086
            CommandProperties.ButtonSize = bsLarge
            CommandProperties.ButtonType = btSplit
          end
          item
            Caption = '-'
          end
          item
            Action = DataNormAuto
            Caption = '&Auto merge'
          end
          item
            Action = DataNormMan
            Caption = '&Manual merge'
          end
          item
            Action = DataNorm
            Caption = '&Normalize'
          end>
      end
      item
        AutoSize = False
      end
      item
        Items = <
          item
            Action = FileNew
            Caption = '&New'
            CommandProperties.ButtonSize = bsLarge
          end
          item
            Caption = '-'
          end
          item
            Tag = 888
            Action = FileOpen
            Caption = '&Open'
            ShortCut = 114
            CommandProperties.ButtonSize = bsLarge
            CommandProperties.ButtonType = btSplit
          end
          item
            Caption = '-'
          end
          item
            Action = FileSave
            Caption = '&Save'
            ShortCut = 16467
            CommandProperties.ButtonSize = bsLarge
          end
          item
            Caption = '-'
          end
          item
            Action = FileSaveAs
            Caption = 'S&ave as'
            ShortCut = 113
          end
          item
            Items = <
              item
                Action = FileCopyPlotBMP
                Caption = '&Copy as BMP'
              end
              item
                Action = FilePlotCopyWMF
                Caption = 'C&opy as WMF'
              end
              item
                Caption = '&ActionClientItem2'
              end>
            Action = FilePrint
            Caption = '&Print'
            ImageIndex = 4
          end>
      end
      item
        Items = <
          item
            Items = <
              item
                Action = FileCopyPlotBMP
                Caption = '&Copy as BMP'
              end
              item
                Action = FilePlotCopyWMF
                Caption = 'C&opy as WMF'
              end>
            Action = FilePlotToFile
            Caption = '&Save'
            ImageIndex = 15
            CommandProperties.ButtonSize = bsLarge
            CommandProperties.ButtonType = btSplit
          end>
      end
      item
        Items = <
          item
            Action = HelpRegistration
            Caption = '&Input Serial'#13#10'Number'
            ImageIndex = 18
            CommandProperties.ButtonSize = bsLarge
          end>
      end
      item
        Items = <
          item
            Action = HelpContent
            Caption = '&Manual'
            ImageIndex = 26
            ShortCut = 112
            CommandProperties.ButtonSize = bsLarge
          end
          item
            Action = HelpAbout
            Caption = '&About'
            ImageIndex = 25
            CommandProperties.ButtonSize = bsLarge
          end>
      end
      item
        Items = <
          item
            Action = actHomePage
            Caption = '&Home'#13#10'Page'
            ImageIndex = 19
            CommandProperties.ButtonSize = bsLarge
          end
          item
            Action = actWiki
            Caption = '&Wiki'
            ImageIndex = 20
            CommandProperties.ButtonSize = bsLarge
          end
          item
            Action = actSupport
            Caption = '&Support'
            ImageIndex = 22
            CommandProperties.ButtonSize = bsLarge
          end>
      end
      item
        Items = <
          item
            Action = actQuickStart
            Caption = '&Getting started'
            ImageIndex = 23
            CommandProperties.ButtonSize = bsLarge
          end
          item
            Caption = '-'
          end
          item
            Action = actHelpStructure
            Caption = '&Multilayer'#13#10'Structure'
            ImageIndex = 24
            CommandProperties.ButtonSize = bsLarge
          end
          item
            Action = actHelpFitting
            Caption = '&Fitting'
            ImageIndex = 24
            CommandProperties.ButtonSize = bsLarge
          end>
      end
      item
        Items = <
          item
            Caption = '-'
          end
          item
            Action = CalcStop
            Caption = 'S&top'
            ImageIndex = 4
            CommandProperties.ButtonSize = bsLarge
          end>
      end
      item
      end
      item
        Items = <
          item
            Action = actShowLibrary
            Caption = '&Library'
            ImageIndex = 19
            CommandProperties.ButtonSize = bsLarge
          end>
      end>
    Left = 688
    Top = 200
    StyleName = 'Ribbon - Luna'
    object FileNew: TAction
      Category = 'Project'
      Caption = 'New project'
      OnExecute = FileNewExecute
    end
    object FileOpen: TAction
      Category = 'Project'
      Caption = 'Open project ...'
      ShortCut = 114
      OnExecute = FileOpenExecute
    end
    object FileSave: TAction
      Category = 'Project'
      Caption = 'Save project'
      ShortCut = 16467
      OnExecute = FileSaveExecute
    end
    object FilePrint: TAction
      Category = 'Project'
      Caption = 'Print'
      OnExecute = FilePrintExecute
    end
    object FileClose: TAction
      Category = 'Project'
      Caption = 'Exit'
    end
    object LayerAdd: TAction
      Category = 'Layer'
      Caption = 'Add'
      ImageIndex = 0
      OnExecute = LayerAddExecute
    end
    object LayerInsert: TAction
      Category = 'Layer'
      Caption = 'Insert'
      ImageIndex = 2
      ShortCut = 45
      OnExecute = LayerInsertExecute
    end
    object LayerDelete: TAction
      Category = 'Layer'
      Caption = 'Delete'
      ImageIndex = 14
      ShortCut = 16430
      OnExecute = LayerDeleteExecute
    end
    object PeriodAdd: TAction
      Category = 'Period'
      Caption = 'Add'
      Hint = 'Add Stack'
      ImageIndex = 1
      OnExecute = PeriodAddExecute
    end
    object PeriodInsert: TAction
      Category = 'Period'
      Caption = 'Insert'
      Hint = 'Insert Stack'
      ImageIndex = 13
      OnExecute = PeriodInsertExecute
    end
    object PeriodDelete: TAction
      Category = 'Period'
      Caption = 'Delete'
      Hint = 'Delete stack'
      ImageIndex = 29
      OnExecute = PeriodDeleteExecute
    end
    object actLayerCopy: TAction
      Category = 'Layer'
      Caption = 'Copy'
      Hint = 'Copy Layer'
      ImageIndex = 6
      OnExecute = actLayerCopyExecute
    end
    object LayerCut: TAction
      Category = 'Layer'
      Caption = 'Cut'
      ImageIndex = 8
      ShortCut = 24664
      OnExecute = LayerCutExecute
    end
    object LayerPaste: TAction
      Category = 'Layer'
      Caption = 'Paste'
      Hint = 'Paste & replace'
      ImageIndex = 10
      ShortCut = 24662
      OnExecute = LayerPasteExecute
    end
    object LayerPasteBefore: TAction
      Category = 'Layer'
      Caption = 'Paste before'
    end
    object LayerPasteAfter: TAction
      Category = 'Layer'
      Caption = 'Paster after'
    end
    object CalcRun: TAction
      Category = 'Calc'
      Caption = 'Run'
      Hint = 'Start calculation'
      ImageIndex = 43
      ShortCut = 116
      OnExecute = CalcRunExecute
    end
    object ModelCreate: TAction
      Category = 'Project Item'
      Caption = 'New'
      Hint = 'Add project item'
      ImageIndex = 47
      OnExecute = ModelCreateExecute
    end
    object actItemProperites: TAction
      Category = 'Project Item'
      Caption = 'Properies'
      ImageIndex = 36
      OnExecute = actItemProperitesExecute
    end
    object DataLoad: TAction
      Category = 'Data'
      Caption = 'Load'
      ImageIndex = 23
      OnExecute = DataLoadExecute
    end
    object DataPaste: TAction
      Category = 'Data'
      Caption = 'From clipboard'
      ImageIndex = 10
      OnExecute = DataPasteExecute
    end
    object ResultSave: TAction
      Category = 'Result'
      Caption = 'Export ...'
      ImageIndex = 35
      OnExecute = ResultSaveExecute
    end
    object ResultCopy: TAction
      Category = 'Result'
      Caption = 'Copy to clipboard'
      ImageIndex = 33
      OnExecute = ResultCopyExecute
    end
    object FileSaveAs: TAction
      Category = 'Project'
      Caption = 'Save project As ...'
      ShortCut = 113
      OnExecute = FileSaveAsExecute
    end
    object ProjectAddFolder: TAction
      Category = 'Project Item'
      Caption = 'New Folder'
      ImageIndex = 23
      OnExecute = ProjectAddFolderExecute
    end
    object CalcAll: TAction
      Category = 'Calc'
      Caption = 'Calc all models'
      ShortCut = 123
      OnExecute = CalcAllExecute
    end
    object ProjectItemDelete: TAction
      Category = 'Project Item'
      Caption = 'Delete Item'
      ImageIndex = 48
      OnExecute = ProjectItemDeleteExecute
    end
    object ProjectItemCopy: TAction
      Category = 'Project Item'
      Caption = 'Copy as text'
      ImageIndex = 11
      OnExecute = ProjectItemCopyExecute
    end
    object CalcStop: TAction
      Category = 'Calc'
      Caption = 'Stop'
      ImageIndex = 46
      OnExecute = CalcStopExecute
    end
    object DataNormAuto: TAction
      Category = 'Data'
      Caption = 'Auto'
    end
    object DataNormMan: TAction
      Category = 'Data'
      Caption = 'Manual'
    end
    object DataNorm: TAction
      Category = 'Data'
      Caption = 'Normalize'
      OnExecute = DataNormExecute
    end
    object FilePlotToFile: TAction
      Category = 'Plot'
      Caption = 'Save as graphics ...'
      OnExecute = FilePlotToFileExecute
    end
    object FileCopyPlotBMP: TAction
      Category = 'Plot'
      Caption = 'Copy as BMP'
      OnExecute = FileCopyPlotBMPExecute
    end
    object FilePlotCopyWMF: TAction
      Category = 'Plot'
      Caption = 'Copy as WMF'
      OnExecute = FilePlotCopyWMFExecute
    end
    object HelpHelp: TAction
      Category = 'Help'
      Caption = 'Help'
      ImageIndex = 18
    end
    object HelpRegistration: TAction
      Category = 'Help'
      Caption = 'Registration'
      ImageIndex = 22
    end
    object HelpAbout: TAction
      Category = 'Help'
      Caption = 'About ...'
      ImageIndex = 21
      OnExecute = HelpAboutExecute
    end
    object HelpContent: TAction
      Category = 'Help'
      Caption = 'Help content'
      ImageIndex = 19
      ShortCut = 112
    end
    object actHomePage: TAction
      Category = 'Help'
      Caption = 'Home'#13#10'Page'
    end
    object actCheckUpdate: TAction
      Category = 'Help'
      Caption = 'Check for'#13#10'Update'
    end
    object actWiki: TAction
      Category = 'Help'
      Caption = 'Wiki'
    end
    object actSupport: TAction
      Category = 'Help'
      Caption = 'Support'
    end
    object actQuickStart: TAction
      Category = 'Help'
      Caption = 'Getting Started'
    end
    object actHelpStructure: TAction
      Category = 'Help'
      Caption = 'Multilayer'#13#10'Structure'
    end
    object actHelpFitting: TAction
      Category = 'Help'
      Caption = 'Fitting'
    end
    object ProjectItemExtension: TAction
      Category = 'Project Item'
      Caption = 'New extension'
      ImageIndex = 0
      OnExecute = ProjectItemExtensionExecute
    end
    object DataCopyClpbrd: TAction
      Category = 'Data'
      Caption = 'DataCopyClpbrd'
      OnExecute = DataCopyClpbrdExecute
    end
    object DataExport: TAction
      Category = 'Data'
      Caption = 'DataExport'
      OnExecute = DataExportExecute
    end
    object actShowLibrary: TAction
      Category = 'Materials'
      Caption = 'Show Library'
      OnExecute = actShowLibraryExecute
    end
    object actAutoFitting: TAction
      Category = 'Calc'
      Caption = 'Auto Fitting'
      ImageIndex = 50
      ShortCut = 118
      OnExecute = actAutoFittingExecute
    end
    object actProjectItemDuplicate: TAction
      Category = 'Project Item'
      Caption = 'Duplicate Model'
      Hint = 'Duplicate model'
      ImageIndex = 57
      OnExecute = actProjectItemDuplicateExecute
    end
    object actModelCopy: TAction
      Category = 'Project Item'
      Caption = 'Copy model'
      OnExecute = actModelCopyExecute
    end
    object actModelPaste: TAction
      Category = 'Project Item'
      Caption = 'Paste Model'
      OnExecute = actModelPasteExecute
    end
  end
  object ilProject: TImageList
    ColorDepth = cd32Bit
    Left = 176
    Top = 72
    Bitmap = {
      494C010116001800040010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000006000000001002000000000000060
      000000000000000000000000000000000000000000000000000000000000E2EF
      F100E5E5E500E5E5E500E5E5E500E5E5E500E5E5E50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E5E5E500C0C0
      C0009999990080808000808080009999990099A8AC00C0C0C000CCCCCC00E2EF
      F10000000000000000000000000000000000000000000000000000000000C0C0
      C00099999900999999008080800099999900CCCCCC00C0C0C000CCCCCC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CCCCCC00CCCC
      CC00CCCC9900CCCC9900CCCC990099999900808080006666660080808000B2B2
      B200E5E5E5000000000000000000000000000000000000000000CCCCCC00CCCC
      CC00C0C0C000C0C0C000C0C0C00099999900808080009999990080808000B2B2
      B200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E5E5E500FFFFCC00F2EA
      BF00F2EABF00CCCC9900ECC6D900FFCC9900F2EABF00F2EABF00808080006666
      660099999900E5E5E50000000000000000000000000000000000000000000000
      000000000000C0C0C000CCCCCC00C0C0C0000000000000000000808080009999
      9900999999000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFCC9900F2EABF00F2EA
      BF00CCCCCC00ECC6D90000990000CCCCCC00CCCCCC00CCCCCC00FFFFCC00B2B2
      B200646F7100CCCCCC00000000000000000000000000C0C0C000000000000000
      0000CCCCCC00CCCCCC0099999900CCCCCC00CCCCCC00CCCCCC0000000000B2B2
      B20099999900CCCCCC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFCC9900FFCC9900E5E5
      E500ECC6D900ECC6D9000099000000990000009900000099000099CC9900F2EA
      BF0080808000B2B2B200E2EFF1000000000000000000C0C0C000C0C0C0000000
      0000CCCCCC00CCCCCC0099999900999999009999990099999900B2B2B2000000
      000080808000B2B2B20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E5E5E500FFCC9900E5E5E500E5E5
      E500ECC6D900C0C0C000009900000099000066CC6600CCFFCC0033CC3300FFCC
      990080808000B2B2B200E2EFF1000000000000000000C0C0C000000000000000
      0000CCCCCC00C0C0C0009999990099999900CCCCCC000000000099999900C0C0
      C00080808000B2B2B20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F2EABF00F2EABF00FFFFFF00FFFF
      FF00CC999900ECC6D90099CC9900CCCC990033CC330099CC990099CC9900CCCC
      99009999990099999900E5E5E50000000000CCCCCC0000000000000000000000
      000099999900CCCCCC00B2B2B200C0C0C00099999900B2B2B200B2B2B200C0C0
      C000999999009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F2EABF00FFFFCC00FFFFFF00ECC6
      D900CC999900ECC6D90066993300FFFFFF0066CC66000099000000990000F2EA
      BF009999990099999900E5E5E50000000000CCCCCC000000000000000000CCCC
      CC0099999900CCCCCC009999990000000000CCCCCC0099999900999999000000
      0000999999009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F2EABF00FFFFFF00FFFFFF00ECC6
      D900ECC6D900ECC6D90099CC990000990000339933000099000000990000F2EA
      BF00CCCC990080808000E5E5E50000000000CCCCCC000000000000000000CCCC
      CC00CCCCCC00CCCCCC00B2B2B200999999009999990099999900999999000000
      0000C0C0C0008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFCC00FFFFCC00FFFFCC00FFFF
      FF00FFFFFF00E2EFF100E5E5E50099CC990099CC990066CC660000990000FFFF
      CC00C0C0C00080808000CCCCCC0000000000CCCCCC0000000000000000000000
      0000000000000000000000000000B2B2B200B2B2B200CCCCCC00999999000000
      0000C0C0C00080808000CCCCCC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFCC00FFFFCC00FFFFCC00FFFF
      CC00E2EFF100E2EFF100E2EFF100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFCC00646F7100CCCCCC0000000000CCCCCC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099999900CCCCCC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F2EABF00F2EABF00F2EABF00E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E2EFF100F2EABF00FFFF
      CC00FFFFCC00646F7100CCCCCC000000000000000000CCCCCC00CCCCCC000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099999900CCCCCC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E5E5E500E5E5E50099CC
      FF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00E2EFF10099CCFF00FFCC9900FFCC
      9900FFFFCC0080808000E5E5E50000000000000000000000000000000000CCCC
      CC000000000000000000000000000000000000000000CCCCCC00C0C0C000C0C0
      C000000000008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E2EF
      F10099CCFF0099CCFF0099CCFF00CCFFFF00CCFFFF0099CCFF00FFCC9900FFCC
      9900FFCC9900C0C0C000E2EFF100000000000000000000000000000000000000
      0000CCCCCC00CCCCCC00CCCCCC000000000000000000CCCCCC00C0C0C000C0C0
      C000C0C0C000C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099CCFF0099CCFF0099CCFF00F2EABF00F2EA
      BF00E5E5E500E2EFF10000000000000000000000000000000000000000000000
      0000000000000000000000000000CCCCCC00CCCCCC00CCCCCC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000033333300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006666660099999900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC996600CC99660000000000000000000000000000000000999999009999
      9900999999009999990099999900999999009999990099999900999999009999
      9900999999009999990000000000000000003333330066666600666666006666
      6600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009999990066666600666666006666
      6600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC99660000000000000000000000000000000000999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009999990000000000000000000000000099999900CCCCCC009999
      9900666666006666660000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099999900CCCCCC009999
      9900666666006666660000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CC996600FFFF
      FF00CCCCCC00CCCCCC00CCCCCC00CCCCCC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC99660000000000000000000000000000000000999999000000
      0000CCCCCC00CCCCCC00CCCCCC00CCCCCC000000000000000000000000000000
      0000000000009999990000000000000000000000000099999900CCCCCC00CCCC
      CC00999999009999990066666600666666000000000000000000000000000000
      0000000000000000000000000000000000000000000099999900CCCCCC00CCCC
      CC00999999009999990066666600666666000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0099330000FFFFFF00FFFF
      FF00FFFFFF00CC99660000000000000000000000000000000000999999000000
      0000000000000000000000000000000000000000000099999900000000000000
      000000000000999999000000000000000000000000000000000099999900CCCC
      CC00CCCCCC009999990099999900999999006666660066666600000000000000
      000000000000000000000000000000000000000000000000000099999900CCCC
      CC00CCCCCC009999990099999900999999006666660066666600000000000000
      0000000000000000000000000000000000000000000000000000CC996600FFFF
      FF00CCCCCC00CCCCCC00FFFFFF00FFFFFF009933000099330000FFFFFF00FFFF
      FF00FFFFFF00CC99660000000000000000000000000000000000999999000000
      0000CCCCCC00CCCCCC0000000000000000009999990099999900000000000000
      000000000000999999000000000000000000000000000000000099999900E5E5
      E500CCCCCC00CCCCCC0099999900999999009999990099330000663300006633
      000000000000000000000000000000000000000000000000000099999900E5E5
      E500CCCCCC00CCCCCC0099999900999999009999990099999900666666006666
      6600000000000000000000000000000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0099330000993300009933000099330000CC99
      6600FFFFFF00CC99660000000000000000000000000000000000999999000000
      000000000000000000000000000099999900999999009999990099999900CCCC
      CC00000000009999990000000000000000000000000000000000000000009999
      9900E5E5E500CCCCCC00CCCCCC00999999009933000099330000993300009933
      0000663300000000000000000000000000000000000000000000000000009999
      9900E5E5E500CCCCCC00CCCCCC00999999009999990099999900999999009999
      9900666666000000000000000000000000000000000000000000CC996600FFFF
      FF00CCCCCC00CCCCCC00FFFFFF00FFFFFF009933000099330000FFFFFF009933
      0000FFFFFF00CC99660000000000000000000000000000000000999999000000
      0000CCCCCC00CCCCCC0000000000000000009999990099999900000000009999
      9900000000009999990000000000000000000000000000000000000000009999
      9900FFFFFF00E5E5E500CCCCCC00993300009933000099330000993300009933
      0000993300006633000000000000000000000000000000000000000000009999
      9900FFFFFF00E5E5E500CCCCCC00999999009999990099999900999999009999
      9900999999006666660000000000000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0099330000FFFFFF009933
      0000FFFFFF00CC99660000000000000000000000000000000000999999000000
      0000000000000000000000000000000000000000000099999900000000009999
      9900000000009999990000000000000000000000000000000000000000000000
      000099999900FFFFFF0099330000CC6633009933000099330000993300009933
      0000993300009933000066330000000000000000000000000000000000000000
      000099999900FFFFFF0099999900CCCCCC009999990099999900999999009999
      9900999999009999990066666600000000000000000000000000CC996600FFFF
      FF00CCCCCC00CCCCCC00CCCCCC00FFFFFF00FFFFFF00FFFFFF00FFFFFF009933
      0000FFFFFF00CC99660000000000000000000000000000000000999999000000
      0000CCCCCC00CCCCCC00CCCCCC00000000000000000000000000000000009999
      9900000000009999990000000000000000000000000000000000000000000000
      00009999990099330000CC66330099330000CC66330099330000993300009933
      0000993300009933000099330000663300000000000000000000000000000000
      00009999990099999900CCCCCC0099999900CCCCCC0099999900999999009999
      9900999999009999990099999900666666000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009933
      0000FFFFFF00CC99660000000000000000000000000000000000999999000000
      0000000000000000000000000000000000000000000000000000000000009999
      9900000000009999990000000000000000000000000000000000000000000000
      0000000000009933000099330000CC66330099330000CC663300993300009933
      0000993300009933000099330000993300000000000000000000000000000000
      0000000000009999990099999900CCCCCC0099999900CCCCCC00999999009999
      9900999999009999990099999900999999000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF009933000099330000993300009933000099330000CC99
      6600FFFFFF00CC99660000000000000000000000000000000000999999000000
      000000000000000000009999990099999900999999009999990099999900CCCC
      CC00000000009999990000000000000000000000000000000000000000000000
      000000000000993300009933000099330000CC66330099330000CC6633009933
      0000993300009933000099330000999999000000000000000000000000000000
      000000000000999999009999990099999900CCCCCC0099999900CCCCCC009999
      9900999999009999990099999900999999000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC99660000000000000000000000000000000000999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009999990000000000000000000000000000000000000000000000
      00000000000000000000993300009933000099330000CC66330099330000CC66
      3300993300009933000099999900999999000000000000000000000000000000
      00000000000000000000999999009999990099999900CCCCCC0099999900CCCC
      CC00999999009999990099999900999999000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC99660000000000000000000000000000000000999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000993300009933000099330000CC6633009933
      000099330000CCCCCC00CCCCCC00999999000000000000000000000000000000
      0000000000000000000000000000999999009999990099999900CCCCCC009999
      990099999900CCCCCC00CCCCCC00999999000000000000000000CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC996600CC99660000000000000000000000000000000000999999009999
      9900999999009999990099999900999999009999990099999900999999009999
      9900999999009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009933000099330000993300009933
      0000E5E5E500E5E5E500CCCCCC00CCCCCC000000000000000000000000000000
      0000000000000000000000000000000000009999990099999900999999009999
      9900E5E5E500E5E5E500CCCCCC00CCCCCC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000003399CC00006699000066990000669900006699000066
      9900006699000066990000669900000000000000000000000000000000000000
      0000000000000000000099999900999999009999990099999900999999009999
      9900999999009999990099999900000000000000000000000000000000000000
      0000000000000000000000000000CC996600CC996600CC996600CC996600CC99
      6600CC996600CC996600CC996600CC9966000000000000000000000000000000
      0000000000000000000000000000999999009999990099999900999999009999
      9900999999009999990099999900999999000000000000000000000000000000
      000000000000000000003399CC0099FFFF0099FFFF0099FFFF0099FFFF0099FF
      FF0099FFFF0099FFFF0000669900000000000000000000000000000000000000
      0000000000000000000099999900CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000000000000000000000000
      0000000000000000000000000000CC996600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC9966000000000000000000000000000000
      0000000000000000000000000000999999000000000000000000000000000000
      0000000000000000000000000000999999000000000000000000000000000000
      000000000000000000003399CC0099FFFF0099FFFF0099FFFF0099FFFF0099FF
      FF0099FFFF0099FFFF0000669900000000000000000000000000000000000000
      0000000000000000000099999900CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000000000000006699000066
      9900006699000066990000669900CC996600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC9966000000000000000000999999009999
      9900999999009999990099999900999999000000000000000000000000000000
      0000000000000000000000000000999999000000000000000000000000000000
      000000000000000000003399CC0099FFFF0099FFFF0099FFFF0099FFFF0099FF
      FF0099FFFF0099FFFF0000669900000000000000000000000000000000000000
      0000000000000000000099999900CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC009999990000000000000000003399CC0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF00CC996600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC9966000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00999999000000000000000000000000000000
      0000000000000000000000000000999999000000000000000000000000000000
      000000000000000000003399CC0099FFFF0099FFFF0099FFFF0099FFFF0099FF
      FF0099FFFF0099FFFF0000669900000000000000000000000000000000000000
      0000000000000000000099999900CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC009999990000000000000000003399CC00CCFFFF0099FF
      FF0099FFFF0099FFFF0099FFFF00CC996600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC9966000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00999999000000000000000000000000000000
      00000000000000000000000000009999990000000000CC996600CC996600CC99
      6600CC996600CC9966003399CC0099FFFF0099FFFF0099FFFF0099FFFF0099FF
      FF0099FFFF0099FFFF0000669900000000000000000099999900999999009999
      9900999999009999990099999900CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC009999990000000000000000003399CC0099FFFF00CCFF
      FF0099FFFF0099FFFF0099FFFF00CC996600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC9966000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00999999000000000000000000000000000000
      00000000000000000000000000009999990000000000CC996600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF003399CC0099FFFF0099FFFF0099FFFF0099FFFF0099FF
      FF0099FFFF0099FFFF0000669900000000000000000099999900000000000000
      0000000000000000000099999900CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC009999990000000000000000003399CC00CCFFFF0099FF
      FF00CCFFFF0099FFFF0099FFFF00CC996600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC9966000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00999999000000000000000000000000000000
      00000000000000000000000000009999990000000000CC996600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF003399CC0099FFFF0099FFFF0099FFFF0099FFFF003399
      CC003399CC003399CC003399CC00000000000000000099999900000000000000
      0000000000000000000099999900CCCCCC00CCCCCC00CCCCCC00CCCCCC009999
      990099999900999999009999990000000000000000003399CC0099FFFF00CCFF
      FF0099FFFF00CCFFFF0099FFFF00CC996600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CC996600CC996600CC996600CC9966000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00999999000000000000000000000000000000
      00009999990099999900999999009999990000000000CC996600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF003399CC0099FFFF0099FFFF0099FFFF0099FFFF003399
      CC00CCFFFF000066990000000000000000000000000099999900000000000000
      0000000000000000000099999900CCCCCC00CCCCCC00CCCCCC00CCCCCC009999
      9900CCCCCC00999999000000000000000000000000003399CC00CCFFFF0099FF
      FF00CCFFFF0099FFFF00CCFFFF00CC996600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CC996600E5E5E500CC996600000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00999999000000000000000000000000000000
      00009999990000000000999999000000000000000000CC996600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF003399CC0099FFFF0099FFFF0099FFFF0099FFFF003399
      CC00006699000000000000000000000000000000000099999900000000000000
      0000000000000000000099999900CCCCCC00CCCCCC00CCCCCC00CCCCCC009999
      990099999900000000000000000000000000000000003399CC0099FFFF00CCFF
      FF0099FFFF00CCFFFF0099FFFF00CC996600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CC996600CC99660000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00999999000000000000000000000000000000
      00009999990099999900000000000000000000000000CC996600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF003399CC003399CC003399CC003399CC003399CC003399
      CC00000000000000000000000000000000000000000099999900000000000000
      0000000000000000000099999900999999009999990099999900999999009999
      990000000000000000000000000000000000000000003399CC00CCFFFF0099FF
      FF00CCFFFF0099FFFF00CCFFFF00CC996600CC996600CC996600CC996600CC99
      6600CC9966000000000000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00999999009999990099999900999999009999
      99009999990000000000000000000000000000000000CC996600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC996600000000000000
      0000000000000000000000000000000000000000000099999900000000000000
      0000000000000000000000000000000000000000000099999900000000000000
      000000000000000000000000000000000000000000003399CC00CCFFFF00CCFF
      FF0099FFFF00CCFFFF0099FFFF00CCFFFF0099FFFF00CCFFFF0099FFFF0099FF
      FF00006699000000000000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC009999990000000000000000000000000000000000CC996600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CC996600CC996600CC996600CC996600000000000000
      0000000000000000000000000000000000000000000099999900000000000000
      0000000000000000000099999900999999009999990099999900000000000000
      000000000000000000000000000000000000000000003399CC00CCFFFF00CCFF
      FF00CC6600009933000099330000993300009933000099330000CCFFFF0099FF
      FF00006699000000000000000000000000000000000099999900CCCCCC00CCCC
      CC00999999009999990099999900999999009999990099999900CCCCCC00CCCC
      CC009999990000000000000000000000000000000000CC996600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CC996600E5E5E500CC99660000000000000000000000
      0000000000000000000000000000000000000000000099999900000000000000
      0000000000000000000099999900000000009999990000000000000000000000
      000000000000000000000000000000000000000000003399CC00CCFFFF00CCFF
      FF00CC660000FFFFFF00FF990000FF990000FF9900009933000099FFFF00CCFF
      FF00006699000000000000000000000000000000000099999900CCCCCC00CCCC
      CC0099999900FFFFFF00CCCCCC00CCCCCC00CCCCCC0099999900CCCCCC00CCCC
      CC009999990000000000000000000000000000000000CC996600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CC996600CC9966000000000000000000000000000000
      0000000000000000000000000000000000000000000099999900000000000000
      0000000000000000000099999900999999000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003399CC003399
      CC003399CC00CC660000FFFFFF00FF990000993300003399CC003399CC003399
      CC00000000000000000000000000000000000000000000000000999999009999
      99009999990099999900FFFFFF00CCCCCC009999990099999900999999009999
      99000000000000000000000000000000000000000000CC996600CC996600CC99
      6600CC996600CC996600CC996600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099999900999999009999
      9900999999009999990099999900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CC660000CC6600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099999900999999000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CC996600CC996600CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC996600CC996600CC996600CC9966009999990099999900999999009999
      9900999999009999990099999900999999009999990099999900999999009999
      9900999999009999990099999900999999000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000993300000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000999999000000
      000000000000000000000000000000000000CC996600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC9966009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000999999000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000993300009933
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000999999009999
      990000000000000000000000000000000000CC996600FFFFFF00CC996600CC99
      6600CC996600CC996600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC9966009999990000000000999999009999
      9900999999009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000999999000000000000000000000000009933
      0000993300009933000099330000993300009933000099330000993300009933
      0000993300000000000000000000000000000000000000000000000000009999
      9900999999009999990099999900999999009999990099999900999999009999
      990099999900000000000000000000000000CC996600FFFFFF00CC996600FFFF
      FF00FFFFFF00CC996600FFFFFF00993300009933000099330000993300009933
      00009933000099330000FFFFFF00CC9966009999990000000000999999000000
      0000000000009999990000000000999999009999990099999900999999009999
      9900999999009999990000000000999999000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000993300009933
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000999999009999
      990000000000000000000000000000000000CC996600FFFFFF00CC996600FFFF
      FF00FFFFFF00CC996600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC9966009999990000000000999999000000
      0000000000009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000999999000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000993300000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000999999000000
      000000000000000000000000000000000000CC996600FFFFFF00CC996600CC99
      6600CC996600CC996600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC9966009999990000000000999999009999
      9900999999009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000999999000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CC996600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC9966009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099999900CC996600CC996600CC996600CC99
      6600CC996600CC996600CC99660000000000000000003399CC00006699000066
      9900006699000066990000669900006699009999990099999900999999009999
      9900999999009999990099999900000000000000000099999900999999009999
      990099999900999999009999990099999900CC996600FFFFFF00CC996600CC99
      6600CC996600CC996600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC9966009999990000000000999999009999
      9900999999009999990000000000000000000000000000000000000000000000
      000000000000000000000000000099999900CC996600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CC99660000000000000000003399CC0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF00006699009999990000000000000000000000
      0000000000000000000099999900000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC0099999900CC996600FFFFFF00CC996600FFFF
      FF00FFFFFF00CC996600FFFFFF00993300009933000099330000993300009933
      00009933000099330000FFFFFF00CC9966009999990000000000999999000000
      0000000000009999990000000000999999009999990099999900999999009999
      990099999900999999000000000099999900CC996600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CC99660000000000000000003399CC0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF00006699009999990000000000000000000000
      0000000000000000000099999900000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC0099999900CC996600FFFFFF00CC996600FFFF
      FF00FFFFFF00CC996600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC9966009999990000000000999999000000
      0000000000009999990000000000000000000000000000000000000000000000
      000000000000000000000000000099999900CC996600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CC99660000000000000000003399CC0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF00006699009999990000000000000000000000
      0000000000000000000099999900000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC0099999900CC996600FFFFFF00CC996600CC99
      6600CC996600CC996600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC9966009999990000000000999999009999
      9900999999009999990000000000000000000000000000000000000000000000
      000000000000000000000000000099999900CC996600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CC99660000000000000000003399CC0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF00006699009999990000000000000000000000
      0000000000000000000099999900000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC0099999900CC996600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC9966009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099999900CC996600FFFFFF00FFFFFF00CC99
      6600CC996600CC996600CC99660000000000000000003399CC0099FFFF0099FF
      FF003399CC003399CC003399CC003399CC009999990000000000000000009999
      9900999999009999990099999900000000000000000099999900CCCCCC00CCCC
      CC0099999900999999009999990099999900CC996600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CC996600CC996600CC996600CC996600CC996600CC99
      6600CC996600CC996600CC996600CC9966009999990000000000000000000000
      0000000000000000000099999900999999009999990099999900999999009999
      990099999900999999009999990099999900CC996600FFFFFF00FFFFFF00CC99
      6600E5E5E500CC9966000000000000000000000000003399CC0099FFFF0099FF
      FF003399CC00CCFFFF0000669900000000009999990000000000000000009999
      9900E5E5E5009999990000000000000000000000000099999900CCCCCC00CCCC
      CC0099999900CCCCCC009999990000000000CC996600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC996600CC996600CCCCCC00CCCCCC00CCCCCC00CCCCCC00CC99
      6600000000000000000000000000000000009999990000000000000000000000
      0000000000009999990099999900CCCCCC00CCCCCC00CCCCCC00CCCCCC009999
      990000000000000000000000000000000000CC996600FFFFFF00FFFFFF00CC99
      6600CC996600000000000000000000000000000000003399CC0099FFFF0099FF
      FF003399CC000066990000000000000000009999990000000000000000009999
      9900999999000000000000000000000000000000000099999900CCCCCC00CCCC
      CC009999990099999900000000000000000000000000CC996600CC996600CC99
      6600CC9966000000000000000000CC996600CC996600CC996600CC9966000000
      0000000000000000000000000000000000000000000099999900999999009999
      9900999999000000000000000000999999009999990099999900999999000000
      000000000000000000000000000000000000CC996600CC996600CC996600CC99
      660000000000000000000000000000000000000000003399CC003399CC003399
      CC003399CC000000000000000000000000009999990099999900999999009999
      9900000000000000000000000000000000000000000099999900999999009999
      9900999999000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000993300009933
      0000993300009933000099330000993300009933000099330000993300009933
      0000993300009933000099330000000000000000000000000000999999009999
      9900999999009999990099999900999999009999990099999900999999009999
      9900999999009999990099999900000000000000000000000000993300009933
      0000993300009933000099330000993300009933000099330000993300009933
      0000993300000000000000000000000000000000000000000000999999009999
      9900999999009999990099999900999999009999990099999900999999009999
      9900999999000000000000000000000000000000000099330000CC660000CC66
      000099330000E5E5E500CC66000099330000E5E5E500E5E5E500E5E5E5009933
      0000CC660000CC66000099330000000000000000000099999900CCCCCC00CCCC
      CC0099999900E5E5E500CCCCCC0099999900E5E5E500E5E5E500E5E5E5009999
      9900CCCCCC00CCCCCC00999999000000000000000000CC996600FFCC9900FFCC
      9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900CC99
      6600CC99660099330000000000000000000000000000B2B2B200CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00B2B2
      B200B2B2B2009999990000000000000000000000000099330000CC660000CC66
      000099330000E5E5E500CC66000099330000E5E5E500E5E5E500E5E5E5009933
      0000CC660000CC66000099330000000000000000000099999900CCCCCC00CCCC
      CC0099999900E5E5E500CCCCCC0099999900E5E5E500E5E5E500E5E5E5009999
      9900CCCCCC00CCCCCC009999990000000000CC996600CC996600CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      660099330000CC9966009933000000000000B2B2B200B2B2B200B2B2B200B2B2
      B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2
      B20099999900B2B2B20099999900000000000000000099330000CC660000CC66
      000099330000E5E5E500CC66000099330000E5E5E500E5E5E500E5E5E5009933
      0000CC660000CC66000099330000000000000000000099999900CCCCCC00CCCC
      CC0099999900E5E5E500CCCCCC0099999900E5E5E500E5E5E500E5E5E5009999
      9900CCCCCC00CCCCCC009999990000000000CC996600FFFFFF00FFCC9900FFCC
      9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC
      9900CC996600993300009933000000000000B2B2B20000000000CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00B2B2B2009999990099999900000000000000000099330000CC660000CC66
      000099330000E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E5009933
      0000CC660000CC66000099330000000000000000000099999900CCCCCC00CCCC
      CC0099999900E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E5009999
      9900CCCCCC00CCCCCC009999990000000000CC996600FFFFFF00FFCC9900FFCC
      9900FFCC9900FFCC990000CC000000990000FFCC99000000FF000000CC00FFCC
      9900CC996600CC9966009933000000000000B2B2B20000000000CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00B2B2B20099999900CCCCCC00B2B2B20099999900CCCC
      CC00B2B2B200B2B2B20099999900000000000000000099330000CC660000CC66
      0000CC660000993300009933000099330000993300009933000099330000CC66
      0000CC660000CC66000099330000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00999999009999990099999900999999009999990099999900CCCC
      CC00CCCCCC00CCCCCC009999990000000000CC996600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CC996600CC996600CC99660099330000B2B2B20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B2B2B200B2B2B200B2B2B200999999000000000099330000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC66000099330000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC009999990000000000CC996600FFFFFF00FFCC9900FFCC
      9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC
      9900CC996600CC996600CC99660099330000B2B2B20000000000CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00B2B2B200B2B2B200B2B2B200999999000000000099330000CC660000CC66
      0000993300009933000099330000993300009933000099330000993300009933
      0000CC660000CC66000099330000000000000000000099999900CCCCCC00CCCC
      CC00999999009999990099999900999999009999990099999900999999009999
      9900CCCCCC00CCCCCC00999999000000000000000000CC996600CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600FFCC
      9900FFCC9900CC996600CC9966009933000000000000B2B2B200B2B2B200B2B2
      B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200CCCC
      CC00CCCCCC00B2B2B200B2B2B200999999000000000099330000CC6600009933
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0099330000CC66000099330000000000000000000099999900CCCCCC009999
      9900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0099999900CCCCCC0099999900000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC99
      6600FFCC9900FFCC9900CC996600993300000000000000000000B2B2B2000000
      000000000000000000000000000000000000000000000000000000000000B2B2
      B200CCCCCC00CCCCCC00B2B2B200999999000000000099330000CC6600009933
      0000FFFFFF00993300009933000099330000993300009933000099330000FFFF
      FF0099330000CC66000099330000000000000000000099999900CCCCCC009999
      9900FFFFFF00999999009999990099999900999999009999990099999900FFFF
      FF0099999900CCCCCC009999990000000000000000000000000000000000CC99
      6600FFFFFF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500FFFFFF00CC99
      6600CC996600CC9966009933000000000000000000000000000000000000B2B2
      B20000000000CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC0000000000B2B2
      B200B2B2B200B2B2B20099999900000000000000000099330000CC6600009933
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0099330000CC66000099330000000000000000000099999900CCCCCC009999
      9900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0099999900CCCCCC009999990000000000000000000000000000000000CC99
      6600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CC996600000000000000000000000000000000000000000000000000B2B2
      B200000000000000000000000000000000000000000000000000000000000000
      0000B2B2B2000000000000000000000000000000000099330000E5E5E5009933
      0000FFFFFF00993300009933000099330000993300009933000099330000FFFF
      FF00993300009933000099330000000000000000000099999900E5E5E5009999
      9900FFFFFF00999999009999990099999900999999009999990099999900FFFF
      FF00999999009999990099999900000000000000000000000000000000000000
      0000CC996600FFFFFF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500FFFF
      FF00CC9966000000000000000000000000000000000000000000000000000000
      0000B2B2B20000000000CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC000000
      0000B2B2B2000000000000000000000000000000000099330000CC6600009933
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0099330000CC66000099330000000000000000000099999900CCCCCC009999
      9900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0099999900CCCCCC0099999900000000000000000000000000000000000000
      0000CC996600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC99660000000000000000000000000000000000000000000000
      0000B2B2B2000000000000000000000000000000000000000000000000000000
      000000000000B2B2B20000000000000000000000000099330000993300009933
      0000993300009933000099330000993300009933000099330000993300009933
      0000993300009933000099330000000000000000000099999900999999009999
      9900999999009999990099999900999999009999990099999900999999009999
      9900999999009999990099999900000000000000000000000000000000000000
      000000000000CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC996600CC99660000000000000000000000000000000000000000000000
      000000000000B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2
      B200B2B2B200B2B2B20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC996600CC99660000000000000000000000000000000000999999009999
      9900999999009999990099999900999999009999990099999900999999009999
      9900999999009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC99660000000000000000000000000000000000999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000999999000000000000000000000000003399CC00006699000066
      9900006699000066990000669900006699000066990000669900006699000066
      990066CCCC000000000000000000000000000000000099999900999999009999
      9900999999009999990099999900999999009999990099999900999999009999
      9900CCCCCC000000000000000000000000000000000000000000CC996600FFFF
      FF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500FFFFFF00CC99660000000000000000000000000000000000999999000000
      0000CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00000000009999990000000000000000003399CC003399CC0099FFFF0066CC
      FF0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF003399
      CC00006699000000000000000000000000009999990099999900E5E5E500CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC009999
      9900999999000000000000000000000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC99660000000000000000000000000000000000999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009999990000000000000000003399CC003399CC0066CCFF0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0066CC
      FF00006699003399CC0000000000000000009999990099999900CCCCCC00E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500CCCC
      CC00999999009999990000000000000000000000000000000000CC996600FFFF
      FF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500FFFFFF00CC99660000000000000000000000000000000000999999000000
      0000CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00000000009999990000000000000000003399CC003399CC0066CCFF0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0066CC
      FF0066CCCC000066990000000000000000009999990099999900CCCCCC00E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500CCCC
      CC00CCCCCC009999990000000000000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC99660000000000000000000000000000000000999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009999990000000000000000003399CC0066CCFF003399CC0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0066CC
      FF0099FFFF00006699003399CC000000000099999900CCCCCC0099999900E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500CCCC
      CC00E5E5E5009999990099999900000000000000000000000000CC996600FFFF
      FF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500FFFFFF00CC99660000000000000000000000000000000000999999000000
      0000CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00000000009999990000000000000000003399CC0066CCFF0066CCCC0066CC
      CC0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0066CC
      FF0099FFFF0066CCCC00006699000000000099999900CCCCCC00CCCCCC00CCCC
      CC00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500CCCC
      CC00E5E5E500CCCCCC0099999900000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC99660000000000000000000000000000000000999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009999990000000000000000003399CC0099FFFF0066CCFF003399
      CC00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF0099FF
      FF00CCFFFF00CCFFFF00006699000000000099999900E5E5E500CCCCCC009999
      9900E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500E5E5E500E5E5E50099999900000000000000000000000000CC996600FFFF
      FF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500FFFFFF00CC99660000000000000000000000000000000000999999000000
      0000CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00000000009999990000000000000000003399CC0099FFFF0099FFFF0066CC
      FF003399CC003399CC003399CC003399CC003399CC003399CC003399CC003399
      CC003399CC003399CC0066CCFF000000000099999900E5E5E500E5E5E500CCCC
      CC00999999009999990099999900999999009999990099999900999999009999
      99009999990099999900CCCCCC00000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC99660000000000000000000000000000000000999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009999990000000000000000003399CC00CCFFFF0099FFFF0099FF
      FF0099FFFF0099FFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF000066
      99000000000000000000000000000000000099999900E5E5E500E5E5E500E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E5009999
      9900000000000000000000000000000000000000000000000000CC996600FFFF
      FF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500FFFFFF00CC996600CC99
      6600CC996600CC99660000000000000000000000000000000000999999000000
      0000CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC0000000000999999009999
      990099999900999999000000000000000000000000003399CC00CCFFFF00CCFF
      FF00CCFFFF00CCFFFF003399CC003399CC003399CC003399CC003399CC000000
      0000000000000000000000000000000000000000000099999900E5E5E500E5E5
      E500E5E5E500E5E5E50099999900999999009999990099999900999999000000
      0000000000000000000000000000000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC996600E5E5
      E500CC9966000000000000000000000000000000000000000000999999000000
      0000000000000000000000000000000000000000000000000000999999000000
      00009999990000000000000000000000000000000000000000003399CC003399
      CC003399CC003399CC0000000000000000000000000000000000000000000000
      0000000000009933000099330000993300000000000000000000999999009999
      9900999999009999990000000000000000000000000000000000000000000000
      0000000000009999990099999900999999000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC996600CC99
      6600000000000000000000000000000000000000000000000000999999000000
      0000000000000000000000000000000000000000000000000000999999009999
      9900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099330000993300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099999900999999000000000000000000CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC9966000000
      0000000000000000000000000000000000000000000000000000999999009999
      9900999999009999990099999900999999009999990099999900999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099330000000000000000
      0000000000009933000000000000993300000000000000000000000000000000
      0000000000000000000000000000000000000000000099999900000000000000
      0000000000009999990000000000999999000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000993300009933
      0000993300000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000999999009999
      990099999900000000000000000000000000424D3E000000000000003E000000
      2800000040000000600000000100010000000000000300000000000000000000
      000000000000000000000000FFFFFF00E07FFFFF00000000C00FE01F00000000
      C007C00F000000008003F8C7000000008003B023000000008001901300000000
      0001B04300000000000170030000000000016113000000000001601300000000
      00017E110000000000017FF90000000000019FF9000000008001EF8B00000000
      E001F18300000000FE03FE3F00000000FFFFFFFFFFFFFFFF3FFF3FFFC003C003
      0FFF0FFFC003DFFB83FF83FFC003D0FB80FF80FFC003DFBBC03FC03FC003D33B
      C00FC00FC003DE0BE007E007C003D32BE003E003C003DFABF001F001C003D1EB
      F000F000C003DFEBF800F800C003DC0BF800F800C003DFFBFC00FC00C003DFFB
      FE00FE00C003C003FF00FF00FFFFFFFFFC01FC01FE00FE00FC01FC01FE00FEFE
      FC01FC01C000C0FEFC01FC01800080FEFC01FC01800080FE80018001800080FE
      8001BC01800080FE8001BC01800080F08003BC03800180F58007BC07800380F3
      800FBC0F80078007803FBFBF80078007803FBC3F80078007807FBD7F80078007
      80FFBCFFC00FC00F81FF81FFFCFFFCFFFFFFFFFFFFFFFFFF00000000FFDFFFDF
      00007FFEFFCFFFCF000043FEE007E00700005A02FFCFFFCF00005BFEFFDFFFDF
      000043FEFFFFFFFF00007FFE01800180000043FE01807D8000005A0201807D80
      00005BFE01807D80000043FE01807D8000007FFE0180618000007C0003816381
      000F780F07836783861F861F0F870F87FFFFFFFFFFFFFFFFC001C001C007C007
      8001800180038003800180010001000180018001000140018001800100014001
      8001800100007FF08001800100004000800180018000800080018001C000DFE0
      80018001E001E82180018001E007EFF780018001F007F41780018001F003F7FB
      80018001F803F803FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC003C003FFFFFFFF
      C003DFFB80078007C003D00B00070007C003DFFB00030003C003D00B00030003
      C003DFFB00010001C003D00B00010001C003DFFB00010001C003D00B00010001
      C003DFFB000F000FC003D043801F801FC007DFD7C3F8C3F8C00FDFCFFFFCFFFC
      C01FC01FFFBAFFBAFFFFFFFFFFC7FFC700000000000000000000000000000000
      000000000000}
  end
  object dlgOpenProject: TOpenDialog
    DefaultExt = 'xrcx'
    Filter = 'X-Ray Calc project|*.xrcx'
    Title = 'Load project'
    Left = 336
    Top = 360
  end
  object Zip: TAbZipper
    AutoSave = False
    DOSMode = False
    Left = 378
    Top = 598
  end
  object UnZip: TAbUnZipper
    Left = 338
    Top = 598
  end
  object dlgSaveResult: TSaveDialog
    DefaultExt = 'dat'
    Filter = 'ASCII data|*.dat'
    Title = 'Save result to file'
    Left = 416
    Top = 408
  end
  object dlgLoadData: TOpenDialog
    DefaultExt = 'dat'
    Filter = 'ASCII data|*.txt;*.csv;*.tet|Counter files|*.dat|All files|*.*'
    Title = 'Load curve from file'
    Left = 416
    Top = 352
  end
  object dlgSaveProject: TSaveDialog
    DefaultExt = 'xrcx'
    Filter = 'X-Ray Calc project|*.xrcx'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Title = 'Save project'
    Left = 336
    Top = 408
  end
  object dlgExport: TSaveDialog
    Filter = 
      'Bitmaps (*.bmp)|*.bmp|Enhanced Metafiles (*.emf)|*.emf|Metafiles' +
      ' (*.wmf)|*.wmf'
    Left = 480
    Top = 408
  end
  object pmProject: TPopupMenu
    OnPopup = pmProjectPopup
    Left = 128
    Top = 368
    object pmiNorm: TMenuItem
      Caption = 'Normalize'
      object Auto1: TMenuItem
        Action = DataNormAuto
      end
      object Manual1: TMenuItem
        Action = DataNormMan
      end
    end
    object pmiVisible: TMenuItem
      AutoCheck = True
      Caption = 'Visible'
      OnClick = pmiVisibleClick
    end
    object pmiLinked: TMenuItem
      AutoCheck = True
      Caption = 'Linked'
      OnClick = pmiLinkedClick
    end
    object pmiEnabled: TMenuItem
      AutoCheck = True
      Caption = 'Enabled'
      ShortCut = 114
      OnClick = pmiEnabledClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Properties1: TMenuItem
      Caption = 'Properties'
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object pmCopytoclipboard: TMenuItem
      Action = DataCopyClpbrd
      Caption = 'Copy data'
    end
    object pmExporttofile: TMenuItem
      Action = DataExport
      Caption = 'Export Data'
    end
  end
  object dlgPrint: TPrintDialog
    Left = 552
    Top = 465
  end
  object ilStructure: TImageList
    ColorDepth = cd32Bit
    Left = 480
    Top = 40
    Bitmap = {
      494C010109004800040010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000093846FFF93846FFF93846FFF9384
      6FFF93846FFF93846FFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000093846FFFFAF2E9FFF7EDE0FFF6E7
      D7FFF3E2CFFF93846FFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000093846FFFFBF7F0FFFAF2E9FFF7ED
      E0FFF6E7D7FF93846FFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000093846FFFFEFBFAFFFBF7F0FFFAF2
      E9FFF7EDE0FF93846FFF00000000000000000000000000000000000000000610
      0470000000100000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000093846FFF93846FFF93846FFF9384
      6FFF93846FFF93846FFF93846FFF93846FFF93846FFF93846FFF000000001E54
      15FF14370ECF0001002000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000093846FFFFAF2E9FFF7EDE0FFF6E7D7FFF3E2CFFF93846FFF000000001E54
      15FF196B15F71B4A13EF03080250000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000093846FFFFBF7F0FFFAF2E9FFF7EDE0FFF6E7D7FF93846FFF000000001E54
      15FF1E9F20ED1B6916F81E5415FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000093846FFFFEFBFAFFFBF7F0FFFAF2E9FFF7EDE0FF93846FFF000000001E54
      15FF278224F61B4A13EF040C0360000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000093846FFF93846FFF93846FFF9384
      6FFF93846FFF93846FFF93846FFF93846FFF93846FFF93846FFF000000001E54
      15FF14370ECF0103003000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000093846FFFFAF2E9FFF7EDE0FFF6E7
      D7FFF3E2CFFF93846FFF00000000000000000000000000000000000000000815
      0580000000100000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000093846FFFFBF7F0FFFAF2E9FFF7ED
      E0FFF6E7D7FF93846FFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000093846FFFFEFBFAFFFBF7F0FFFAF2
      E9FFF7EDE0FF93846FFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000093846FFF93846FFF93846FFF9384
      6FFF93846FFF93846FFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000696969FF696969FF686868FF676767FF666666FF666666FF656565FF6464
      64FF646464FF636363FF00000000000000000000000000000000000000000000
      0000000000001D12019F754D07FF634006FF1009008000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000686868FF686868FF676767FF676767FF666666FF656565FF656565FF6464
      64FF636363FF636363FF636363FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000797979FFF7F7F7FF98A9CBFFEFEFEFFFEFEFEFFFEFEFEFFFEEEEEEFFEEEE
      EEFFF6F6F6FF747474FF00000000000000000000000000000000000000000000
      0000020100306B4506FF130B008F1D1000AF573402FF06030050000000000000
      00000000000000000000000000000000000000000000246595FF246595FF2465
      95FF787878FFF7F7F7FF98A9CBFFEFEFEFFFEFEFEFFFEFEFEFFFEEEEEEFFEEEE
      EEFFEEEEEEFFF6F6F6FF727272FF0000000093846FFF93846FFF93846FFF9384
      6FFF93846FFF93846FFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000888888FF7C7C7DFF98A9CBFFD9B08CFFD9B08CFFD9B08CFFD9B08CFFD9B0
      8CFFD9B08CFF838383FF00000000000000000000000000000000000000000000
      000002010030613C05FF0603005000000000291700BF2E1B01BF000000000000
      00000000000000000000000000000000000000000000246595FF4C9DC1FF4E9F
      C4FF868686FF7C7C7DFF98A9CBFFD9B08CFFD9B08CFFD9B08CFFD9B08CFFD9B0
      8CFFD9B08CFFD9B08CFF818181FF0000000093846FFFFAF2E9FFF7EDE0FFF6E7
      D7FFF3E2CFFF93846FFF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000696969FF696969FF6262
      62FF939393FFF3F3F3FF98A9CBFFE7E7E7FFE7E7E7FFE7E7E7FFE6E6E6FFE3E3
      E3FFF0F0F0FF909090FF00000000000000000000000000000000000000000000
      000000000000361F00DF4E3005EF06030050271600BF341D01BF000000000000
      00000000000000000000000000000000000000000000246595FF4EA0C5FF50A3
      C6FF919191FFF2F2F2FF98A9CBFFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE5E5
      E5FFE2E2E2FFF0F0F0FF8C8C8CFF0000000093846FFFFBF7F0FFFAF2E9FFF7ED
      E0FFF4E7D7FF93846FFF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000797979FFF7F7F7FF8E96
      AAFF9D9D9DFFD9B08CFF98A9CBFFD9B08CFFD9B08CFFD9B08CFFD9B08CFFD9B0
      8CFFD9B08CFF999999FF000000000000000002010030130B008F130B008F0402
      00400000000004020040754507FFA46514FF7D4808FF10090080000000000000
      00000000000000000000000000000000000000000000296B99FF51A4C7FF52A7
      C9FF999999FFD9B08CFF98A9CBFFD9B08CFFD9B08CFFD9B08CFFD9B08CFFD9B0
      8CFFD9B08CFFD9B08CFF979797FF0000000093846FFFFEFCFAFFFBF7F0FFFAF0
      E7FFF7EDE0FF93846FFF00000000010300301B4A13EF00000000000000000000
      00000000000000000000000000000000000000000000888888FF7C7C7DFF8E96
      AAFFA3A3A3FFF6F6F6FF98A9CBFFEFEFEFFFEFEFEFFFEFEFEFFFEEEEEEFFEBEB
      EBFFF4F4F4FFA0A0A0FF00000000000000004F3203EF583702EF4A2902DF5932
      02FF221300AF00000010130B008FA4590EFF2E1900CF00000000000000000000
      000000000000000000000000000000000000000000002F729FFF53A9CAFF54AB
      CCFFA0A0A0FFF6F6F6FF98A9CBFFEEEEEEFFEEEEEEFFEEEEEEFFEDEDEDFFEBEB
      EBFFEAEAEAFFF3F3F3FF9E9E9EFF0000000093846FFF93846FFF93846FFF9384
      6FFF93846FFF93846FFF040C03601B4A13EF1E5415FF0000000093846FFF9384
      6FFF93846FFF93846FFF93846FFF93846FFF00000000939393FFF3F3F3FF8E96
      AAFFA7A7A7FF7C7C7DFF98A9CBFFD9B08CFFD9B08CFFD9B08CFFD9B08CFFD9B0
      8CFFD9B08CFFA6A6A6FF0000000000000000623D02FF1009008000000000180D
      009F91540AFF432602DF04020040492802EF462702DF00000000000000000000
      000000000000000000000000000000000000000000003477A4FF55ACCCFF56AF
      CFFFA6A6A6FF7C7C7DFF98A9CBFFD9B08CFFD9B08CFFD9B08CFFD9B08CFFD9B0
      8CFFD9B08CFFD9B08CFFA4A4A4FF000000000000000000000000000000000000
      000000000000091A068F206719FF149616FF1E5415FF0000000093846FFFFAF2
      E9FFF7EDE0FFF6E7D7FFF3E2CFFF93846FFF000000009D9D9DFFD9B08CFF8E96
      AAFFABABABFFFAFAFAFF98A9CBFFF6F6F6FFF6F6F6FFF4F4F4FFF3F3F3FFF2F2
      F2FFF7F7F7FFAAAAAAFF0000000000000000362101CF462A01EF040200400603
      00508F520AFFA55A0EFF683805FF231300BF462903FF0C0A0860000000000000
      000000000000000000000000000000000000000000003C83ADFF57B0D0FF59B2
      D3FFA9A9A9FFF8F8F8FF98A9CBFFF3F3F3FFF4F4F4FFF3F3F3FFF3F3F3FFF2F2
      F2FFEFEFEFFFF6F6F6FFA7A7A7FF000000000000000000000000000000000000
      0000040C03601E5415FF51CF5AFF33CE39FF1E5415FF0000000093846FFFFBF7
      F0FFFAF2E9FFF7EDE0FFF4E7D7FF93846FFF00000000A3A3A3FFF6F6F6FF8E96
      AAFFADADADFFD9B08CFF98A9CBFFD9B08CFFD9B08CFFD9B08CFFD9B08CFFD9B0
      8CFFD9B08CFFACACACFF000000000000000002010030362000DF543001FF5A32
      02FF522F03EF462705BE271600BF462903FF625B51FF5B5B5BEF030303300000
      00000000000000000000000000000000000000000000428AB2FF59B4D4FF5BB6
      D7FFACACACFFD9B08CFF98A9CBFFD9B08CFFD9B08CFFD9B08CFFD9B08CFFD9B0
      8CFFD9B08CFFD9B08CFFABABABFF000000000000000000000000000000000000
      000000000000061004702A6522FF37BC3CFF1E5415FF0000000093846FFFFEFC
      FAFFFBF7F0FFFAF0E7FFF7EDE0FF93846FFF00000000A7A7A7FF7C7C7DFF8E96
      AAFFADADADFFFBFBFBFF98A9CBFFFAFAFAFFFAFAFAFFF8F8F8FFA5A5A5FFA5A5
      A5FFBFBFBFFFADADADFF00000000000000000000000000000000040200400402
      004001000020000000000000000005050440595959EFA0A0A0FF565656EF0303
      033000000000000000000000000000000000000000004791B8FF5BB7D7FF5DBA
      D9FFADADADFFFBFBFBFF98A9CBFFF8F8F8FFF8F8F8FFF8F8F8FFF7F7F7FFF6F6
      F6FFF3F3F3FFF8F8F8FFADADADFF0000000093846FFF93846FFF93846FFF9384
      6FFF93846FFF93846FFF030802501B4A13EF1E5415FF0000000093846FFF9384
      6FFF93846FFF93846FFF93846FFF93846FFF00000000ABABABFFFAFAFAFF8E96
      AAFFAFAFAFFF7C7C7DFF98A9CBFFD9B08CFFD9B08CFFD9B08CFFA5A5A5FFF2F2
      F2FFC9C9C9FF737373CF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000003030330656565EF7A7A7AFF5A5A
      5AEF03030330000000000000000000000000000000004F9AC0FF5EBBD9FF5FBD
      DCFFAFAFAFFF7C7C7DFF98A9CBFFD9B08CFFD9B08CFFD9B08CFFD9B08CFFB6B6
      B6FFB4B4B4FFBFBFBFFFADADADFF0000000093846FFFFAF2E9FFF7EDE0FFF6E7
      D7FFF3E2CFFF93846FFF000000000103003014370ECF00000000000000000000
      00000000000000000000000000000000000000000000ADADADFFD9B08CFF8E96
      AAFFAFAFAFFFFEFEFEFF98A9CBFFFEFEFEFFFEFEFEFFFCFCFCFFBBBBBBFFBDBD
      BDFF737373CF0000001000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000090909507C7C7CFF7575
      75FF666666EF09090950000000000000000000000000509DC1FF61BFDDFF62C1
      DEFFAFAFAFFFFCFCFCFF98A9CBFFFAFAFAFFFBFBFBFFFAFAFAFFFAFAFAFFBCBC
      BCFFE9E9E9FFBABABAFF4343439F0000000093846FFFFBF7F0FFFAF2E9FFF7ED
      E0FFF4E7D7FF93846FFF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000ADADADFFFBFBFBFF8E96
      AAFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFF7373
      73CF000000100000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000191919807676
      76FF5A5A5AEF626262FF0D0D0D600000000000000000519EC2FF63C2E0FF898C
      8EFF787C7DFF717475FF696C6DFF696C6DFF626566FF626566FF626566FFE2E2
      E2FFBBBBBBFF4343439F000000000000000093846FFFFEFCFAFFFBF7F0FFFAF0
      E7FFF7EDE0FF93846FFF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AFAFAFFF7C7C7DFF8E96
      AAFFB5AAA0FFB5AAA0FFB5AAA0FFB5AAA0FFA5A5A5FFB8B8B8FF737373CF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002626
      269F4B4B4BDF09090950565656EF0D0D0D6000000000529FC2FF65C6E2FF66A7
      BAFF696B6BFF717374FF878C8EFF8F9899FF757878FF696A6BFF959595FFAFAF
      AFFF799EAFFF00000000000000000000000093846FFF93846FFF93846FFF9384
      6FFF93846FFF93846FFF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AFAFAFFFFEFEFEFF98A9
      CBFFFEFEFEFFFEFEFEFFFCFCFCFFFBFBFBFFBDBDBDFF737373CF000000100000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0010404040CF0D0D0D60000000100D0D0D600000000053A0C4FF67CAE6FF69CC
      E7FF6E6F6FFFADB2B4FFA3A9AAFFB8C2C4FFB0B5B6FF676868FF74E1F7FF76E3
      F8FF368BB5FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AFAFAFFFAFAFAFFFAFAF
      AFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFF737373CF00000010000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000102E2E2EAF00000000000000000000000054A3C5FF54A3C5FF55A4
      C6FF517587FF577D8EFF697880FF6B7C83FF507586FF527888FF57A9CBFF4AA0
      C5FF4096BCFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000002200000039010000550100005E0101005D0101
      005D0101005D0101005700000011000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000002030155032A01DD28271FB4F5EFE7FFEFE8DFFFEEE5DBFFEDE4
      D8FFF3ECE1FF766E64E80000000D000000000000000000000000000000000004
      0840002948BF004B89FF000000000000000000000000AF9E7DFFAB9977FFA695
      72FFA38F6BFF9F8A66FF9A865FFF97815AFF0000000000000000AF9E7EFFAC9A
      7AFFAA9776FFA69372FFA4906DFFA08E69FF9E8A65FF9C8762FF98835DFF9680
      59FF000000000000000000000000000000000000000000000000AF9E7EFFAC9A
      7AFFAA9776FFA69372FFA4906DFFA08E69FF9E8A65FF9C8762FF98835DFF9680
      59FF000000000000000000000000000000000000000000000000000000000000
      00000009007F108E1EFF004A01F11F1B18A2FFFFFFFFFFFAF1FFFCF0E4FFF9E8
      D6FFFFFFEFFF6D6762DD0000000E0000000000000000000000000017288F045B
      9DFF1B7AD7FB0861B1FF004B89FF004B89FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000193516B260E36DFF07610EE71E1917A4FFFFFFFFFFFBF5FFFAF2E8FFF7E9
      DCFFFFFFF2FF6B665FDD0000000E000000000000000000000000025490FF54AD
      E6FA62B1E7F52986E3F51969DFF5004B89FF00000000AF9E7DFFAB9977FFA695
      72FFA38F6BFF9F8A66FF9A865FFF97815AFF0000000000000000AF9E7EFFAC9A
      7AFFAA9776FFA69372FFA4906DFFA08E69FF9E8A65FF9C8762FF98835DFF9680
      59FF000000000000000000000000000000000000000000000000AF9E7EFFAC9A
      7AFFAA9776FFA69372FFA4906DFFA08E69FF9E8A65FF9C8762FF98835DFF9680
      59FF000000000000000000000000000000000000000A000000190000001C0000
      0019000000100A1C09AE0B5713F325221BB2FFFFFFFFFFFFFCFFFFFAF4FFFEF6
      EEFFFFFFFBFF7E766BF00000000B000000000000000000000000000E18701263
      97FF78B7E0FA126DB2FF004B89FF004B89FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000797064E8918B83ED928C84EE928C
      84EE908782E8897F7BE6232A1AC7060605583733309533302D9533302D953331
      2E9534322F951B1A177A00000000000000000000000000000000000000000004
      0840013D69DF004B89FF000000000000000000000000AF9E7DFFAB9977FFA695
      72FFA38F6BFF9F8A66FF9A865FFF97815AFF0000000000000000000408400029
      48BF004B89FF000000000000000000000000AF9E7DFFAB9977FFA69572FFA38F
      6BFF9F8A66FF9A865FFF97815AFF000000000000000000000000000000000041
      71EF004171EF000408400000000000000000AF9E7DFFAB9977FFA69572FFA38F
      6BFF9F8A66FF9A865FFF97815AFF00000000D5CFC6FFFFFFFFFFFFFFF6FFFFFC
      EFFFFFF7E5FFFFFFFFFF201C1BA2000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000017288F045B9DFF1B7A
      D7FB0861B1FF004B89FF004B89FF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000004171EF004A82FF004A
      82FF0B59A5F7004A82FF00132080000000000000000000000000000000000000
      000000000000000000000000000000000000C9C2B9FFFBF7F2FFF8F0E6FFF6EB
      DFFFF6E5D3FFFFFAECFF211E1BA8000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AF9E7EFFAC9A
      7AFFAA9776FFA69372FFA4906DFFA08E69FF9E8A65FF9C8762FF98835DFF9680
      59FF0000000000000000000000000000000000000000025490FF54ADE6FA62B1
      E7F52986E3F51969DFF5004B89FF00000000AF9E7DFFAB9977FFA69572FFA38F
      6BFF9F8A66FF9A865FFF97815AFF0000000000000000004A82FF549BD5ED5EA2
      D9ED3585D8ED0B58B1F5004A82FF00000000AF9E7DFFAB9977FFA69572FFA38F
      6BFF9F8A66FF9A865FFF97815AFF00000000D4CDC3FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFF6FFFFFFFFFF24211EAC000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000E1870126397FF78B7
      E0FA126DB2FF004B89FF004B89FF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000004171EF004A82FF004A
      82FF1B6CACF6004A82FF0017288F000000000000000000000000000000000000
      000000000000000000000000000000000000625B52D577726CDA77726CDA7772
      6CDA77726CDA7C7770DB12100D8F000000020000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AF9E7EFFAC9A
      7AFFAA9776FFA69372FFA4906DFFA08E69FF9E8A65FF9C8762FF98835DFF9680
      59FF00000000000000000000000000000000000000000000000000040840013D
      69DF004B89FF000000000000000000000000AF9E7DFFAB9977FFA69572FFA38F
      6BFF9F8A66FF9A865FFF97815AFF000000000000000000000000000000000041
      71EF004171EF00070C500000000000000000AF9E7DFFAB9977FFA69572FFA38F
      6BFF9F8A66FF9A865FFF97815AFF00000000221E19A027241FAC282520AD2825
      20AD282521AD2C2822AE0907067B000000040000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D4CDC1FFFFFFFCFFFFFEF4FFFFFB
      F0FFFFF7E9FFFFFFFBFF26231FB0000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AF9E7EFFAC9A
      7AFFAA9776FFA69372FFA4906DFFA08E69FF9E8A65FF9C8762FF98835DFF9680
      59FF000000000000000000000000000000000000000000000000AF9E7EFFAC9A
      7AFFAA9776FFA69372FFA4906DFFA08E69FF9E8A65FF9C8762FF98835DFF9680
      59FF000000000000000000000000000000000000000000000000AF9E7EFFAC9A
      7AFFAA9776FFA69372FFA4906DFFA08E69FF9E8A65FF9C8762FF98835DFF9680
      59FF00000000000000000000000000000000CAC3BBFFFCF7F1FFF9EFE3FFF7EB
      DCFFF6E4D1FFFFFAECFF211E1CA8000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CCC5BCFFFFFFFFFFFFFCF6FFFFF6
      EDFFFEF2E4FFFFFFF9FF211F1BA9000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AF9E7EFFAC9A
      7AFFAA9776FFA69372FFA4906DFFA08E69FF9E8A65FF9C8762FF98835DFF9680
      59FF000000000000000000000000000000000000000000000000AF9E7EFFAC9A
      7AFFAA9776FFA69372FFA4906DFFA08E69FF9E8A65FF9C8762FF98835DFF9680
      59FF000000000000000000000000000000000000000000000000AF9E7EFFAC9A
      7AFFAA9776FFA69372FFA4906DFFA08E69FF9E8A65FF9C8762FF98835DFF9680
      59FF00000000000000000000000000000000BBB3A6FFE6E2DEFFE5E1DBFFE5DF
      D9FFE5DED6FFE9E6DEFF1C1A169F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001F1D1A001D1B187E1E1B187E1E1C
      197E1E1C197E1F1D1A7E07060645000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object ilCalc: TImageList
    ColorDepth = cd32Bit
    Left = 1400
    Top = 48
    Bitmap = {
      494C01010A004800040010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000202021838533AA2129F
      1FFF139F1FFF38533AA202020218000000000000000000000000000000000000
      0000686868FF686868FF676767FF676767FF666666FF656565FF656565FF6464
      64FF636363FF636363FF636363FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000009020202191616164C558958D683EE
      A8FF84F0ACFF558A59D61616164C0202021800000000246595FF246595FF2465
      95FF787878FFF7F7F7FF98A9CBFFEFEFEFFFEFEFEFFFEFEFEFFFEEEEEEFFEEEE
      EEFFEEEEEEFFF6F6F6FF727272FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000505052638563AA7189322F60C9517FC64E0
      90FF64E493FF0C9518FC189322F638533AA200000000246595FF4C9DC1FF4E9F
      C4FF868686FF7C7C7DFF98A9CBFFD9B08CFFD9B08CFFD9B08CFFD9B08CFFD9B0
      8CFFD9B08CFFD9B08CFF818181FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000C7C93FF087A91FF087A91FF087A
      91FF087A91FF087A91FF087A91FF228AA1FF119E1CFF81DF9CFF62D486FF1FC0
      58FF22C960FF65E494FF84F2ADFF139F20FF00000000246595FF4EA0C5FF50A3
      C6FF919191FFF2F2F2FF98A9CBFFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE5E5
      E5FFE2E2E2FFF0F0F0FF8C8C8CFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000007788FFFA3E6FFFF50D0FFFF40CA
      FFFF41CAFFFF40CAFFFF44CBFFFF8EE2FFFF139E1BFF84DD99FF62D283FF1FB7
      51FF1FC259FF64E190FF84EEA9FF129F1FFF00000000296B99FF51A4C7FF52A7
      C9FF999999FFD9B08CFF98A9CBFFD9B08CFFD9B08CFFD9B08CFFD9B08CFFD9B0
      8CFFD9B08CFFD9B08CFF979797FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000087A91FF49A6BCFF53D1FFFF14BC
      FBFF13BBFBFF13BBFBFF16BBFBFF43CBFFFF46BA95FF159D27FF099818FF62D1
      83FF62D587FF0C9518FB189322F638533AA2000000002F729FFF53A9CAFF54AB
      CCFFA0A0A0FFF6F6F6FF98A9CBFFEEEEEEFFEEEEEEFFEEEEEEFFEDEDEDFFEBEB
      EBFFEAEAEAFFF3F3F3FF9E9E9EFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000087A91FF229DBFFF89DCF8FF2CC7
      FEFF1BC1FDFF1DC1FDFF1EC1FDFF24C5FDFF37CBFFFF70DCFFFF58BC7CFF83DD
      99FF83E29DFF4D9F62F11414144902020218000000003477A4FF55ACCCFF56AF
      CFFFA6A6A6FF7C7C7DFF98A9CBFFD9B08CFFD9B08CFFD9B08CFFD9B08CFFD9B0
      8CFFD9B08CFFD9B08CFFA4A4A4FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000087A91FF35C9FFFF4FA8B9FF5ED9
      FFFF24C7FDFF24C7FDFF24C8FDFF24C7FDFF20C6FDFF3DD0FFFF4ABE95FF139E
      1BFF129E1CFF4BAE7BFF1113154D00000000000000003C83ADFF57B0D0FF59B2
      D3FFA9A9A9FFF8F8F8FF98A9CBFFF3F3F3FFF4F4F4FFF3F3F3FFF3F3F3FFF2F2
      F2FFEFEFEFFFF6F6F6FFA7A7A7FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000087A91FF40D1FFFF0D94BCFF90E3
      FBFF38D1FDFF2ACDFCFF2CCEFCFF2CCEFCFF2BCDFCFF33CFFCFF56D9FFFF7EE2
      FFFF82E3FFFFA4EFFFFF0F4E5CC70000000000000000428AB2FF59B4D4FF5BB6
      D7FFACACACFFD9B08CFF98A9CBFFD9B08CFFD9B08CFFD9B08CFFD9B08CFFD9B0
      8CFFD9B08CFFD9B08CFFABABABFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000087A91FF44D1FFFF19C3FBFF57AB
      BDFF68DFFFFF36D3FEFF35D2FEFF35D2FEFF35D2FEFF36D2FEFF37D2FEFF38D3
      FEFF37D2FEFF57DCFFFF71C4DCFF02060634000000004791B8FF5BB7D7FF5DBA
      D9FFADADADFFFBFBFBFF98A9CBFFF8F8F8FFF8F8F8FFF8F8F8FFF7F7F7FFF6F6
      F6FFF3F3F3FFF8F8F8FFADADADFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000087A91FF46D4FFFF25CDFFFF1299
      BAFFA6E6FAFF8AE4FEFF87E4FDFF88E4FDFF88E4FDFF88E4FDFF86E4FDFF85E5
      FFFF86E6FFFF8BE5FFFFBFF7FFFF0D4854C2000000004F9AC0FF5EBBD9FF5FBD
      DCFFAFAFAFFF7C7C7DFF98A9CBFFD9B08CFFD9B08CFFD9B08CFFD9B08CFFB6B6
      B6FFB4B4B4FFBFBFBFFFADADADFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000087A91FF4BD6FFFF29CDFDFF2ACA
      F9FF09829BFF087A91FF087A91FF087A91FF087A91FF087A91FF087A91FF087A
      91FF087A91FF087A91FF087A91FF096171E000000000509DC1FF61BFDDFF62C1
      DEFFAFAFAFFFFCFCFCFF98A9CBFFFAFAFAFFFBFBFBFFFAFAFAFFFAFAFAFFBCBC
      BCFFE9E9E9FFBABABAFF4343439F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000087A91FF4ED8FFFF2CCEFEFF2FCF
      FEFF30D2FFFF2FD1FFFF33D3FFFF4BD9FFFF52DDFFFF52DDFFFF6AE4FFFF67BF
      D3FF0000000900000000000000000000000000000000519EC2FF63C2E0FF898C
      8EFF787C7DFF717475FF696C6DFF696C6DFF626566FF626566FF626566FFE2E2
      E2FFBBBBBBFF4343439F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000017859AFF75E4FFFF35D1FEFF31D0
      FEFF2FD0FEFF36D1FEFF70E2FFFF1C8AA0FF087A91FF087A91FF087A91FF107E
      94FF0000000800000000000000000000000000000000529FC2FF65C6E2FF66A7
      BAFF696B6BFF717374FF878C8EFF8F9899FF757878FF696A6BFF959595FFAFAF
      AFFF799EAFFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000010E11572D94A9FF7DE7FFFF53DC
      FFFF52DCFFFF79E7FFFF2B94A9FF00090A440000000000000000000000000000
      0000000000000000000000000000000000000000000053A0C4FF67CAE6FF69CC
      E7FF6E6F6FFFADB2B4FFA3A9AAFFB8C2C4FFB0B5B6FF676868FF74E1F7FF76E3
      F8FF368BB5FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000001060836138297FF087A
      91FF087A91FF158398FF00080A41000000000000000000000000000000000000
      0000000000000000000000000000000000000000000054A3C5FF54A3C5FF55A4
      C6FF517587FF577D8EFF697880FF6B7C83FF507586FF527888FF57A9CBFF4AA0
      C5FF4096BCFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000060000
      00230000002100000020000000200000002000000020000000200000001F0000
      00240000001D0000000000000000000000000000000000000003000000150804
      0A41281D206C160F0E5004010128180D0D553124247202020121090A063F392A
      297A050403290000000600000006000000030000000000000003000000150804
      0A41281D206C160F0E5004010128180D0D553124247202020121090A063F392A
      297A050403290000000600000006000000030000000000000003000000150804
      0A41281D206C160F0E5004010128180D0D553124247202020121090A063F392A
      297A0504032900000006000000060000000300000000000000000000001FB0B0
      B0F1CCCCCCF9C3C3C3F8C3C3C3F8C7C7C7F8C1C1C1F8C5C5C5F8C4C4C4F8DCDC
      DCFB404040B100000000000000000000000000000005210F0F75200F0F752515
      1678422829982112126E2917177B3F2525951E1110702A19178533201D8D1E10
      1078412050C92C161E952A131D9646201EAB00000005210F0F75200F0F752515
      1678422829982112126E2917177B3F2525951E1110702A19178533201D8D1E10
      1078412050C92C161E952A131D9646201EAB00000005210F0F75200F0F752515
      1678422829982112126E2917177B3F2525951E1110702A19178533201D8D1E10
      1078412050C92C161E952A131D9646201EAB09090969383838B23B3B3BB6BCBC
      BCF6FCFCFCFFF3F3F3FFF4F4F4FFF3F3F3FFF3F3F3FFF4F4F4FFF5F5F5FFF7F7
      F7FF727272DA393939B23E3E3EB802020238000000101F0F0F6F000000000000
      000C2B22226D000000000100001B261C1C6D0000000D0705044E2219197D0000
      0C6D2117308E30223D9A04001069572D25B5000000101F0F0F6F000000000000
      000C2B22226D000000000100001B261C1C6D0000000E0705044E2218197D0000
      0C6E2016308F2F213D9B0400106A562D25B5000000101F0F0F6F000000000000
      000C2B22226D000000000100001B261C1C6D0000000E0705044E2218197D0000
      0C6E2016308F2F213D9B0400106A562D25B5606060C3E7E7E7FFE4E4E4FF4848
      48FF3D3D3DFF414141FF414141FF404040FF404040FF3F3F3FFF424242FF2C2C
      2CFF777777FFF5F5F5FFF2F2F2FF151515800D0707493C2424911D16165C2721
      2165645454A019141554231C1A67554444A81D0E6ED5311E58C64E3771D6271F
      2D8F2C241F70574749951711115675403ED00D0707493C2424911D16165C2721
      2165645454A019151555221C1966564644A8231275D734215FC8503873D72E24
      339230272272594A4C971812125774403ED00D0707493C2424911D16165C2721
      2165645454A019151555221C1966574645A8221274D534215EC6513875D52920
      2E8C2E25216F564B4D9418121255743F3ED0585858BBE0E0E0FFE3E3E3FFA2A2
      A1FF7A7D81FF818489FF818487FF818487FF828589FF82868AFF80878BFF7E82
      84FFC3C3C2FFE2E2E2FFEAEAEAFF131313771B111161412828950504042B0A08
      083D483939880303022B1A151C7E432C6CDA09031E9C140830B941267DEF0503
      03571D161682251E1F8A05030343613435CE1B111161412828950504042B0A08
      083D483939880303022C1A151D7E4E3578D70C061C891A0E37A85735A1EF0201
      012C1C16165E2C25246B030303246B3738C91B111161412828950504042B0A08
      083D483939880303022C1A151D7F4E3477D5100A1F881E1238A6543494F00605
      054E1E1817672720206F020202246D3A3AC95C5C5CBBEEEEEEFFEBEBEBFFFAFC
      FCFFFFFAF2FFFAF0E3FFFBF3E9FFFBF3E8FFFBF1E5FFFBEDE0FFFBE8DBFFFFFB
      F7FFF4F5F6FFE9E9E9FFFAFAFAFF1313137701000019251616720101011B0303
      032B362B287B0101012E13073EB5422558F5322419C6383339CA362A4AEF1E1E
      1EA13A352FB83F2F14C3090700824A2629C701000019251616720101011B0303
      032B362B287B0101012F1D1140AD512DB1F00C090F5E17111970513773C60000
      0009100C0C46231D1D6101000014663434C301000019251616720101011B0303
      032B362B287B0101012F1F1243AB432787EC00000EBA0A0812BB271B32F70000
      00AC0F0C0CA3131010B30000005D5C3232C1616161BDFEFEFEFFFEFFFFFFFEFC
      FBFFDA9B64FFC98846FFCB965DFFCB965CFFCB8F51FFCB7E40FFC85D1BFFE7A6
      86FFFFFFFFFFFEFEFFFFFFFFFFFF1414147A26161673513333A7211818653127
      29805C455FC4382A3DA32D1E3DB4B68F33F2FFD67EFFE0DBD2FF7D7C76FFFCF7
      F7FFFCECDAFFF6C467FF916D34EB4D272ED426161673513333A7211818653127
      29805C455FC438293DA73D2C4BB2604D479F1B1616543028276F473B3887211A
      1C6656434AA25044438F1F17175D794242D726161673513333A7211818653127
      29805C455FC438293DA73B2A46A67B6856CE80765CF6898988F7807F7BF18986
      86F4929090FC7D7E7EFF231C1CB96E3C3CCD636363BFFFFFFFFFFFFFFFFFFFF6
      F2FFDA9260FFCB8B50FFD49558FFD79B60FFD59155FFD37E44FFD5662CFFE89F
      7CFFFFFFFFFFFFFFFFFFFFFFFFFF0D0D0D6E020101212113136C000000050704
      106D483268C50000219304030458AC873EEBFAC978FFEDE4DAFFC3BEBDFFEEEA
      EAFFF3E3CBFFF8C46CFF604920C92E1418B6020101212113136C000000050704
      106D483268C5000020980806095619151352000000000C09116B292232940000
      208A1A2473D1120F0F51000000005E2E2FBB020101212113136C000000050704
      106D483268C500002098050405425B4C46AE8C724ADE928673E3929397E87D7F
      80D9929396E4939393F304040461452323AA0D0D0D67DBDBDBF8FFFFFFFFFFF5
      EFFFDFA184FFD8A78DFFE3AE8BFFE1AB85FFE1A681FFE3A17DFFE69A76FFEBB1
      96FFFFFFFFFFFFFFFFFFCBCBCBF400000017130B0B543E28238F382442A64535
      46A66E536EC83C2471C5382B3299B79049F4ECB65AFFF1CE95FFFCE0B2FFF3D8
      ABFFEBC585FFEEB85BFF836536E150292DD6130B0B543E28238F382442A64535
      46A66E536EC8392370C844353D985F514C9C251D1E6C4D4C7FE66F7FDFF6203B
      C1E01D48D1EC31386BCF261D1D6D7D4443D4130B0B543E28238F382442A64535
      46A66E536EC8392370C83D2F368C87736DD19A805BEDA27E51EF9D9281F28C8A
      89E99F917FEF8D9095F82B2121A7733F3ECE00000000040404332C2D2E8CDED3
      CDFDF1C0ABFFF7CDBBFFF4CCBBFFF5CDBCFFF4CBB9FFF3C6B3FFF0BFAAFFEDC4
      B0FF96989ADD1414146A0202022A00000000110B0B4E291A16790A05116F100B
      1571392E2E7C080412670201012CC0954CF8F3D294FFEDE9DBFFEBE4D1FFEAE3
      D2FFF1EBDAFFF6CD83FF664E22CF36191DBF110B0B4E291A16790A05116F100B
      1571392E2E7C0703126B030302292E29286D000001193B3D65C87787C3DF0A19
      8FBF1328ABD11038C7EA0B0A1971593028AB110B0B4E291A16790A05116F100B
      1571392E2E7C0703126B01000017786666C08D7D61E3987852E79A7950EB8472
      57DD9D7D53E78E8370F40A080876502A2AB4000000000000000000000011BCBD
      BDF7F7F2EFFFF9EDE7FFF7ECE7FFF2EAE7FFECE4E1FFE5DDD9FFDFD8D5FFE4E2
      E1FF4A4A4AA90000000000000000000000000201012025161578160C2B981813
      166B463836860403032C0D0A0950B78E4AF9D7BE93FFC7C8CCFFCDCAC6FFCBC8
      C5FFD9D8D9FFDDBC84FF705629D6401E23C80201012025161578160C2B981813
      166B463836860504042F100D0D4C3E36357E060506383D4070D96370CEED0101
      95CA0C0EBBDB1E2388DE0F0B0E57673833BD0201012025161578160C2B981813
      166B463836860504042F0A08083C7E6A69C7958C85E7A4948AEAA08978EE8B75
      60E29F8771EB96836EF6120E0F895B3031BD000000000000000002020224CBCB
      CCF8FFFFFFFFFFFFFFFFFFFFFFFFFAFDFEFFF2F5F7FFECEFF1FFE5E8EAFFE7E9
      EAFF535353AF0000000000000000000000002214146C4C2F30A52F1C52B81C17
      15646250519E1513134B251D1D6CBE9953FFEED6ADFFDDDBD8FFE5DFD5FFE8E2
      D8FFE4E2DDFFECCF9AFF876A3AE14C252ACA2214146C4C2F30A52F1C52B81C17
      15646250519E1713134D2C25256B5C4B4A991512114D28222B8B3F3850BB191A
      5ACD181495EF3D33368A110D0C45774040D42214146C4C2F30A52F1C52B81C17
      15646250519E1713134D211D1D5D8A6968D5AE9794F6BFABA2F6BCA391F7A986
      5BF2B58C49F5AD8B3DFF211A189F683A3CC7000000000000000002020227DFDF
      DFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFF6F6F6FFEFEFEFFFE9E9E9FFE9E9
      E9FF535353B00000000000000000000000002517156E41252DA0060014750000
      000F2F242471000000000101011D775A36DE6A5633C8806B4BD6947D58E36252
      35C385714EDA977C4FE422180A91441F22B62517156E41252DA0060014750000
      000F2F242471000000000201011E291F1F6B0000000004030326221B195F0A09
      0A48221A238C120E0D4900000000652E2EC62517156E41252DA0060014750000
      000F2F242471000000000000000E5C4241AF412C29AA5D443EBC75584CCE412E
      21A1684E36C1735739D40201013654292AB800000000000000000000000A2626
      268DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8FFF2F2F2FFEDED
      EDFF535353B000000000000000000000000004030228371F2696200F12782112
      126E3821218D1C0E0E6825151576301C1D8A13090964201110782C1818871208
      08612312127C29171784150A0B65442121A604030228371F2696200F12782112
      126E3821218D1C0E0E68251414763520208B1B0D0D662816167A341E1E88140A
      0A5927171575311D1D851A0D0D67412020A504030228371F2696200F12782112
      126E3821218D1C0E0E6826141477331F1F87140A0A59211212702E1B1B811309
      0A58251516762B191A7C180C0C61432020A60000000000000000000000000303
      032ECECECEF1D4D4D4F1D2D2D2F0D2D2D2F0D2D2D2F0D0D0D0F0CBCBCBEFDDDD
      DDF8555555B00000000000000000000000000000000000000000000000100100
      001600000008010000190000001300000004000000100000000A000000050000
      0011000000080000000600000012000000000000000000000000000000100100
      0016000000080100001900000013000000090101011A000000110000000A0100
      00190000000E0000000C01000019000000000000000000000000000000100100
      001600000008010000190000001300000008010000160000000E000000080100
      00170000000C0000000A01000018000000000000000000000000000000000000
      001211111159101010570F0F0F550F0F0F550F0F0F550F0F0F550E0E0E521C1C
      1C781818186F0000000000000000000000000000000000000000000000020000
      0008000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EEDDCD00EEDDCD00EEDDCD00EEDD
      CD00EEDDCD00EEDDCD00EEDDCD00EEDDCD00EEDDCD00EEDDCD00EEDDCD00EEDD
      CD00EEDDCD00EEDDCD00EEDDCD00EEDDCD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000003002600A60009
      0094000000420000000800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EDDCCC00EDDDCC00EFDFCF00EDDD
      CD00F1E1D000F2E3D200F1E1D000F1E1D000F1E0D000F1E1D000F1E1D000F2E3
      D200F0E0D000EEDDCD00EDDDCD00EDDDCD000000000000000000000000000000
      0000040403523A3A33B1585652D4545250D553514DD53C3B34BC0808076B0000
      001B000000000000000000000000000000000000000000000000008100E30098
      00FF003C00D80000007000000021000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EDDCCC00ECDCCC00E2D0C100EDDD
      CD00DBC8B900CDB8AB00D5C1B600D6C3B600D5C1B300D5C2B500D4C1B500CDB8
      AB00D7C3B500E8D8C800ECDCCC00ECDCCC000000000000000000000000174544
      3CB9B8B5C3FF8683D2FF8684DDFF9896E3FF8987DBFF7B77C8FF9A95A5FF4E4D
      42CC000000410000000000000000000000000000000000000000007500D700B7
      00FF00AE00FF007200F4001E00BC0000005D0000000D00000000000000000000
      0000000000000000000000000000000000000000000099330000993300000000
      0000000000000000000000000000000000009933000099330000000000000000
      000000000000000000000000000000000000ECDBCB00F0E0D000D4C0B100C9B1
      A300C7B0A100BDA69A00B5A09500AE989400C3B2B200AD969100B6A09600C3AC
      A000E5D1C100EEDCCB00F0E0CF00ECDBCB000000000000000012858579DAA6A3
      DEFF3837E3FF5B5BF6FF8C8DFAFFA4A5FBFF9393FCFF6465FAFF3C3BE6FF7E7A
      C2FF7F7B6BEA0000004000000000000000000000000000000000007700D800B7
      00FF00B600FF00B600FF00AA00FF005100E6000500900000002C000000000000
      0000000000000000000000000000000000000000000099330000CC6600009933
      00000000000000000000000000000000000099330000CC660000993300000000
      000000000000000000000000000000000000EEDDCD00EBD9C900CEB8AC00C5AF
      A500B59D9500C3ACA200CBB6AA00B29C9800CCBCBC00B59C9700CCB7AB00CCB9
      AE00CDB9AE00CAB5AB00CEB8AB00F1DFCF000000000044443CB2ACAAE4FF1B1A
      DDFF4142F1FF5656EDFF7272F3FF7C7CF3FF7575F3FF5A5AEDFF4848F3FF1D1E
      E7FF8682C3FF555247D20000001A000000000000000000000000007700D800B6
      00FF00B100FF00B400FF00B600FF00B700FF008B00FE001F00BE0000006C0000
      0020000000000000000000000000000000000000000099330000CC660000CC66
      00009933000000000000000000000000000099330000CC660000CC6600009933
      000000000000000000000000000000000000F4E3D100DAC5B600CEBFBF00EDE8
      EB00ECE6E800ECE5E700EFE9EC00DFD6D700A58D8C00E6DEE000EDE8EB00E8E2
      E600EAE3E400F2E8E600CFBFBE00DDC7B60012120F6FC0BEC7FF2020C9FF1D1D
      D0FF5252CDFF7777C0FF4B4BE5FF5353F6FF4C4CE6FF7676BFFF5352CCFF2323
      D5FF1E1ECBFFA9A4B0FF0808066C000000000000000000000000007700D800B6
      00FF00B200FF00B200FF00B200FF00B500FF00B700FF00AA00FF007500F7000D
      00A4000000430000000E00000000000000000000000099330000CC660000CC66
      0000CC66000099330000000000000000000099330000CC660000CC660000CC66
      000099330000000000000000000000000000F5E4D200D7C1B200C5B1AD00DACC
      C500D5C6BF00D5C6BE00D8C8BF00D4C4BB00BAA59D00D2C2BA00D7C8BF00DCCC
      C500CFBDB7009691A200B29E9C00DFC9B8009D9B83E07776C0FF0000B5FF1111
      B8FF6C6CB5FFDBDBB1FF8383BDFF2C2CD9FF8080BEFFDADAB0FF6F6FB5FF1414
      BCFF0000B5FF7370C2FF43423ABF000000000000000000000000007700D800B6
      00FF00B200FF00B300FF00B300FF00B200FF00B400FF00B500FF00B000FF009B
      00FF004B00E10008009300000020000000000000000099330000CC660000CC66
      0000CC660000CC660000993300000000000099330000CC660000CC660000CC66
      0000CC660000993300000000000000000000F3E2D200D9C2B400D4B6A000E7C9
      BB00E4C7BA00DFC2B200DEBAA700E1BFAE00EACEC100E1C2B300DFBBAA00F3CF
      A50091858D00656C9300BF9B8200E1CCBE00CFCCB4FF413FB5FF000091FF0A0A
      A4FF1111B2FF7C7BB4FFC3C3B3FFA4A4B4FFC1C1B3FF7B7BB4FF1212B3FF0C0C
      A8FF000092FF3F3DBAFF626058D7000000000000000000000000007700D800B6
      00FF00B200FF00B300FF00B300FF00B300FF00B200FF00B300FF00B500FF00B0
      00FF00B300FF004C00DB00000020000000000000000099330000CC660000CC66
      0000CC660000CC660000CC6600009933000099330000CC660000CC660000CC66
      0000CC660000CC6600009933000000000000F2E1D100D9C3B400E1C7AF00EDD4
      C800E0C4BF00F3D9DD00F4D8DB00F5D4D800F2D4D700E4C9C300F2D5C300D5B9
      A3005A699B00B59E9500ECCAA700D7C3B600BFBAABFF5857BEFF2827ACFF0E0E
      A4FF0000A5FF0101A2FFBCBCC7FFECECD1FFBDBDC8FF0302A3FF0000A7FF1010
      A6FF2828ADFF5E5DC6FF605F5BD6000000000000000000000000007700D800B6
      00FF00B200FF00B300FF00B300FF00B300FF00B500FF00B600FF00B200FF008A
      00FA002600A50001003200000000000000000000000099330000CC660000CC66
      0000CC660000CC660000993300000000000099330000CC660000CC660000CC66
      0000CC660000993300000000000000000000F3E0D000D9C3B400E0C5AC00F6DE
      C000F4DABC00DDC1B100DFC3C400DFBEBD00D2B19D00D9BDA200DFC3A300B99B
      8800937F8000F9DAB400E4C4A600D7C2B600A4A095FF8C8AC6FF6F6FE4FF2D2D
      C7FF1A1ABAFF9999D8FFFFFFFAFFE4E4EDFFFFFFFBFF9F9FD9FF2020BDFF3333
      C8FF7071E2FFA19FDBFF5F5D5AD7000000000000000000000000007700D800B6
      00FF00B100FF00B300FF00B500FF00B600FF00B100FF008900FA002500A40002
      0036000000000000000000000000000000000000000099330000CC660000CC66
      0000CC66000099330000000000000000000099330000CC660000CC660000CC66
      000099330000000000000000000000000000F2E0D000DAC3B400DEC2AA00E6CB
      B100EFD6BA00FBE3C500ECD4BB00D6B9A000BC9A8000D1B09400D6B59900C19E
      8500DBB89700FFE7C000DEBFA200D7C2B600747067DB8481B1FF8181E3FF3636
      C1FF8F8FD4FFFFFFFFFFA9A9DFFF1A1AB8FFADADE4FFFFFFFFFF9696D6FF3D3D
      C2FF7C7CDEFFB0ADD4FF3E3D3AB4000000000000000000000000007700D800B6
      00FF00B400FF00B600FF00B300FF008C00FB002500A400020035000000000000
      0000000000000000000000000000000000000000000099330000CC660000CC66
      00009933000000000000000000000000000099330000CC660000CC6600009933
      000000000000000000000000000000000000F3E1D100DAC4B500DEC2AA00E7CC
      B200DEC3AB00E9D0B600FBE4C700D6B69B00D2B49400A0967100A1987300C2AD
      8B00D9B69A00EDCDAC00E1C3A500D8C3B700141413648D8896FF8E8ED7FF7474
      DAFF6C6CC7FF9797D4FF3B3CC1FF3B3BCAFF3F3EC3FF9A9AD6FF7272C9FF7575
      D9FF8989D6FFCAC8D0FF03030352000000000000000000000000007400D700B7
      00FF00B200FF008900FA002500A5000200360000000000000000000000000000
      0000000000000000000000000000000000000000000099330000CC6600009933
      00000000000000000000000000000000000099330000CC660000993300000000
      000000000000000000000000000000000000F6E6D800DAC5B800E0C5AD00F3DA
      BE00EFD4BA00F0D7BB00EDD3B800E2C4A700EBCEAE00A89B7E00AEAD8A00C6B5
      9400EFCDAC00E5C3A300E6C6A700D7C5BA00000000003A3937A38E8AACFFA2A2
      E7FF8686DCFF5C5CC8FF6766D1FF6969D0FF6868D0FF5F5FC9FF8787DCFF8C8C
      D7FFB9B7DAFF4B4A46C000000002000000000000000000000000008400E8008F
      00FD002400A30002003500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099330000993300000000
      0000000000000000000000000000000000009933000099330000000000000000
      000000000000000000000000000000000000F6E6D900E1CCC100CBAF9C00EBD2
      B900EBD2B900EDD3BA00DEC3AC00CDB09A00FFF5DE00D2BCA6009D917B00D2BA
      A300E5C3A400D1AF9500CFB19A00E6D5CA0000000000000000095D5C58CD908B
      A9FFA2A1D9FFA7A7E5FFA1A1E3FF9D9EE1FFA0A1E2FFA4A4E2FF9C9BD4FFB0AD
      CDFF7D7B77DA0000001800000000000000000000000000000005001A007B0003
      0040000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F1E0D300F2E1D500DFCBC000D3BE
      B200D4BFB400D7C1B500D8C3B800C5AB9E00EADACA00E4D3C200CAB49E00F7DF
      C500C7AC9900D1BBB100E1CEC200F5E4D80000000000000000000000000D3736
      359E837E8BF68F8CAEFF918FBAFF9392C1FF9390BCFF9694B5FFA19EA8F83A39
      36AD000000150000000000000000000000000000000000000001000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F1E0D400F1E0D400F9E9DD00FAEB
      DF00F7E8DD00F8E9DD00FDEEE200F2E1D700BDA29500E2CFC000EDD8C300C7AC
      9D00DDCAC100FEF1E600F7E8DB00F0DFD3000000000000000000000000000000
      0000161614676B6861D499948FFFA09A96FFA3A09BFF7B7A73D9121210720000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF000000000000FFFF00000000
      0000FFFF0000000000009F3F0000000000008F1F000000000000870F00000000
      0000830700000000000081030000000000008001000000000000810300000000
      00008307000000000000870F0000000000008F1F0000000000009F3F00000000
      0000FFFF000000000000FFFF0000000000000000000000000000000000000000
      000000000000}
  end
end