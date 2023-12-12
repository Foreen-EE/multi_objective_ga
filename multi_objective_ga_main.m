clc

clear

close all

nvars = 3;

lb = [-4 -4 -4];

ub = [4 4 4];

PopulationSize_Data = 100; 

MaxGenerations_Data = 100; 

FunctionTolerance_Data = 0; 

ConstraintTolerance_Data = 0; 

[x,fval,exitflag,output,population,score] = multi_objective_genetic_algorithm_solver(nvars,lb,ub,PopulationSize_Data,MaxGenerations_Data,FunctionTolerance_Data,ConstraintTolerance_Data);

optimal_solution = x