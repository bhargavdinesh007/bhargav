clear
clc

%User Defined Properties 
serialPort = 'COM5';            % define COM port #
plotTitle = 'Serial Data Log';  % plot title
xLabel = 'Elapsed Time (s)';    % x-axis label
yLabel = 'Acceleration';                % y-axis label
plotGrid = 'on';                % 'off' to turn off grid
min = -15;                     % set y-min
max = 15;                      % set y-max
scrollWidth = 10;               % display period in plot, plot entire data log if <= 0
delay = .0000001;                    % make sure sample faster than resolution

%Define Function Variables
time = 0;
data = zeros(3,1);
count = 0;

%Set up Plot
plotGraph = plot(time,data(1,:),'-r',...
            'LineWidth',2,...
            'MarkerFaceColor','w',...
            'MarkerSize',2);
hold on
plotGraph1 = plot(time,data(2,:),'-m',...
            'LineWidth',1,...
            'MarkerFaceColor','w',...
            'MarkerSize',2);
hold on
plotGraph2 = plot(time,data(3,:),'-b',...
            'LineWidth',1,...
            'MarkerFaceColor','w',...
            'MarkerSize',2);

title(plotTitle,'FontSize',25);
xlabel(xLabel,'FontSize',15);
ylabel(yLabel,'FontSize',15);
axis([0 10 min max]);
grid(plotGrid);

%Open Serial COM Port
s = serial('COM5', 'BaudRate', 9600)
disp('Close Plot to End Session');
fopen(s);

tic

while ishandle(plotGraph) && ishandle(plotGraph2) && ishandle(plotGraph1)  %Loop when Plot is Active

dat = fscanf(s,'%f'); %Read Data from Serial as Float

if(~isempty(dat) && isfloat(dat)) %Make sure Data Type is Correct        
    count = count + 1;    
    time(count) = toc;    %Extract Elapsed Time in seconds
    data(:,count) = dat(:,1); %Extract 1st Data Element         

    %Set Axis according to Scroll Width
    if(scrollWidth > 0)
    set(plotGraph,'XData',time(time > time(count)-scrollWidth),...
        'YData', data(3,time > time(count)-scrollWidth));
    set(plotGraph1,'XData',time(time > time(count)-scrollWidth),...
        'YData', data(2,time > time(count)-scrollWidth));
    set(plotGraph2,'XData',time(time > time(count)-scrollWidth),...
        'YData', data(1,time > time(count)-scrollWidth));

    axis([time(count)-scrollWidth time(count) min max]);
    else
    set(plotGraph,'XData',time,'YData',data(3,:));
    set(plotGraph1,'XData',time,'YData',data(2,:));
    set(plotGraph2,'XData',time,'YData',data(1,:));

    axis([0 time(count) min max]);
    end

    %Allow MATLAB to Update Plot
    pause(delay);
end
end

%Close Serial COM Port and Delete useless Variables
fclose(s);

clear count dat delay max min plotGraph plotGraph1 plotGraph2 plotGrid...
    plotTitle s scrollWidth serialPort xLabel yLabel;

disp('Session Terminated');

prompt = 'Export Data? [Y/N]: ';
str = input(prompt,'s');
if str == 'Y' || strcmp(str, ' Y') || str == 'y' || strcmp(str, ' y')
    %export data
    csvwrite('accelData.csv',data);
    type accelData.csv;
else
end

clear str prompt;