function c = phas2complex( p )
  %% PHAS2COMPLEX( P ) - Convert phasor to complex number.
  %%
  %% Parameters:
  %%   - p: The phasor to convert, represented as a 2-element vector with the
  %%        first element representing the magnitude and the second element
  %%        representing the phase in radians.
  %%
  %% Returns:
  %%   - c: The corresponding complex number.
  r = p( 1 );
  ph = p( 2 );
  x = r * cos( ph );
  y = r * sin( ph );
  c = x + (i * y);
endfunction
