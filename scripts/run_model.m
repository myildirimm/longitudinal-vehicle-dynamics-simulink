% run_model.m
% Basic script to open and run the longitudinal vehicle dynamics Simulink model.

clear;
clc;

repoRoot = fileparts(fileparts(mfilename('fullpath')));
addpath(genpath(repoRoot));

modelName = "LongitudinalVehicleDynamics";
modelPath = fullfile(repoRoot, "model", modelName + ".slx");

if ~isfile(modelPath)
    error("Model file not found: %s", modelPath);
end

open_system(modelPath);

disp("Model opened successfully.");
disp("Run the simulation from Simulink or use sim(modelName) after checking model configuration.");
