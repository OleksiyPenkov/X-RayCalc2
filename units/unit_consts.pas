﻿unit unit_consts;

interface

uses
Messages;

const

  CURRENT_PROJECT_VERSION = 4;

  PARAMETERS_FILE_NAME = 'params.dsc';
  PROJECT_FILE_NAME = 'project.dsc';

  WM_RECALC = WM_USER + 1;
  WM_STARTEDITING = WM_USER + 2;

  PAlias : array [1..3] of string = ('H','s','r');

implementation

end.
