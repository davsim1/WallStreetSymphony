[y1,Fs1] = audioread('Major1.m4a');
[y2,Fs2] = audioread('Major2.m4a');
[y3,Fs3] = audioread('Major3.m4a');
[y4,Fs4] = audioread('Major4.m4a');
[y5,Fs5] = audioread('MinorLow1.m4a');
[y6,Fs6] = audioread('MinorLow2.m4a');
[y7,Fs7] = audioread('MinorLow3.m4a');
[y8,Fs8] = audioread('MinorLow4.m4a');

toneMatrix = zeros(1,8);
toneMatrix(1,1) = Fs1;
toneMatrix(1,2) = Fs2;
toneMatrix(1,3) = Fs3;
toneMatrix(1,4) = Fs4;
toneMatrix(1,5) = Fs5;
toneMatrix(1,6) = Fs6;
toneMatrix(1,7) = Fs7;
toneMatrix(1,8) = Fs8;

soundMatrix = zeros(44156,2,8);
soundMatrix(:,:,1) = y1;
soundMatrix(:,:,2) = y2;
soundMatrix(:,:,3) = y3;
soundMatrix(:,:,4) = y4;
soundMatrix(:,:,5) = y5;
soundMatrix(:,:,6) = y6;
soundMatrix(:,:,7) = y7;
soundMatrix(:,:,8) = y8;

%{
sound(soundMatrix(:,:,1)*.125, Fs1);
pause(1)
sound(soundMatrix(:,:,1)*.25, Fs1);
pause(1)
sound(soundMatrix(:,:,1)*.5, Fs1);
pause(1)
sound(soundMatrix(:,:,1), Fs1);
pause(1)
sound(soundMatrix(:,:,1)*1.5, Fs1);
pause(1)
sound(soundMatrix(:,:,1)*2, Fs1);
pause(1)
sound(soundMatrix(:,:,1)*2.5, Fs1);
pause(1)
sound(soundMatrix(:,:,1)*3, Fs1);
pause(1)
sound(soundMatrix(:,:,1)*3.5, Fs1);
%}


for i = 1:10
    randInt = randi(4); %the major notes
    sound(soundMatrix(:,:,randInt),toneMatrix(:,randInt))
    pause(.5)
end

for i = 1:10
    randInt = randi([5,8]); %the minor notes
    sound(soundMatrix(:,:,randInt),toneMatrix(:,randInt))
    pause(.5)
end
