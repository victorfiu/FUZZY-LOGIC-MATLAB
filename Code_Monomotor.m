
% Simulação Gangorra %
% 05/Maio/2020

clc; clear all;

% Parâmetros gerais

g = 9.8; % m/s^2

% Parâmetros do Motor

 R = 0.09; % Ohm
 L = 0.1e-3; % H
Kt = 7.64e-3;  % Nm/A
Ke = 5.372e-3; % V-s/rad
Kf = Kt*Ke/R; 
JM = 4.987e-6; % momento de inercia do motor % Kg.m^2
 M = 0.052; % Kg

 % Parametros das hélices

 Ct = 0.0923;
 Cd = 8.808e-3;
rho = 1.2754; % Kg.m^-3
  D = 0.254; % m
 Jh = 4.839e-5; % Kg.m^2 momento de inercia da helice

Kq = Cd*rho*(D^5)/(4*pi^2)  % Q = Kq.w^2
Ks = Ct*rho*(D^4)/(4*pi^2)  % F = Ks.w^2

% Parâmetros gangorra
Jb = 7.5e-3; % Kg.m^2      %momento de inercia considerando a massa da barra+esc
 m = 0.25; % Kg   massa da barra + esc
 l = 0.3; % comprimento da barra
 
%Linealizando por serie de Taylor e
%Calculando da FT de tetha/V, gangorra dois atuadores
 
w0=500; % rad/seg velociddae do motor para uns 7volt
num1=[JM Kf];
den1=[L R]; den2=[Jb 0 0];
NUM1=Kt*2*Ks*w0*num1;
DEN1=conv(den1, conv(num1,num1))+ Kt*Ke*2*Kq*w0;
G1=tf(NUM1,DEN1);
G2=tf(l,den2);
G=G1*G2
