group18to35 = []; % paste in all membership durations 
group36to55 = []; % paste in all membership durations 
group56above = []; % paste in all membership durations 

load('group18to35.mat'); 
load('group36to55.mat'); 
load('group56above.mat'); 

%% Figure young adults 
f18 = figure; set(f18, 'Color', 'w');
set(gca, 'Color', 'w', 'FontSize', 24); hold on
histogram(group18to35,'BinEdges',0:50:2500, 'FaceColor','r'); % cuts off bins at 2500 for display purposes
xlabel('Membership duration (days)')
ylabel('Number of members')
title('Young adults (18-35, N=206)'); 
pth = fileparts(which(mfilename));
hgexport(f18, fullfile(pth, 'figures', 'agexcontact_18to35.eps'));
saveas(f18, fullfile(pth, 'figures', 'agexcontact_18to35.png'));

%% Figure adults 
f36 = figure; set(f36, 'Color', 'w');
set(gca, 'Color', 'w', 'FontSize', 24); hold on
histogram(group36to55,'BinEdges',0:50:2500, 'FaceColor','b'); % cuts off bins at 2500 for display purposes
xlabel('Membership duration (days)')
ylabel('Number of members')
title('Adults (36-55, N=250)'); 
pth = fileparts(which(mfilename));
hgexport(f36, fullfile(pth, 'figures', 'agexcontact_36to55.eps'));
saveas(f36, fullfile(pth, 'figures', 'agexcontact_36to55.png'));

%% Figure seniors 
f36 = figure; set(f36, 'Color', 'w');
set(gca, 'Color', 'w', 'FontSize', 24); hold on
histogram(group36to55,'BinEdges',0:50:2500, 'FaceColor',[0.5 0.5 0.5]); % cuts off bins at 2500 for display purposes 
xlabel('Membership duration (days)')
ylabel('Number of members')
title('Seniors (56+, N=199)'); 
pth = fileparts(which(mfilename));
hgexport(f36, fullfile(pth, 'figures', 'agexcontact_56above.eps'));
saveas(f36, fullfile(pth, 'figures', 'agexcontact_56above.png'));
