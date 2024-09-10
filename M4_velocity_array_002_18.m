function [M3, init_vel_EnzymeA, init_vel_EnzymeB, init_vel_EnzymeC, init_vel_EnzymeD, init_vel_EnzymeE] = M4_velocity_array_002_18
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
%   Assignment:     M04, Vo array UDF
%   Team member:    Evan Williams will2459@purdue.edu, Seokjae Kim kim3644@purdue.edu, 
% Vivek Matta mattav@purdue.edu, Ferati Ogunwemimo oogunwem@purdue.edu
%   Team ID:        002-18
%   Academic Integrity:
%     [] We worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers we worked with: Name, login@purdue [repeat for each]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Refinement 1
% I added the tic and toc feature to see how fast the for loop was. I
% wanted to try and see if a while loop was faster. They are roughly the
% same speed so there is no point in trying to switch to the while loop

tic
% calls the previous function and stores values into array
for x = 1:10
    [M3(x), init_vel_EnzymeA(x)] = M4_init_velocity_002_18(x, 1, x);
end

for x = 1:10
    [~, init_vel_EnzymeB(x)] = M4_init_velocity_002_18(x, 2, x);
end

for x = 1:10
    [~, init_vel_EnzymeC(x)] = M4_init_velocity_002_18(x, 3, x);
end

for x = 1:10
    [~, init_vel_EnzymeD(x)] = M4_init_velocity_002_18(x, 4, x);
end

for x = 1:10
    [~, init_vel_EnzymeE(x)] = M4_init_velocity_002_18(x, 5, x);
end
toc

end
% In M2, there are only 2 inputs for M2_init_velocity_002_18 UDF and there
% is only 1 input for M3_init_velocity_002_18 UDF. However, for
% M4_init_velocity_002_18 UDF, we use 3 inputs.

% for x = 1:10
%     init_vel_EnzymeA(x) = M2_init_velocity_002_18(1, x);
% end
% 
% for x = 1:10
%     init_vel_EnzymeB(x) = M2_init_velocity_002_18(2, x);
% end
% 
% for x = 1:10
%     init_vel_EnzymeC(x) = M2_init_velocity_002_18(3, x);
% end
% 
% for x = 1:10
%     init_vel_EnzymeD(x) = M2_init_velocity_002_18(4, x);
% end
% 
% for x = 1:10
%     init_vel_EnzymeE(x) = M2_init_velocity_002_18(5, x);
% end
%     
% 
% 
% end
% for x = 1:10
%     init_vel_array(x) = M3_init_velocity_002_18(x);
% end