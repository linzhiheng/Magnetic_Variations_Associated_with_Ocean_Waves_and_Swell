earthField = 1;
dip_EarthField = 5;
inclination_EarthField = 20;

amplitude = 1;
angularFrewuency = 2;
waveNumber = 1;

conductivity = 1;

S = sind(dip_EarthField);
C = cosd(dip_EarthField)*cosd(inclination_EarthField);
A = amplitude*waveNumber*earthField*(S+(i*C));

Gamma = 4*pi*conductivity*angularFrewuency;
Beta = Gamma/(waveNumber*waveNumber);
B = sqrt(1+(i*Beta));

%Vertical Component of Magnetic Field
hZFunction = @(z) i*A*( (2/(1+B)) * exp(-waveNumber*z*B)...
                          - exp(-waveNumber*z) );

%Horizontal Component of Magnetic Field
hXFunction = @(z) -1*A*( ((2*B)/(1+B)) * exp(-waveNumber*z*B)...
                          - exp(-waveNumber*z) );

