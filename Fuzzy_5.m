%  SISTEMA FUZZY MAMDANI -- 25 combinações respondeu bem

fuzzyFIS = mamfis(...
	'NumInputs',2,'NumInputMFs',3, ...
	'NumOutputs',1,'NumOutputMFs',9, ...
	'AddRule','none'...
	);

% ENTRADAS

fuzzyFIS.Inputs(1).Name = 'Error';
fuzzyFIS.Inputs(1).Range = [-60, 60];
fuzzyFIS.Inputs(1).MembershipFunctions(1).Name = 'EN';
fuzzyFIS.Inputs(1).MembershipFunctions(1).Type = 'trapmf';
fuzzyFIS.Inputs(1).MembershipFunctions(1).Parameters = [-60 -60 -30 -5];
fuzzyFIS.Inputs(1).MembershipFunctions(2).Name = 'EMN';
fuzzyFIS.Inputs(1).MembershipFunctions(2).Type = 'trapmf';
fuzzyFIS.Inputs(1).MembershipFunctions(2).Parameters = [-20 -10 -5 5];
fuzzyFIS.Inputs(1).MembershipFunctions(3).Name = 'EZ';
fuzzyFIS.Inputs(1).MembershipFunctions(3).Type = 'trapmf';
fuzzyFIS.Inputs(1).MembershipFunctions(3).Parameters = [-10 -5 5 10];
fuzzyFIS.Inputs(1).MembershipFunctions(4).Name = 'EMP';
fuzzyFIS.Inputs(1).MembershipFunctions(4).Type = 'trapmf';
fuzzyFIS.Inputs(1).MembershipFunctions(4).Parameters = [-5 5 10 20];
fuzzyFIS.Inputs(1).MembershipFunctions(5).Name = 'EP';
fuzzyFIS.Inputs(1).MembershipFunctions(5).Type = 'trapmf';
fuzzyFIS.Inputs(1).MembershipFunctions(5).Parameters = [5 30 60 60];

fuzzyFIS.Inputs(2).Name = 'DerivateError';
fuzzyFIS.Inputs(2).Range = [-30, 30];
fuzzyFIS.Inputs(2).MembershipFunctions(1).Name = 'DEN';
fuzzyFIS.Inputs(2).MembershipFunctions(1).Type = 'trapmf';
fuzzyFIS.Inputs(2).MembershipFunctions(1).Parameters = [-30 -30 -15 -2.5];
fuzzyFIS.Inputs(2).MembershipFunctions(2).Name = 'DEMN';
fuzzyFIS.Inputs(2).MembershipFunctions(2).Type = 'trapmf';
fuzzyFIS.Inputs(2).MembershipFunctions(2).Parameters = [-10 -5 -2.5 2.5];
fuzzyFIS.Inputs(2).MembershipFunctions(3).Name = 'DEZ';
fuzzyFIS.Inputs(2).MembershipFunctions(3).Type = 'trapmf';
fuzzyFIS.Inputs(2).MembershipFunctions(3).Parameters = [-5 -2.5 2.5 5];
fuzzyFIS.Inputs(2).MembershipFunctions(4).Name = 'DEMP';
fuzzyFIS.Inputs(2).MembershipFunctions(4).Type = 'trapmf';
fuzzyFIS.Inputs(2).MembershipFunctions(4).Parameters = [-2.5 2.5 5 10];
fuzzyFIS.Inputs(2).MembershipFunctions(5).Name = 'DEP';
fuzzyFIS.Inputs(2).MembershipFunctions(5).Type = 'trapmf';
fuzzyFIS.Inputs(2).MembershipFunctions(5).Parameters = [2.5 15 30 30];

% GRÁFICO ENTRADAS
%plotmf(fuzzyFIS,'input',1,1000);
%plotmf(fuzzyFIS,'input',2,1000);

% SAÍDAS

fuzzyFIS.Outputs(1).Name = 'Tension';
fuzzyFIS.Outputs(1).Range = [1, 4];
fuzzyFIS.Outputs(1).MembershipFunctions(1).Name = 'TP10';
fuzzyFIS.Outputs(1).MembershipFunctions(1).Type = 'trapmf';
fuzzyFIS.Outputs(1).MembershipFunctions(1).Parameters = [2.725	2.765	2.805	2.845];
fuzzyFIS.Outputs(1).MembershipFunctions(2).Name = 'TP9';
fuzzyFIS.Outputs(1).MembershipFunctions(2).Type = 'trapmf';
fuzzyFIS.Outputs(1).MembershipFunctions(2).Parameters = [2.685	2.725	2.765	2.805];
fuzzyFIS.Outputs(1).MembershipFunctions(3).Name = 'TP8';
fuzzyFIS.Outputs(1).MembershipFunctions(3).Type = 'trapmf';
fuzzyFIS.Outputs(1).MembershipFunctions(3).Parameters = [2.645	2.685	2.725	2.765];
fuzzyFIS.Outputs(1).MembershipFunctions(4).Name = 'TP7';
fuzzyFIS.Outputs(1).MembershipFunctions(4).Type = 'trapmf';
fuzzyFIS.Outputs(1).MembershipFunctions(4).Parameters = [2.605	2.645	2.685	2.725];
fuzzyFIS.Outputs(1).MembershipFunctions(5).Name = 'TP6';
fuzzyFIS.Outputs(1).MembershipFunctions(5).Type = 'trapmf';
fuzzyFIS.Outputs(1).MembershipFunctions(5).Parameters = [2.565	2.605	2.645	2.685];
fuzzyFIS.Outputs(1).MembershipFunctions(6).Name = 'TP5';
fuzzyFIS.Outputs(1).MembershipFunctions(6).Type = 'trapmf';
fuzzyFIS.Outputs(1).MembershipFunctions(6).Parameters = [2.525	2.565	2.605	2.645];
fuzzyFIS.Outputs(1).MembershipFunctions(7).Name = 'TP4';
fuzzyFIS.Outputs(1).MembershipFunctions(7).Type = 'trapmf';
fuzzyFIS.Outputs(1).MembershipFunctions(7).Parameters = [2.485	2.525	2.565	2.605];
fuzzyFIS.Outputs(1).MembershipFunctions(8).Name = 'TP3';
fuzzyFIS.Outputs(1).MembershipFunctions(8).Type = 'trapmf';
fuzzyFIS.Outputs(1).MembershipFunctions(8).Parameters = [2.445	2.485	2.525	2.565];
fuzzyFIS.Outputs(1).MembershipFunctions(9).Name = 'TP2';
fuzzyFIS.Outputs(1).MembershipFunctions(9).Type = 'trapmf';
fuzzyFIS.Outputs(1).MembershipFunctions(9).Parameters = [2.405	2.445	2.485	2.525];
fuzzyFIS.Outputs(1).MembershipFunctions(10).Name = 'TP1';
fuzzyFIS.Outputs(1).MembershipFunctions(10).Type = 'trapmf';
fuzzyFIS.Outputs(1).MembershipFunctions(10).Parameters = [2.365	2.405	2.445	2.485];
fuzzyFIS.Outputs(1).MembershipFunctions(11).Name = 'TZ5';
fuzzyFIS.Outputs(1).MembershipFunctions(11).Type = 'trapmf';
fuzzyFIS.Outputs(1).MembershipFunctions(11).Parameters = [2.325	2.365	2.405	2.445];
fuzzyFIS.Outputs(1).MembershipFunctions(12).Name = 'TZ4';
fuzzyFIS.Outputs(1).MembershipFunctions(12).Type = 'trapmf';
fuzzyFIS.Outputs(1).MembershipFunctions(12).Parameters = [2.285	2.325	2.365	2.405];
fuzzyFIS.Outputs(1).MembershipFunctions(13).Name = 'TZ3';
fuzzyFIS.Outputs(1).MembershipFunctions(13).Type = 'trapmf';
fuzzyFIS.Outputs(1).MembershipFunctions(13).Parameters = [2.245	2.285	2.325	2.365];
fuzzyFIS.Outputs(1).MembershipFunctions(14).Name = 'TZ2';
fuzzyFIS.Outputs(1).MembershipFunctions(14).Type = 'trapmf';
fuzzyFIS.Outputs(1).MembershipFunctions(14).Parameters = [2.205	2.245	2.285	2.325];
fuzzyFIS.Outputs(1).MembershipFunctions(15).Name = 'TZ1';
fuzzyFIS.Outputs(1).MembershipFunctions(15).Type = 'trapmf';
fuzzyFIS.Outputs(1).MembershipFunctions(15).Parameters = [2.165	2.205	2.245	2.285];
fuzzyFIS.Outputs(1).MembershipFunctions(16).Name = 'TN10';
fuzzyFIS.Outputs(1).MembershipFunctions(16).Type = 'trapmf';
fuzzyFIS.Outputs(1).MembershipFunctions(16).Parameters = [2.125	2.165	2.205	2.245];
fuzzyFIS.Outputs(1).MembershipFunctions(17).Name = 'TN9';
fuzzyFIS.Outputs(1).MembershipFunctions(17).Type = 'trapmf';
fuzzyFIS.Outputs(1).MembershipFunctions(17).Parameters = [2.085	2.125	2.165	2.205];
fuzzyFIS.Outputs(1).MembershipFunctions(18).Name = 'TN8';
fuzzyFIS.Outputs(1).MembershipFunctions(18).Type = 'trapmf';
fuzzyFIS.Outputs(1).MembershipFunctions(18).Parameters = [2.045	2.085	2.125	2.165];
fuzzyFIS.Outputs(1).MembershipFunctions(19).Name = 'TN7';
fuzzyFIS.Outputs(1).MembershipFunctions(19).Type = 'trapmf';
fuzzyFIS.Outputs(1).MembershipFunctions(19).Parameters = [2.005	2.045	2.085	2.125];
fuzzyFIS.Outputs(1).MembershipFunctions(20).Name = 'TN6';
fuzzyFIS.Outputs(1).MembershipFunctions(20).Type = 'trapmf';
fuzzyFIS.Outputs(1).MembershipFunctions(20).Parameters = [1.965	2.005	2.045	2.085];
fuzzyFIS.Outputs(1).MembershipFunctions(21).Name = 'TN5';
fuzzyFIS.Outputs(1).MembershipFunctions(21).Type = 'trapmf';
fuzzyFIS.Outputs(1).MembershipFunctions(21).Parameters = [1.925	1.965	2.005	2.045];
fuzzyFIS.Outputs(1).MembershipFunctions(22).Name = 'TN4';
fuzzyFIS.Outputs(1).MembershipFunctions(22).Type = 'trapmf';
fuzzyFIS.Outputs(1).MembershipFunctions(22).Parameters = [1.885	1.925	1.965	2.005];
fuzzyFIS.Outputs(1).MembershipFunctions(23).Name = 'TN3';
fuzzyFIS.Outputs(1).MembershipFunctions(23).Type = 'trapmf';
fuzzyFIS.Outputs(1).MembershipFunctions(23).Parameters = [1.845	1.885	1.925	1.965];
fuzzyFIS.Outputs(1).MembershipFunctions(24).Name = 'TN2';
fuzzyFIS.Outputs(1).MembershipFunctions(24).Type = 'trapmf';
fuzzyFIS.Outputs(1).MembershipFunctions(24).Parameters = [1.805	1.845	1.885	1.925];
fuzzyFIS.Outputs(1).MembershipFunctions(25).Name = 'TN1';
fuzzyFIS.Outputs(1).MembershipFunctions(25).Type = 'trapmf';
fuzzyFIS.Outputs(1).MembershipFunctions(25).Parameters = [1.765	1.805	1.845	1.885];

% GRÁFICO SAÍDAS

%plotmf(fuzzyFIS,'output',1,1000);

% REGRAS

rules = [...
	"If Error is EP and DerivateError is DEP then Tension is TP10"; ...
    "If Error is EP and DerivateError is DEMP then Tension is TP9"; ...
    "If Error is EP and DerivateError is DEZ then Tension is TP8"; ...
    "If Error is EP and DerivateError is DEMN then Tension is TP7"; ...
    "If Error is EP and DerivateError is DEN then Tension is TP6"; ...
    "If Error is EMP and DerivateError is DEP then Tension is TP5"; ...
    "If Error is EMP and DerivateError is DEMP then Tension is TP4"; ...
    "If Error is EMP and DerivateError is DEZ then Tension is TP3"; ...
	"If Error is EMP and DerivateError is DEMN then Tension is TP2"; ...
    "If Error is EMP and DerivateError is DEN then Tension is TP1"; ...
    "If Error is EZ and DerivateError is DEP then Tension is TZ5"; ...
    "If Error is EZ and DerivateError is DEMP then Tension is TZ4"; ...
    "If Error is EZ and DerivateError is DEZ then Tension is TZ3"; ...
    "If Error is EZ and DerivateError is DEMN then Tension is TZ2"; ...
    "If Error is EZ and DerivateError is DEN then Tension is TZ1"; ...
    "If Error is EMN and DerivateError is DEP then Tension is TN10"; ...
    "If Error is EMN and DerivateError is DEMP then Tension is TN9"; ...
	"If Error is EMN and DerivateError is DEZ then Tension is TN8"; ...
    "If Error is EMN and DerivateError is DEMN then Tension is TN7"; ...
    "If Error is EMN and DerivateError is DEN then Tension is TN6"; ...
    "If Error is EN and DerivateError is DEP then Tension is TN5"; ...
    "If Error is EN and DerivateError is DEMP then Tension is TN4"; ...
    "If Error is EN and DerivateError is DEZ then Tension is TN3"; ...
    "If Error is EN and DerivateError is DEMN then Tension is TN2"; ...
    "If Error is EN and DerivateError is DEN then Tension is TN1" ...
	];
fuzzyFIS = addRule(fuzzyFIS,rules);

% GRÁFICO DO CONTROLE
%options = gensurfOptions;
%options.NumGridPoints = 100;

%gensurf(fuzzyFIS,options);
%set(findall(gca, 'Type', 'Line'),'LineWidth',3);