% test_model_file_exists.m
% Basic repository test for checking that the Simulink model exists.

clear;
clc;

repoRoot = fileparts(fileparts(mfilename('fullpath')));
modelPath = fullfile(repoRoot, "model", "LongitudinalVehicleDynamics.slx");

assert(isfile(modelPath), "Simulink model file was not found.");

disp("Test passed: Simulink model file exists.");
