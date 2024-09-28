function [S f t] = spectrogram(signal, fs, win_size)
    n = size(signal, 1);
    % number of complete windows
    nr_win = floor(n / win_size);
    S = zeros(win_size, nr_win);
    % vector of frequencies for each element in the FFT
    f = [0:(fs / (2 * win_size)):(fs / 2 - fs / (2 * win_size))]';
    % vector representing the time at the middle of each window.
    t = [0:win_size / fs:(nr_win - 1) * win_size / fs]';
    % the for loop explanations are on the website: mn pages
    for i = 1:nr_win
        window = signal((i - 1) * win_size + 1:i * win_size);
        window = window .* hanning(win_size);
        fft_res = fft(window, 2 * win_size);
        S(:, i) = abs(fft_res(1:win_size));
    end
endfunction
