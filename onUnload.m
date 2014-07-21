%ONUNLOAD MPM hook when unloading matlab-xunit
%
% Description:
% This function provides a hook for MPM to deactivate matlab-xunit for the
% active MATLAB session
%
% Syntax:
%   onUnload()

% (c) GN ReSound, all rights reserved

function onUnload()
  packageDir = fileparts(mfilename('fullpath'));
  rmpath(fullfile(packageDir, 'src'));

  % If a released version is being loaded, the directory containing release
  % information should be added to MATLAB's path to make sure the toolbox
  % properly shows up in the documentation and in the output of the ver command
  releaseInformationPath = fullfile(packageDir, 'matlab-xunit');
  if exist(releaseInformationPath, 'dir') == 7
    addpath(releaseInformationPath);
  end
end
