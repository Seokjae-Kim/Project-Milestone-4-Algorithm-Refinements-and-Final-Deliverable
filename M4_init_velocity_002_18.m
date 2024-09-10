function [init_vel, avg_init_vel_M2] = M4_init_velocity_002_18(column_num, test_number, col)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% This program calculates the initial velocity for the nth column
%
% Function Call
% M4_init_velocity_002_18
%
% Input Arguments
% Column Number for M3 PGO-X50 data - column_num (#)
% Test Number for M2 data - test_number (#)
% Column Number for M2 data - col (#)
%
% Output Arguments
% 1) Initial Velocity - init_vel (uM/s)
% 2) Average Init Velocity for M2 - avg_init_vel_M2 (uM/s)
%
% Assignment Information
%   Assignment:     M04, Vo UDF
%   Team member:    Evan Williams will2459@purdue.edu, Seokjae Kim kim3644@purdue.edu, 
% Vivek Matta mattav@purdue.edu, Ferati Ogunwemimo oogunwem@purdue.edu
%   Team ID:        002-18
%   Academic Integrity:
%     [] We worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers we worked with: Name, login@purdue [repeat for each]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% From M3
%% Initialization

if column_num > 10
    error("Please enter a value between 1-10")
end

if col > 10
    error("Please enter a value between 1-10")
end

% imports data from csv file for PGO-X50
test_data = readmatrix("Data_PGOX50_enzyme.csv");

% only outputs a certain number of values 
%% Refinement 2
% length_arr = 51;
% We changed the length of array from M3 because using 53 gives low
% percent error than using 51.
length_arr = 53;

% saves different columns into these variables
time_array = test_data(8:length_arr, 1);
y_data = test_data(8:length_arr, column_num + 1);

%% ____________________
%% CALCULATIONS
% FINDS COEFFICENTS FOR TEST (A, B)
coeffs = polyfit(time_array, y_data, 1);

%% OUTPUT
init_vel = coeffs(1);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% From M2
test_data_M2 = readmatrix("Data_nextGen_KEtesting_allresults.csv");

%% Refinement 2
% We changed the 1.25% of data used to a constant value of 45. This was to
% keep all data consistent share the same as M3 data

% length_arr_M2 = numel(test_data_M2(5:end, col + 1));
% length_arr_M2 = ceil(length_arr_M2 * 0.0125);
length_arr_M2 = 45;

% We only changed the name of variables from M2 in order to differenitate
% with the variables' name in M3. However, the structure of codes are the
% same.
time_array_M2 = test_data_M2(5:length_arr_M2, 1);
y_data_M2 = test_data_M2(5:length_arr_M2, (test_number * 20 - 18) + col - 1);
y_dup_data_M2 = test_data_M2(5:length_arr_M2, col + 11);


%% ____________________
%% CALCULATIONS
% FINDS COEFFICENTS FOR TEST (A, B)
coeffs_test = polyfit(time_array_M2, y_data_M2, 1);

% FINDS COEFFICENTS FOR TEST AVERAGE (A, B)
coeffs_avg = polyfit(time_array_M2, y_dup_data_M2, 1);

%% OUTPUT
avg_init_vel_M2 = (coeffs_test(1) + coeffs_avg(1)) / 2;