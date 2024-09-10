function [Vmax, Km] = M4_Vmax_Km_002_18(s_conc, v_naught)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% This program performs non linear regression of a Michaelis - Menten plot
% to find the Vmax and Km according to Lineweaver-Burk linearization
%
% Function Call
% [m, b] = non_lin_reg_18(s_conc, v_naught)
%
% Input Arguments
% s_conc = substrate concentration in molarity (M) entered as a vector 
% v_naught = value of v naught for each substrate concentration entered as
% a vector 
%
% Output Arguments
% Vmax = Maximum velocity found with Lineweaver-Burk linearization
% Km = Michaelis constant found with Lineweaver-Burk linearization
%
% Assignment Information
%   Assignment:     M04, Vmax and Km UDF
%   Team member:    Evan Williams will2459@purdue.edu, Seokjae Kim kim3644@purdue.edu, 
% Vivek Matta mattav@purdue.edu, Ferati Ogunwemimo oogunwem@purdue.edu
%   Team ID:        002-18
%   Academic Integrity:
%     [] We worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers we worked with: Name, login@purdue [repeat for each]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION
s_conc_lin = 1./s_conc ; %Substrate concentration linearized by Lineweaver-Burk

v_naught_lin = 1./v_naught ; %V naught linearized by Lineweaver-Burk 

%% ____________________
%% CALCULATIONS

%Find m and b of plot 
lin_coefs = polyfit(s_conc_lin, v_naught_lin, 1) ; 
m = lin_coefs(1) ; 
b = lin_coefs(2) ; 

Vmax = 1/b ; %Vmax found using Lineweaver-Burk linearization 

Km = m*Vmax ; %Km found using Lineweaver-Burk linearization 

%% ____________________
%% FORMATTED TEXT/FIGURE DISPLAYS


%% ____________________
%% RESULTS


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% We have not used source code obtained from any other unauthorized
% source, either modified or unmodified. Neither have we provided
% access to my code to another. The program we are submitting
% is our own original work.



