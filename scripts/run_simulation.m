% run_simulation.m
% Example script to run the Simulink model from MATLAB.

clear;
clc;

%Model parameters
run(fullfile(repoRoot, "scripts", "setup_parameters.m"));

repoRoot = fileparts(fileparts(mfilename('fullpath')));
addpath(genpath(repoRoot));

modelName = "LongitudinalVehicleDynamics";
modelPath = fullfile(repoRoot, "model", modelName + ".slx");

if ~isfile(modelPath)
    error("Model file not found: %s", modelPath);
end

load_system(modelPath);

try
    simOut = sim(modelName);
    disp("Simulation completed successfully.");
    disp(simOut);
catch ME
    warning("The model was opened, but automatic simulation failed.");
    warning("Reason: %s", ME.message);
    disp("Please open the model and check required parameters or workspace variables.");
end
