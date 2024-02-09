function f = ang2freq( w )
  %% ANG2FREQ( W ) - Convert angular frequency to frequency.
  %%
  %% Parameters:
  %%   - w: The angular frequency to convert, in radians per second.
  %%
  %% Returns:
  %%   - f: The corresponding frequency, in Hz.
  f = w / ( 2 * pi );
endfunction
