function pd = complex2phasd( c )
  %% COMPLEX2PHASD( C ) - Convert complex number to phasor.
  %%
  %% Parameters:
  %%  - c: The complex number to convert.
  %%
  %% Returns:
  %%  - pd: The corresponding phasor, represented as a 2-element vector with the
  %%        first element representing the magnitude and the second element
  %%        representing the phase in radians.
  p = complex2phas( c );
  pd = [ p( 1 ) rad2deg( p( 2 ) ) ];
endfunction
