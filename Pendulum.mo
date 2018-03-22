model Pendulum //class model name
  parameter Real M=1; // Mass of the pendulum
  parameter Real L=1; // Length of the pendulum
  parameter Real g=9.81; // acceleration of graviy
  
  Real u; // The torsion
  Real y; // Output angular displacement
  Real x1(start=1); // Pendulum angular displacement
  Real x2(start=0); // Pendulum angular velocity
  
equation

  der(x1) = x2;
  der(x2) = (u-M*g*L*sin(x1))/(M*L^2);
  y = x1;
  u = 0;
  
end Pendulum; //end of class model
