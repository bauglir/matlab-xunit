%ONLOAD MPM hook when loading matlab-xunit
%
% Description:
% This function provides a hook for MPM to activate matlab-xunit for the active
% MATLAB session
%
% Syntax:
%   onLoad()

% (c) GN ReSound, all rights reserved

function onLoad()
  packageDir = fileparts(mfilename('fullpath'));
  addpath(fullfile(packageDir, 'src'));

  % If a released version is being loaded, the directory containing release
  % information should be added to MATLAB's path to make sure the toolbox
  % properly shows up in the documentation and in the output of the ver command
  releaseInformationPath = fullfile(packageDir, 'matlab-xunit');
  if exist(releaseInformationPath, 'dir') == 7
    addpath(releaseInformationPath);
  end
end
