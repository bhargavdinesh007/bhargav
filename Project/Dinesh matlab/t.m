% Serial Data Logger
% Yu Hin Hau
% 7/9/2013
% **CLOSE PLOT TO END SESSION
 
clear
clc
 
%User Defined Properties 
serialPort = 'COM5';            % define COM port #
plotTitle = 'Bridge Accelerometer Readings';  % plot title
xLabel = 'X';    % x-axis label
yLabel = 'Y';                % y-axis label
zLabel = 'Z';  % z-axis label
plotGrid = 'on';                % 'off' to turn off grid
min = -150000;                     % set y-min
max = 150000;                      % set y-max
scrollWidth = 1;               % display period in plot, plot entire data log if <= 0
delay = .01;                    % make sure sample faster than resolution
 
%Define Function Variables
X = 0;
Y = 0;
Z = 0;
count = 0;
 
%Set up Plot
plotGraph = plot(X,Y,Z,'-mo',...
                'LineWidth',1,...
                'MarkerEdgeColor','k',...
                'MarkerFaceColor',[.49 1 .63],...
                'MarkerSize',2);
             
title(plotTitle,'FontSize',25);
xlabel(xLabel,'FontSize',15);
ylabel(yLabel,'FontSize',15);
zlabel(zlabel,'FontSize',15);
axis([0 20 min max]);
grid(plotGrid);
 
%Open Serial COM Port
s = serial('COM5')
disp('Close Plot to End Session');
fopen(s);
 
tic
 
while ishandle(plotGraph) %Loop when Plot is Active
     
    dat = fscanf(s,'%f'); %Read Data from Serial as Float
  
    if(~isempty(dat) && isfloat(dat)) %Make sure Data Type is Correct        
        count = count + 1;    
        X(count) = X;    %Extract Elapsed Time
        Y(count) = Y(1); %Extract 1st Data Element
Z(count) = Z (2);         
         
        %Set Axis according to Scroll Width
        if(scrollWidth > 0)
        set(plotGraph,'XData',X(X > X(count)-scrollWidth),'YData',Y(Y > Y(count)-scrollWidth),'ZData',Z(Z > Z(count)-scrollWidth));
        axis([X(count)-scrollWidth X(count) min max]);
        else
        set(plotGraph,'XData',X,'YData',Y,'ZData','Z');
        axis([0 X(count) min max]);
        end
         
        %Allow MATLAB to Update Plot
        pause(delay);
    end
end
 
%Close Serial COM Port and Delete useless Variables
fclose(s);
clear count dat delay max min plotGraph plotGrid plotTitle s ...
        scrollWidth serialPort xLabel yLabel;
 
 

