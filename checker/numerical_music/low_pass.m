function x_filtered = low_pass(x, fs, fc)
    x = fft(x);
    % vector of frequencies for each element of the FFT
    frec = (0:length(x) - 1) * fs / length(x);
    aux = frec <= fc;
    % algorithm to filter the signal
    x_filtered = x .* aux';
    x_filtered = ifft(x_filtered);
    x_filtered = x_filtered / max(abs(x_filtered));
endfunction
