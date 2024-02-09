function w = freq2ang( f )
  %% FREQ2ANG( F ) - Convert frequency to angular frequency.
  %%
  %% Parameters:
  %%   - f: The frequency to convert, in Hz.
  %%
  %% Returns:
  %%   - w: The corresponding angular frequency, in radians per second.
  w = 2 * pi * f;
endfunction
