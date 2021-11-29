clear; clear all; pkg load signal; pkg load control;

% --------------------------------------------------------------------------------
% DATOS:
% --------------------------------------------------------------------------------
% Orden del filtro:
n  = 10;    % [  ]  

% Frecuencia de muestreo:
fs = 20e3;  % [Hz]

% Frecuencia maxima segun Nyquist:
fm = fs/2; % [Hz]

% Frecuencia de corte:
fc = 0.2*fm
% --------------------------------------------------------------------------------

% --------------------------------------------------------------------------------
% CALCULOS:
% --------------------------------------------------------------------------------
% Coeficientes ventana Hamming:
% Como no se especifica ventana, fir1 supone una tipo Hammington:
hamm = fir1(n, fc/fm, "high")

% Grafico en frecuencia del filtro:
freqz(hamm)
marker(1)
% --------------------------------------------------------------------------------
