function  musicMaker(data, purchasePrices)

%this reads the audio files and puts them into matrices 
%(y or x) and a frequency (Fy or Fx).
[y1,Fy1] = audioread('Major1.m4a');
[y2,Fy2] = audioread('Major2.m4a');
[y3,Fy3] = audioread('Major3.m4a');
[y4,Fy4] = audioread('Major4.m4a');
[x1,Fx1] = audioread('MinorLow1.m4a');
[x2,Fx2] = audioread('MinorLow2.m4a');
[x3,Fx3] = audioread('MinorLow3.m4a');
[x4,Fx4] = audioread('MinorLow4.m4a');

%puts the matrices (y or x) into a matrix of matrices, the first 4 are the
%major notes and the last four are the minor notes
%NOTE ON MAC THE NUMBER IS 44156 ON WINDOWS ITS 47104
tone = zeros(47104,2,8);
tone(:,:,1) = y1;
tone(:,:,2) = y2;
tone(:,:,3) = y3;
tone(:,:,4) = y4;
tone(:,:,5) = x1;
tone(:,:,6) = x2;
tone(:,:,7) = x3;
tone(:,:,8) = x4;


% puts the frequencies into a matrix, the first four column correspond to
% the major tones and the last four columns correspond to the minor tones.

frequency = zeros(1,8);
frequency(1,1) = Fy1;
frequency(1,2) = Fy2;
frequency(1,3) = Fy3;
frequency(1,4) = Fy4;
frequency(1,5) = Fx1;
frequency(1,6) = Fx2;
frequency(1,7) = Fx3;
frequency(1,8) = Fx4;


%this is totals needed to calculate percents later on
minPrice = min(data(:,2,1));
maxPrice = max(data(:,2,1));
priceTotalDifference = maxPrice - minPrice;

%the total difference in volume. The smallest sound is 1/8th the original
%volume and the loundest sound is 3.5 times the original volume.
ampTotal = 1.5-.5;

for j = 1:size(data,1)-1
    p = data(j,2,1);
    priceDifference = p - purchasePrices(1);
    priceAbsolute = abs(priceDifference); 
    
    % what percentage the price difference is of the total corresponds to
    % the percentage of the total volume for the sound
    ampPercent = priceAbsolute/ priceTotalDifference; 
    
    %finds out how much we have to add to the smallest sound to get the
    %volume multiplier. 
    ampAdd = ampPercent*ampTotal;
    ampMultiplier = ampAdd + .5;
    %ampMultiplier = 1;
    if priceDifference >= 0
        randInt = randi(4); %the major notes
        %SoundVolume(ampAdd);
        sound(tone(:,:,randInt)*ampMultiplier,frequency(:,randInt))
        
        %pause at .5 creates 50% overlap, 1 no overlap, over 1 a gap
        pause(.7)
    else
        randInt = randi([5,8]); %the minor notes
        %SoundVolume(ampAdd);
        sound(tone(:,:,randInt)*ampMultiplier,frequency(:,randInt))
        pause(.7)
    end
end
 %flourish at the end!
    p = data(size(data,1),2,1);
    priceDifference = p - purchasePrices(1);
    priceAbsolute = abs(priceDifference); 
    ampPercent = priceAbsolute/ priceTotalDifference;
    ampAdd = ampPercent*ampTotal;
    ampMultiplier = ampAdd + .5;
    if priceDifference >= 0
        %ascending major
        sound(tone(:,:,1)*ampMultiplier,frequency(:,1))
        pause(.1)
        sound(tone(:,:,2)*ampMultiplier,frequency(:,2))
        pause(.1)
        sound(tone(:,:,3)*ampMultiplier,frequency(:,3))
        pause(.1)
        sound(tone(:,:,4)*ampMultiplier,frequency(:,4))
    else
        %descending minor
        sound(tone(:,:,8)*ampMultiplier,frequency(:,8))
        pause(.1)
        sound(tone(:,:,7)*ampMultiplier,frequency(:,7))
        pause(.1)
        sound(tone(:,:,6)*ampMultiplier,frequency(:,6))
        pause(.1)
        sound(tone(:,:,5)*ampMultiplier,frequency(:,5))
    end

