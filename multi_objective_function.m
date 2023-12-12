function Output = multi_objective_function(Input)

x1 = Input(1); % variable 1

x2 = Input(2); % variable 2

x3 = Input(3); % variable 3


F1 = 1 - exp(-((x1 - 1/sqrt(3))^2 + (x2 - 1/sqrt(3))^2 + (x3 - 1/sqrt(3))^2)); % objective 1

F2 = 1 - exp(-((x1 + 1/sqrt(3))^2 + (x2 + 1/sqrt(3))^2 + (x3 + 1/sqrt(3))^2)); % objective 2

Output = [F1 F2];