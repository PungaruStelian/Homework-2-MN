function x = oscillator(freq, fs, dur, A, D, S, R)
    % time vector
    t = [0:1 / fs:dur]';
    % Compute the number of samples for each envelope stage
    total_samples = size(t, 1);
    A_samples = floor(A * fs);
    D_samples = floor(D * fs);
    R_samples = floor(R * fs);
    S_samples = total_samples - A_samples - D_samples - R_samples;
    % Compute the envelopes for each stage
    % linspace (START, END, N) Return a row vector with
    % N linearly spaced elements between START and END
    A_env = linspace(0, 1, A_samples)';
    D_env = linspace(1, S, D_samples)';
    S_env = S * ones(S_samples, 1);
    R_env = linspace(S, 0, R_samples)';
    % Concatenate the envelopes to create the final envelope
    envelope = [A_env; D_env; S_env; R_env];
    % sine wave
    x = sin(2 * pi * freq * t);
    % Apply the envelope to the sine wave
    x = x(1:size(x, 1) - 1) .* envelope(1:size(x, 1) - 1);
endfunction
