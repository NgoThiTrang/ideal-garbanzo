 %audio recording
x=audiorecoder;
record(x);
stop(x);
y_rec=getaudiodata(x,'double');
sound(y_rec);
filename = 'orig_input.wav';
audiowrite(filename,y_rec,8000);
%mix melody
y_rec=y_rec';
y_rec=imre(y_rec,[1,882004]);
y_mix=y_rec+y_mel;
filename1 = 'melody.wav';
audiowrite(filename1,y_mix,85000);
%FFT
Y_mix=fft(y_mix)
plot(abs(Y_mix));
