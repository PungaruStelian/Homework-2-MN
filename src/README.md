# Second Assignment by 313CA Pungaru Stelian Andrei

In elaborating the solution to this theme, I equally used the wording of the
theme as well as the resources available on the Internet for a better
understanding of the concepts and I set out to solve the homework effectively
and as correctly as possible. The comments offered are present with the purpose
of giving the strict necessary of information to the reader.

## Numerical Music

This module contains functions for audio processing and synthesis.

- `stereo_to_mono`: This function converts a stereo audio signal to mono by
averaging the two channels. This is useful for simplifying audio processing
tasks.
- `spectrogram`: This function generates a spectrogram of an audio signal.
A spectrogram is a visual representation of the spectrum of frequencies in a
sound or other signal as they vary with time.
- `oscillator`: This function generates a basic oscillator for sound synthesis.
An oscillator is a circuit that generates a signal at a certain frequency.
- `low_pass`: This function applies a low-pass filter to an audio signal.
A low-pass filter allows signals with a frequency lower than a certain cutoff
frequency to pass through and attenuates frequencies higher than the cutoff
frequency.
- `apply_reverb`: This function applies a reverb effect to an audio signal.
Reverb is an effect that simulates the reflections of sound in a room.

## Robotzii

This module contains functions for interpolating and plotting robot
trajectories.

- `parse_data`: This function parses input data from a file. The data can be in
various formats and the function is designed to handle these variations.
- `spline_c2`: This function calculates the spline polynomial coefficients.
These coefficients are used to create a spline that can interpolate the data
points.
- `P_spline`: This function evaluates the spline polynomial at given points.
This is used to create the actual spline curve.
- `vandermorde`: This function calculates the Vandermorde matrix.
The Vandermorde matrix is used in polynomial interpolation.
- `P_vandermorde`: This function evaluates the Vandermorde polynomial at
given points. This is used to create the polynomial curve.

## Recommendations

This module contains functions for generating recommendations based on
cosine similarity.

- `read_mat`: This function reads a .mat file and returns the contained matrix.
This is used to load the data for the recommendation system.
- `preprocess`: This function preprocesses the data for the recommendation
system. This can include normalization, handling missing values, etc.
- `cosine_similarity`: This function calculates the cosine similarity between
two vectors. Cosine similarity is a measure of similarity between two non-zero
vectors of an inner product space.
- `recommendations`: This function generates recommendations based on cosine
similarity. It uses the cosine similarity to find the most similar items to a
given item.