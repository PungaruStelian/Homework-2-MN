function mono = stereo_to_mono(stereo)
    % formula from the statement
    mono = mean(stereo, 2);
    mono = mono / max(abs(mono));
end
