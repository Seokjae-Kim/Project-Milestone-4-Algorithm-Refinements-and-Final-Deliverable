function M4_Main_002_18
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% This main function calls 2 different UDFs to calculate the initial
% velocities of PGO-X50 and 5 NextGen enzymes, Vmax and Km of PGO-X50 and 5 NextGen enzymes, and reaction velocities
% calculated by Michaelis-Menten model and plot those in the graphs.
%
% Function Call
% M4_Main_002_18
%
% Input Arguments
% accepts no inputs
%
% Output Arguments
% No Output Arguments
%
% Assignment Information
%   Assignment:     M04, Main Function
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

[M3, init_vel_EnzymeA, init_vel_EnzymeB, init_vel_EnzymeC, init_vel_EnzymeD, init_vel_EnzymeE] = M4_velocity_array_002_18;
% We put the name of Enzymes in the array
names = ["NextGen-A", "NextGen-B", "NextGen-C", "NextGen-D", "NextGen-E"];

[VMAX, KM] = M4_Vmax_Km_Loop_002_18;


%% Calculation
% Use the Michaelis-Menten Equation
v_M3 = (VMAX(1).*s_conc)./(KM(1) + s_conc);
v_A = (VMAX(2).*s_conc)./(KM(2) + s_conc);
v_B = (VMAX(3).*s_conc)./(KM(3) + s_conc);
v_C = (VMAX(4).*s_conc)./(KM(4) + s_conc);
v_D = (VMAX(5).*s_conc)./(KM(5) + s_conc);
v_E = (VMAX(6).*s_conc)./(KM(6) + s_conc);

%% Figure Display
%Plot the PGO-X50
figure(1)
plot(s_conc,M3,'cx')
hold on
plot(s_conc,v_M3,'c-')
title("Michaelis-Menten Kinetics for PGO-X50")
xlabel("Substrate Concentration [μM]")
ylabel("Velocity [μM/s]")
legend("Initial Velocity of PGO-X50","Michaelis-Menten equation","Location","best")
grid on
hold off

%Plot the Enzyme A
figure(2)
plot(s_conc,init_vel_EnzymeA,'mx')
hold on
plot(s_conc,v_A,'m-')
title("Michaelis-Menten Kinetics for NextGen-A")
xlabel("Substrate Concentration [μM]")
ylabel("Velocity [μM/s]")
legend("Initial Velocity of NextGen-A","Michaelis-Menten equation","Location","best")
grid on
hold off

%Plot the Enzyme B
figure(3)
plot(s_conc,init_vel_EnzymeB,'rx')
hold on
plot(s_conc,v_B,'r-')
title("Michaelis-Menten Kinetics for NextGen-B")
xlabel("Substrate Concentration [μM]")
ylabel("Velocity [μM/s]")
legend("Initial Velocity of NextGen-B","Michaelis-Menten equation","Location","best")
grid on
hold off

%Plot the Enzyme C
figure(4)
plot(s_conc,init_vel_EnzymeC,'bx')
hold on
plot(s_conc,v_C,'b-')
title("Michaelis-Menten Kinetics for NextGen-C")
xlabel("Substrate Concentration [μM]")
ylabel("Velocity [μM/s]")
legend("Initial Velocity of NextGen-C","Michaelis-Menten equation","Location","best")
grid on
hold off

%Plot the Enzyme D
figure(5)
plot(s_conc,init_vel_EnzymeD,'gx')
hold on
plot(s_conc,v_D,'g-')
title("Michaelis-Menten Kinetics for NextGen-D")
xlabel("Substrate Concentration [μM]")
ylabel("Velocity [μM/s]")
legend("Initial Velocity of NextGen-D","Michaelis-Menten equation","Location","best")
grid on
hold off

%Plot the Enzyme E
figure(6)
plot(s_conc,init_vel_EnzymeE,'kx')
hold on
plot(s_conc,v_E,'k-')
title("Michaelis-Menten Kinetics for NextGen-E")
xlabel("Substrate Concentration [μM]")
ylabel("Velocity [μM/s]")
legend("Initial Velocity of NextGen-E","Michaelis-Menten equation","Location","best")
grid on
hold off

%% FORMATTED TEXT
% Print the Vo, Vmax, Km calculated by our UDFs
fprintf("\nThe 10 initial velocities (μM/s) of PGO-X50 calculated by our UDFs are:\n")
disp(M3)

fprintf("\nThe 10 initial velocities (μM/s) of NextGen-A calculated by our UDFs are:\n")
disp(init_vel_EnzymeA)
fprintf("\nThe 10 initial velocities (μM/s) of NextGen-B calculated by our UDFs are:\n")
disp(init_vel_EnzymeB)
fprintf("\nThe 10 initial velocities (μM/s) of NextGen-C calculated by our UDFs are:\n")
disp(init_vel_EnzymeC)
fprintf("\nThe 10 initial velocities (μM/s) of NextGen-D calculated by our UDFs are:\n")
disp(init_vel_EnzymeD)
fprintf("\nThe 10 initial velocities (μM/s) of NextGen-E calculated by our UDFs are:\n")
disp(init_vel_EnzymeE)
    
fprintf("\nThe Vmax (μM/s) and Km (μM) for PGO-X50 calculated by our UDF is %0.4f and %0.4f.\n", VMAX(1), KM(1))
for x = 2:6
    fprintf("\nThe Vmax (μM/s) and Km (μM) for %s calculated by our UDF is %0.4f and %0.4f.\n", names(x - 1), VMAX(x), KM(x))
end

end

%% Result
% The 10 initial velocities (μM/s) of PGO-X50 calculated by our UDFs are:
% 0.0246    0.0487    0.0993    0.1746    0.3291    0.5590    0.8737    1.1876    1.3598    1.6040
% 
% 
% The 10 initial velocities (μM/s) of NextGen-A calculated by our UDFs are:
% 0.0222    0.0440    0.0837    0.1615    0.2813    0.4273     0.5899    0.7401    0.8433    0.9053
% 
% 
% The 10 initial velocities (μM/s) of NextGen-B calculated by our UDFs are:
% 0.0155    0.0312    0.0602    0.1159    0.2103    0.3320     0.4739    0.6288    0.7732    0.8184
% 
% 
% The 10 initial velocities (μM/s) of NextGen-C calculated by our UDFs are:
% 0.0221    0.0450    0.0854    0.1638    0.2966    0.4619     0.6490    0.8130    0.9566    1.0236
% 
% 
% The 10 initial velocities (μM/s) of NextGen-D calculated by our UDFs are:
% 0.0207    0.0414    0.0808    0.1548    0.2866    0.4545    0.6626    0.8791    1.0663    1.1638
% 
% 
% The 10 initial velocities (μM/s) of NextGen-E calculated by our UDFs are:
% 0.0281    0.0550    0.1080    0.1948    0.3631    0.5610    0.7858    0.9870    1.1559    1.2323
% 
% 
% The Vmax (μM/s) and Km (μM) for PGO-X50 calculated by our UDF is 1.7963 and 268.9821.
% 
% The Vmax (μM/s) and Km (μM) for NextGen-A calculated by our UDF is 1.0384 and 171.2650.
% 
% The Vmax (μM/s) and Km (μM) for NextGen-B calculated by our UDF is 0.9954 and 235.7527.
% 
% The Vmax (μM/s) and Km (μM) for NextGen-C calculated by our UDF is 1.2847 and 212.6062.
% 
% The Vmax (μM/s) and Km (μM) for NextGen-D calculated by our UDF is 1.4238 and 253.2536.
% 
% The Vmax (μM/s) and Km (μM) for NextGen-E calculated by our UDF is 1.3612 and 177.5892.
