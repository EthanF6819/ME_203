%ethan ferguson
%functions
clc, clear, format compact
%% F to C
F=-100:100;
C=FtoC(F)
plot(F,C)

% function [Celsius] = FtoC(Fahrenheit)
% %converts F to C
% %[Celsius] = FtoC(Fahrenheit)
% Celsius=(5/9)*(Fahrenheit-32);
% end

loc=find(F==C)
CC=C(loc)
%% Example 2
% nargout tells how many variables are needed to put in to recieve output
