clc;
clear;
close all;


% Industrial Furnace Model
% dT/dt = 10 - 0.05T

% Step size and simulation time
h = 1;                    % Time step (minutes)
t_end = 100;              % Total simulation time
t = 0:h:t_end;            % Time vector
n = length(t);            % Number of points

% Model parameters
a = 10;                   % Heating input
b = 0.05;                 % Cooling coefficient
T0 = 30;                  % Initial temperature (°C)

% Preallocate arrays
T_euler = zeros(1,n);     
T_exact = zeros(1,n);
error_percent = zeros(1,n);

% Initial condition
T_euler(1) = T0;

% Euler Method Calculation

for i = 1:n-1
    
    dTdt = a - b*T_euler(i);       % Compute derivative
    T_euler(i+1) = T_euler(i) + h*dTdt;   % Euler formula
    
end

% Exact Analytical Solution

T_steady = a/b;   % Steady-state temperature

for i = 1:n
    
    T_exact(i) = T_steady + (T0 - T_steady)*exp(-b*t(i));
    
end

% Error Calculation


for i = 1:n
    
    error_percent(i) = abs((T_exact(i) - T_euler(i)) / T_exact(i)) * 100;
    
end


% Plot Temperature Comparison


figure;
plot(t, T_euler, 'bo-','LineWidth',1.2);
hold on;
plot(t, T_exact, 'r','LineWidth',2);
xlabel('Time (minutes)');
ylabel('Temperature (°C)');
title('Furnace Temperature: Euler vs Exact Solution');
legend('Euler Method','Exact Solution');
grid on;


% Plot Percentage Error


figure;
plot(t, error_percent,'k','LineWidth',2);
xlabel('Time (minutes)');
ylabel('Percentage Error (%)');
title('Percentage Error between Euler and Exact');
grid on;

% Display steady-state value
disp(['Steady State Temperature = ', num2str(T_steady), ' °C']);
