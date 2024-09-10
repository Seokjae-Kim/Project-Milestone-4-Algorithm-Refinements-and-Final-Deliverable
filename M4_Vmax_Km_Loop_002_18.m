function [VMAX, KM] = M4_Vmax_Km_Loop_002_18
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% This program calls the funciton M4_init_velocity_002_18 and uses it to
% store values into an array called M3 and 5 others, which are related to
% M2
%
% Function Call
% M4_velocity_array_002_18
%
% Input Arguments
% NONE
%
% Output Arguments
% 1) M3 Array Velocity - M3 (μM/s)
% 2) M2 Enzyme A Init Velocity - init_vel_EnzymeA (μM/s)
% 3) M2 Enzyme B Init Velocity - init_vel_EnzymeB (μM/s)
% 4) M2 Enzyme C Init Velocity - init_vel_EnzymeC (μM/s)
% 5) M2 Enzyme D Init Velocity - init_vel_EnzymeD (μM/s)
% 6) M2 Enzyme E Init Velocity - init_vel_EnzymeE (μM/s)
%
% Assignment Information
%   Assignment:     M04, Vmax and Km array UDF
%   Team member:    Evan Williams will2459@purdue.edu, Seokjae Kim kim3644@purdue.edu, 
% Vivek Matta mattav@purdue.edu, Ferati Ogunwemimo oogunwem@purdue.edu
%   Team ID:        002-18
%   Academic Integrity:
%     [] We worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers we worked with: Name, login@purdue [repeat for each]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Initialization
% Substrate concentration (μM)
s_conc = [3.75, 7.5, 15, 30, 65, 125, 250, 500, 1000, 2000];

%% Calculation

[M3, init_vel_EnzymeA, init_vel_EnzymeB, init_vel_EnzymeC, init_vel_EnzymeD, init_vel_EnzymeE] = M4_velocity_array_002_18;
[VMAX(1), KM(1)] = M4_Vmax_Km_002_18(s_conc, M3);
[VMAX(2), KM(2)] = M4_Vmax_Km_002_18(s_conc,init_vel_EnzymeA);
[VMAX(3), KM(3)] = M4_Vmax_Km_002_18(s_conc,init_vel_EnzymeB);
[VMAX(4), KM(4)] = M4_Vmax_Km_002_18(s_conc,init_vel_EnzymeC);
[VMAX(5), KM(5)] = M4_Vmax_Km_002_18(s_conc,init_vel_EnzymeD);
[VMAX(6), KM(6)] = M4_Vmax_Km_002_18(s_conc,init_vel_EnzymeE);

% This UDF didn't exist for M2 and M3. We decided to make this loop because
% we want to make our M4 main function more simple.
% In this udf, we put the Vmax and Km values in the array.

% Call the initial velocity udf (μM/s)
% [init_vel_EnzymeA, init_vel_EnzymeB, init_vel_EnzymeC, init_vel_EnzymeD, init_vel_EnzymeE] = M2_avg_velocity_002_18;
% 
% Call the Vmax and Km udf (μM/s and μM)
% [Vmax_A, Km_A] = M2_Vmax_Km_002_18(s_conc,init_vel_EnzymeA);
% [Vmax_B, Km_B] = M2_Vmax_Km_002_18(s_conc,init_vel_EnzymeB);
% [Vmax_C, Km_C] = M2_Vmax_Km_002_18(s_conc,init_vel_EnzymeC);
% [Vmax_D, Km_D] = M2_Vmax_Km_002_18(s_conc,init_vel_EnzymeD);
% [Vmax_E, Km_E] = M2_Vmax_Km_002_18(s_conc,init_vel_EnzymeE);

% Call the initial velocity udf (μM/s)
% [initial_velocity_PGOX50] = M3_velocity_array_002_18;
% 
% Call the Vmax and Km udf (μM/s and μM)
% [Vmax_PGOX50, Km_PGOX50] = M3_Vmax_Km_002_18(s_conc,initial_velocity_PGOX50);



end