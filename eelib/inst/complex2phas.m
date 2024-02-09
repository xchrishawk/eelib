function p = complex2phas( c )
  %% COMPLEX2PHAS( C ) - Convert complex number to phasor.
  %%
  %% Parameters:
  %%   - c: The complex number to convert.
  %%
  %% Returns:
  %%   - p: The corresponding phasor, represented as a 2-element vector with the
  %%        first element representing the magnitude and the second element
  %%        representing the phase in radians.
  r = abs( c );
  ph = angle( c );
  p = [ r ph ];
endfunction
