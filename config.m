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
% Max. Power = 213.15 W
C_PV = 100e-6; % Capacitance Value across PV Array (annot. as C_PV)
R_PV = 10e-3;  % Resistance Value across PV Array (annot. as C_PV)

%% RLC Value for DC-DC Converters
% Buck, Boost, Buck-Boost
Rs = 0.1;  % Series Resistance
Rp = 1e-4; % Palallel Resistance
L  = 5e-3;
C  = 3330e-6;

% Resistive Load
LOAD = 7;