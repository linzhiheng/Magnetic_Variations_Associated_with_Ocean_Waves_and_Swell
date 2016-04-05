%Swell Wave Motion

amplitude = 1;
angularFrewuency = 2;
waveNumber = 1;
vctorTerm = 1+1i;

waveFunction = @(x,z,t) -1*amplitude*vctorTerm*exp(i*angularFrewuency*t...
                - i*waveNumber*x - waveNumber*z);
            
waveFunction(1,1,1)