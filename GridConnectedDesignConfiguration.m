%% Setting Simulation Constants
T  = 10;
Ts = 5e-6;
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
plot(time,radiation)
grid on;
xlabel('Time of the Day');
ylabel('Direct Solar Radiance (kW/m^2)');
title('Distribution of Direct Solar Radiance on a Day (Location: Latitude = 30 deg. South)');
%% PV Array: 1Soltech - 1STH-215-P

C_PV = 0.05;  % Capacitance Value across PV Array (annot. as C_PV)
R_PV = 10e-3; % Resistance Value across PV Array (annot. as C_PV)