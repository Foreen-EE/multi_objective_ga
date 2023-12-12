function [x,fval,exitflag,output,population,score] = multi_objective_genetic_algorithm_solver(nvars,lb,ub,PopulationSize_Data,MaxGenerations_Data,FunctionTolerance_Data,ConstraintTolerance_Data)

options = optimoptions('gamultiobj');

options = optimoptions(options,'PopulationSize', PopulationSize_Data);

options = optimoptions(options,'MaxGenerations', MaxGenerations_Data);

options = optimoptions(options,'FunctionTolerance', FunctionTolerance_Data);

options = optimoptions(options,'ConstraintTolerance', ConstraintTolerance_Data);

options = optimoptions(options,'CrossoverFcn', {@crossoverintermediate [] });

options = optimoptions(options,'Display', 'off');

options = optimoptions(options,'PlotFcn', { @gaplotpareto });

[x,fval,exitflag,output,population,score] = gamultiobj(@multi_objective_function,nvars,[],[],[],[],lb,ub,[],options);