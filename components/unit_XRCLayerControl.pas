(* *****************************************************************************
  *
  *   X-Ray Calc 3
  *
  *   Copyright (C) 2001-2023 Oleksiy Penkov
  *   e-mail: oleksiypenkov@intl.zju.edu.cn
  *
  ****************************************************************************** *)

unit unit_XRCLayerControl;

interface

uses
  SysUtils, Classes, Controls, ExtCtrls, RzEdit, RzSpnEdt,
  RzPanel, RzButton, RzLabel, RzRadChk, RzCommon, Vcl.Graphics, VCL.Menus, unit_types,
  Messages, Winapi.Windows, unit_consts, editor_Layer;

type
  TXRCLayerControl = class (TRzPanel)
    private
      Name: TRzLabel;
      Thickness: TRzSpinEdit;
      Sigma: TRzSpinEdit;
      Rho: TRzSpinEdit;

      FLinkCheckBox: TRzCheckBox;

      PairedH, PairedS, PairedR: TRzCheckBox;

      FMenu: TPopupMenu;

      FData : TLayerData;
      FOnSet:  boolean;
      FHandler: HWND;

      FLinked : TXRCLayerControl;
      FSubstrate: boolean;
      FSelected: boolean;

      procedure CheckBoxClick(Sender: TObject);
      procedure ValueChange(Sender: TObject);
      procedure SetIncrement(const Value: Double);
      procedure SetEnabled(const Value: Boolean); reintroduce; overload;
      function GetEnabled: Boolean; reintroduce; overload;
      function GetLinked: TXRCLayerControl;
      procedure SetLinked(const Value: TXRCLayerControl);
      function GetCheckBox: TRzCheckBox;
      procedure SetCheckBox(const Value: TRzCheckBox);
      function GetLinkChecked: Boolean;
      procedure SetSubstrate(const Value: boolean);
      procedure InternalOnDblClick(Sender: TObject);
      procedure InternalOnClick(Sender: TObject);
      procedure LinkedOnClick(Sender: TObject);
      function AddSpinEdit(const index, Left, Max: integer): TRzSpinEdit;
      procedure SetLayerData(const Value: TLayerData);
      procedure SetSlected(const Value: boolean);
      function AddCheckBox(const index, Left: integer): TRzCheckBox;
      procedure SetPairable(const Value: boolean);
      procedure SetLinkChecked(const Value: boolean);
      function GetID: Integer;
      function GetStackID: Integer;
      procedure CreateMenu;
      procedure MenuOnClick(Sender: TObject);
      procedure SetEnableLinking(const Value: boolean);
    public
      constructor Create(AOwner: TComponent; const Handler: HWND; const Data: TLayerData); reintroduce; overload;
      destructor  Destroy; override;

      property Substrate: boolean read FSubstrate write SetSubstrate;

      procedure Edit;
    published
      property Increment: Double write SetIncrement;
      property Enabled: Boolean read GetEnabled write SetEnabled;
      property Linked:TXRCLayerControl read GetLinked write SetLinked;
      property Onset: Boolean read FOnSet write FOnSet;
      property CheckBox:TRzCheckBox read GetCheckBox write SetCheckBox;
      property Checked: Boolean read GetLinkChecked;
      property Selected: boolean read FSelected write SetSlected;
      property Pairable: boolean write SetPairable;
      property EnableLinking: boolean write SetEnableLinking;
      property Data: TLayerData read FData write SetLayerData;

      procedure IncreaseThickness;
      procedure DecreaseThickness;
      procedure UpdateID(const StackID, LayerID: integer);
      property LinkChecked: boolean read GetLinkChecked write SetLinkChecked;

      property ID: Integer read GetID;
      property StackID: Integer read GetStackID;
  end;

implementation

uses
   unit_SMessages;

const
  Captions: array [1..5] of string = ('Move up','Move down','Insert above','-','Delete');
  Tags    : array [1..5] of Cardinal = (WM_STR_LAYER_UP, WM_STR_LAYER_DOWN, WM_STR_LAYER_INSERT, 0, WM_STR_LAYER_DELETE);


{ TXRCLayerControl }

function TXRCLayerControl.AddSpinEdit(const index, Left, Max: integer):TRzSpinEdit;
begin
  Result := TRzSpinEdit.Create(Self);

  Result.Parent := Self;
  Result.Left := Left;
  Result.Top := 11;
  Result.Width := 58;
  Result.Height := 21;
  Result.Decimals := 2;
  Result.Increment := 0.1;
  Result.Max := Max;
  Result.Min := 0;
  Result.AllowKeyEdit := True;
  Result.IntegersOnly := False;
  Result.CheckRange := True;
  Result.Tag := Index;

  Result.OnChange := ValueChange
end;

function TXRCLayerControl.AddCheckBox(const index, Left: integer):TRzCheckBox;
begin
  Result := TRzCheckBox.Create(Self);

  Result.Parent := Self;
  Result.Left := Left;
  Result.Top := 13;
  Result.Tag := Index;
  Result.ShowHint := True;
  Result.Hint := 'Mark this parameter as paired accross all repeated stacks';

  Result.OnClick := CheckBoxClick;
end;

procedure TXRCLayerControl.CheckBoxClick(Sender: TObject);
begin
  FData.P[(Sender as TRzCheckBox).Tag].Paired := (Sender as TRzCheckBox).Checked;
end;

constructor TXRCLayerControl.Create(AOwner: TComponent; const Handler: HWND; const Data: TLayerData);
begin
  inherited Create(AOwner);
  Parent := AOwner as TWinControl;
  FHandler := Handler;

  FOnset := True;
//  FData  := Data;


  AlignWithMargins := True;
  Align := alTop;
  BevelWidth := 5;
  BorderOuter := fsFlatRounded;

  //Name
  Name := TRzLabel.Create(Self);

  //Thickness
  Thickness := AddSpinEdit(1, 90, 99999);
  PairedH   := AddCheckBox(1, 150);

  //Sigma
  Sigma := AddSpinEdit(2, 170, 50);
  PairedS   := AddCheckBox(2, 230);

  //Rho
  Rho := AddSpinEdit(3, 250, 30);
  PairedR   := AddCheckBox(3, 310);

  //RzCheckBox1
  FLinkCheckBox := TRzCheckBox.Create(Self);


  //Name
  Name.Name := 'Name';
  Name.Parent := Self;
  Name.Left := 25;
  Name.Top := 14;
  Name.Width := 129;
  Name.Height := 13;
  Name.AutoSize := False;
  Name.Caption := 'Name';
  Name.Font.Height := -11;
  Name.Font.Name := 'Tahoma';
  Name.Font.Style := [fsBold];
  Name.ParentFont := False;

  //Link
  FLinkCheckBox.Name := '';
  FLinkCheckBox.Parent := Self;
  FLinkCheckBox.Left := 5;
  FLinkCheckBox.Top := 13;
  FLinkCheckBox.Width := 19;
  FLinkCheckBox.Height := 15;
  FLinkCheckBox.TabOrder := 3;
  FLinkCheckBox.ShowHint := True;
  FLinkCheckBox.Hint := 'Pair to another layer';


  Name.Caption    := Data.Material;
  SetLayerData(Data);

  FLinked := nil;

  Self.OnDblClick := InternalOnDblClick;
  Name.OnDblClick := InternalOnDblClick;
  Self.OnClick := InternalOnClick;
  Name.OnClick := InternalOnClick;
  FLinkCheckBox.OnClick := LinkedOnClick;

  FSubstrate := False;
  FOnset := False;

  CreateMenu;
end;

procedure TXRCLayerControl.CreateMenu;
var
  Item: TMenuItem;
  i: Integer;
begin
  FMenu := TPopupMenu.Create(Self);
  Self.PopupMenu := FMenu;

  for I := 1 to 5 do
  begin
    Item := TMenuItem.Create(FMenu);;
    Item.Tag     := Tags[i];
    Item.Caption := Captions[i];
    if Tags[i] <> 0 then
      Item.OnClick := MenuOnClick;
    FMenu.Items.Add(Item);
  end;
end;

procedure TXRCLayerControl.DecreaseThickness;
begin
  FOnSet := True;
  Thickness.Value := Thickness.Value - Thickness.Increment;
  FData.P[1].V := Thickness.Value;
  FOnSet := False;
end;

destructor TXRCLayerControl.Destroy;
begin
  FLinked := nil;
  inherited Destroy;
end;

procedure TXRCLayerControl.Edit;
begin
  if edtrLayer.ShowEditor(FSubstrate, FData) then
  begin
    Name.Caption    := Data.Material;
    SetLayerData(FData);
  end;

  SetSlected(False);
end;

procedure TXRCLayerControl.SetCheckBox(const Value: TRzCheckBox);
begin
  FLinkCheckBox := Value;
end;

procedure TXRCLayerControl.SetEnabled(const Value: Boolean);
begin
  Enabled := Value;
end;

procedure TXRCLayerControl.SetEnableLinking(const Value: boolean);
begin
  FLinkCheckBox.Visible := Value;
end;

function TXRCLayerControl.GetCheckBox: TRzCheckBox;
begin
  Result := FLinkCheckBox;
end;

function TXRCLayerControl.GetEnabled: Boolean;
begin
  Result := Enabled;
end;

function TXRCLayerControl.GetID: Integer;
begin
  Result := FData.LayerID;
end;

function TXRCLayerControl.GetStackID: Integer;
begin
  Result := FData.StackID;
end;

function TXRCLayerControl.GetLinkChecked: Boolean;
begin
  if FLinkCheckBox.Visible then
    Result := FLinkCheckBox.Checked
  else
    Result := False;
end;

function TXRCLayerControl.GetLinked: TXRCLayerControl;
begin
  if Assigned(FLinked) then
    Result := FLinked
  else
    Result := nil;
end;

procedure TXRCLayerControl.IncreaseThickness;
begin
  FOnSet := True;
  Thickness.Value := Thickness.Value + Thickness.Increment;
  FData.P[1].V := Thickness.Value;
  FOnSet := False;
end;

procedure TXRCLayerControl.InternalOnClick(Sender: TObject);
begin
  if not FSubstrate then
      LayerClick(FData.StackID, FData.LayerID);
end;

procedure TXRCLayerControl.InternalOnDblClick(Sender: TObject);
begin
  Edit;
end;

procedure TXRCLayerControl.LinkedOnClick(Sender: TObject);
begin
  LinkedClick(FData.StackID, FData.LayerID);
end;


procedure TXRCLayerControl.MenuOnClick(Sender: TObject);
begin
  ArrangeLayer((Sender as TMenuItem).Tag, FData.StackID, FData.LayerID);
end;

procedure TXRCLayerControl.SetIncrement(const Value: Double);
begin
  Thickness.Increment := Value;
  Sigma.Increment     := Value;
  Rho.Increment       := Value;
end;

procedure TXRCLayerControl.SetLayerData(const Value: TLayerData);
begin
  FData := Value;

  Thickness.Value := FData.P[1].V;
  PairedH.Checked := FData.P[1].Paired;

  Sigma.Value     := FData.P[2].V;
  PairedS.Checked := FData.P[2].Paired;

  Rho.Value       := FData.P[3].V;
  PairedR.Checked := FData.P[3].Paired;
end;

procedure TXRCLayerControl.SetLinkChecked(const Value: boolean);
begin
  FLinkCheckBox.Checked := Value;
end;

procedure TXRCLayerControl.SetLinked(const Value: TXRCLayerControl);
begin
  FLinked := Value;
end;

procedure TXRCLayerControl.SetPairable(const Value: boolean);
begin
  PairedH.Visible := Value;
  PairedS.Visible := Value;
  PairedR.Visible := Value;
end;

procedure TXRCLayerControl.SetSlected(const Value: boolean);
begin
  FSelected := Value;
  if FSelected then
    Name.Font.Color := clRed
  else
    Name.Font.Color := clBlack;
end;

procedure TXRCLayerControl.SetSubstrate(const Value: boolean);
begin
  FSubstrate := Value;
  Thickness.Visible := not FSubstrate;
  FLinkCheckBox.Visible := not FSubstrate;
  SetPairable(False);
  Color := clLtGray;
end;

procedure TXRCLayerControl.UpdateID(const StackID, LayerID: integer);
begin
  FData.StackID := StackID;
  if LayerID <> -1 then
       FData.LayerID := LayerID;
end;

procedure TXRCLayerControl.ValueChange;
var
  OnSetOld: Boolean;
  OldValue: single;
begin
  if FOnSet then Exit;
  
  OnSetOld := FOnSet;
  FOnSet := True;

   case (Sender as TRzSpinEdit).Tag of
     1: begin
          OldValue := FData.P[1].V ;
          FData.P[1].V := (Sender as TRzSpinEdit).Value;
          if Assigned(FLinked)and (not FLinked.OnSet) then
          begin
            FLinked.OnSet := True;
            if FData.P[1].V < OldValue then
                 FLinked.IncreaseThickness
            else
                 FLinked.DecreaseThickness;
            FLinked.OnSet := False;
        end;
        end;
     2: FData.P[2].V := (Sender as TRzSpinEdit).Value;
     3: FData.P[3].V := (Sender as TRzSpinEdit).Value;
   end;

  FOnSet := OnSetOld;
  if not FOnSet then
     SendRecalcMessage;
end;

end.
