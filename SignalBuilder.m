T   = 10; % Simulation Time
IRR = [   % Irradiation Values
        350
        500
        750
        850
        950
        1000
        750
        500
        350
        350
    ];

for i = 1:length(IRR)
    time(i) = i;
end