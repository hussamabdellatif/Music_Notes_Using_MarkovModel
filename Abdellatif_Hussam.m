% Demo 2: Markov Chain Music Test
parameters % Load parameters from parameters.m
% Initialize 240 seconds of song samples
song = zeros(1,240*param.Fs);
song2 = zeros(1,240*param.Fs);
song3 = zeros(1,240*param.Fs);
% Set the state set to the notes of the Phrygian dominant scale
stateSet = param.test3;
stateSet2 = param.test2;
stateSet3 = param.jazz;
% Initialize the transition probability matrix
% (8x8 matrix since there are 8 notes in the Phrygian dominant scale)
% NOTE: The ellipsis (...) allow you to continue your code on the next line.
stateTPF = [0.25 0.5 0 0.25 0 0 0 ;...
    0.25 0.5 0.25 0 0 0 0 ;... 
    0 0.25 0.5 0.25 0 0 0 ;...
    0 0 0.25 0.5 0.25 0 0 ;...
    0 0 0 0.25 0.5 0.25 0 ;... 
    0 0 0 0 0.25 0.5 0.25 ;... 
    0 0 0.25 0 0 0.25 0.5 ;...
    ];
stateTPF2 = [0.25 0.5 0 0 0 0 0 0.25;...
    0.25 0.5 0.25 0 0 0 0 0;... 
    0 0.25 0.5 0.25 0 0 0 0;... 
    0 0 0.25 0.5 0.25 0 0 0;...
    0 0 0 0.25 0.5 0.25 0 0;... 
    0 0 0 0 0.25 0.5 0.25 0;... 
    0 0 0 0 0 0.25 0.5 0.25;...
0.25 0 0 0 0 0 0.5 0.25];



stateIdx = 1; % Start in 1st state
start = 1; % Index of first audio sample 
next = 0;
for i = 1:240 % Generate 30 notes
note = stateSet(stateIdx); 
if i<120
    note = 89;
    duration = param.durationSet(3); % All 1/4 notes
intensity = param.intensitySet(95); % All maximum intensity
attenuation = param.attenuationSet(25); % All highattenuation
[song,next] = AddNote(song,start,note,duration,intensity,attenuation,param);
start = next; % Index of next audio sample
% Markov state transition
stateIdx = rando(stateTPF2(stateIdx,:)); % Get random nextstate
end

if i>= 120 && i<140
    note = stateSet(stateIdx);
 % Get note corresponding to current state index
duration = param.durationSet(3); % All 1/4 notes
intensity = param.intensitySet(85); % All maximum intensity
attenuation = param.attenuationSet(25); % All highattenuation
[song,next] = AddNote(song,start,note,duration,intensity,attenuation,param);
start = next; % Index of next audio sample
% Markov state transition
stateIdx = rando(stateTPF2(stateIdx,:)); % Get random nextstate
end 

if i>= 140 && i<200
    note = stateSet(stateIdx);
 % Get note corresponding to current state index
duration = param.durationSet(4); % All 1/4 notes
intensity = param.intensitySet(90); % All maximum intensity
attenuation = param.attenuationSet(25); % All highattenuation
[song,next] = AddNote(song,start,note,duration,intensity,attenuation,param);
start = next; % Index of next audio sample
% Markov state transition
stateIdx = rando(stateTPF2(stateIdx,:)); % Get random nextstate
end 
if i>= 200 && i<220
    note = stateSet(stateIdx);
 % Get note corresponding to current state index
duration = param.durationSet(3); % All 1/4 notes
intensity = param.intensitySet(80); % All maximum intensity
attenuation = param.attenuationSet(25); % All highattenuation
[song,next] = AddNote(song,start,note,duration,intensity,attenuation,param);
start = next; % Index of next audio sample
% Markov state transition
stateIdx = rando(stateTPF2(stateIdx,:)); % Get random nextstate
end 
if i>= 220 && i<250
    note = stateSet(stateIdx);
 % Get note corresponding to current state index
duration = param.durationSet(3); % All 1/4 notes
intensity = param.intensitySet(55); % All maximum intensity
attenuation = param.attenuationSet(25); % All highattenuation
[song,next] = AddNote(song,start,note,duration,intensity,attenuation,param);
start = next; % Index of next audio sample
% Markov state transition
stateIdx = rando(stateTPF2(stateIdx,:)); % Get random nextstate
end 

end

stateIdx = 1;
start = 1;
next=0;
for j=1:240
note2 = stateSet2(stateIdx); 
if j<10
duration = param.durationSet(1); % All 1/4 notes
intensity = param.intensitySet(25); % All maximum intensity
attenuation = param.attenuationSet(24); % All highattenuation
[song2,next] = AddNote(song2,start,note2,duration,intensity,attenuation,param);
start = next; % Index of next audio sample
% Markov state transition
stateIdx = rando(stateTPF(stateIdx,:)); % Get random nextstate
end


if j>=10 && j<30
duration = param.durationSet(2); % All 1/4 notes
intensity = param.intensitySet(35); % All maximum intensity
attenuation = param.attenuationSet(24); % All highattenuation
[song2,next] = AddNote(song2,start,note2,duration,intensity,attenuation,param);
start = next; % Index of next audio sample
% Markov state transition
stateIdx = rando(stateTPF(stateIdx,:)); % Get random nextstate
end

if j>=30 && j<50
duration = param.durationSet(3); % All 1/4 notes
intensity = param.intensitySet(75); % All maximum intensity
attenuation = param.attenuationSet(27); % All highattenuation
[song2,next] = AddNote(song2,start,note2,duration,intensity,attenuation,param);
start = next; % Index of next audio sample
% Markov state transition
stateIdx = rando(stateTPF(stateIdx,:)); % Get random nextstate
end

if j>=50 && j<120
duration = param.durationSet(4); % All 1/4 notes
intensity = param.intensitySet(95); % All maximum intensity
attenuation = param.attenuationSet(27); % All highattenuation
[song2,next] = AddNote(song2,start,note2,duration,intensity,attenuation,param);
start = next; % Index of next audio sample
% Markov state transition
stateIdx = rando(stateTPF(stateIdx,:)); % Get random nextstate
end
if j>=120 && j<140
duration = param.durationSet(3); % All 1/4 notes
intensity = param.intensitySet(65); % All maximum intensity
attenuation = param.attenuationSet(27); % All highattenuation
[song2,next] = AddNote(song2,start,note2,duration,intensity,attenuation,param);
start = next; % Index of next audio sample
% Markov state transition
stateIdx = rando(stateTPF(stateIdx,:)); % Get random nextstate
end
if j>=140 && j<160
    note2 = 89;
duration = param.durationSet(3); % All 1/4 notes
intensity = param.intensitySet(65); % All maximum intensity
attenuation = param.attenuationSet(27); % All highattenuation
[song2,next] = AddNote(song2,start,note2,duration,intensity,attenuation,param);
start = next; % Index of next audio sample
% Markov state transition
stateIdx = rando(stateTPF(stateIdx,:)); % Get random nextstate
end
if j>=160 && j<230
duration = param.durationSet(3); % All 1/4 notes
intensity = param.intensitySet(55); % All maximum intensity
attenuation = param.attenuationSet(27); % All highattenuation
[song2,next] = AddNote(song2,start,note2,duration,intensity,attenuation,param);
start = next; % Index of next audio sample
% Markov state transition
stateIdx = rando(stateTPF(stateIdx,:)); % Get random nextstate
end
if j>=230 && j<240
duration = param.durationSet(1); % All 1/4 notes
intensity = param.intensitySet(25); % All maximum intensity
attenuation = param.attenuationSet(27); % All highattenuation
[song2,next] = AddNote(song2,start,note2,duration,intensity,attenuation,param);
start = next; % Index of next audio sample
% Markov state transition
stateIdx = rando(stateTPF(stateIdx,:)); % Get random nextstate
end




end

mySong = song2(1:next)+song(1:next); % Remove empty samples from song % Remove empty samples from song
PlayTune(mySong,param); % Play your tune!


% Save your tune to myFirstMarkovMusic.wav


SaveTune(mySong,param,  'Abdellatif_Hussam');