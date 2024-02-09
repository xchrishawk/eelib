function c = phasd2complex( pd )
  %% PHASD2COMPLEX( PD ) - Convert phasor to complex number.
  %%
  %% Parameters:
  %%   - pd: The phasor to convert, represented as a 2-element vector with the
  %%         first element representing the magnitude and the second element
  %%         representing the phase in radians.
  %%
  %% Returns:
  %%   - c: The corresponding complex number.
  c = phas2complex( [ pd( 1 ) deg2rad( pd( 2 ) ) ] );
endfunction
