function [y]= dtmf(tn,f1,f2)
    y=0.5*cos(2*pi*f1*tn)+0.5*cos(2*pi*f2*tn);
  %  soundsc(y,44100)
  %  pause(0.5)