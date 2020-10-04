%% Model Configuration
T  = 10.0;  % Simulation Time
Ts = 10e-6; % Sample Time (fixed-step, discrete)

%% Reading Solar Direct Radiance Data
data = readtable('./data/direct_solar_radiation_in_kW_per_m2.csv');
time = data.TIME;              % Time of the Day
radiation = data.RADIATION;    % Direct Solar Radiation in kW/m^2
radiation = radiation .* 1000; % Converted Radiation in W/m^2

a = 0;
step = T / length(time);
for i = 1:length(time)
    time(i) = a;  % Divide the time into T = 10.0
    a = a + step;
end

clear data step a i; % Delete unwanted data
% plot(time,radiation)
% xlabel('Time of the Day');
% ylabel('Direct Solar Radiance kW/m^2');
% title('Distribution of Solar Radiance on a Day (Location: Latitude = 30 deg. South)');

%% Temperature Data
temp = 25; % Constant, but can be built using signal builder

%% PV Array: 1Soltech - 1STH-215-P
%  with a Max. Power = 213.15 W per Cell
C_PV = 100e-6; % Capacitance Value across PV Array (annot. as C_PV)
R_PV = 10e-3;  % Resistance Value across PV Array (annot. as C_PV)

%% DC-DC Converters Specifications
Rs = 0.1;  % Series Resistance
Rp = 1e-4; % Palallel Resistance

%  Boost Converter      : bst
L_bst = 5e-3;
C_bst = 3330e-6;

%  Buck Converter       : bck
L_bck  = 0.2e-3;
C_bck  = 3330e-6;

%  Buck-Boost Converter : bbc
L_bbc = 0.05;
C_bbc = 1e-4;
%  CUK Converter        : cuk
%  SEPIC Converter      : spc

L1 = 1.73e-3;
L2 = 57.6e-3;
C1 = 3.52e-6;
C2 = 20.05e-9;


L1_s  = 1.73e-3;
L2_s  = 57.6e-3;
C1_s  = 3.52e-6;
C2_s  = 20.05e-9;
Cin_s = 3.3e-6;

% Resistive Load
LOAD = 50;