%% housekeeping
clear;
clc;
close all
addpath(genpath('../helperfns'))
load('deliverable1_analysis.mat')

%% Create tables and graphs after analysis
%% Get FEVD tables first
prctile(squeeze(corr_array(3,1,2,1,:)),16)
prctile(squeeze(corr_array(3,1,2,1,:)),84)

%% plotting
figure
subplot(2,1,1)
plot(0:horizon,prctile(squeeze(OIRF_array(2,1,:,1,1,:)),16,2),...
	0:horizon,prctile(squeeze(OIRF_array(2,1,:,1,1,:)),50,2),...
	0:horizon,prctile(squeeze(OIRF_array(2,1,:,1,1,:)),84,2)...
	)
subplot(2,1,2)
plot(0:horizon,prctile(squeeze(OIRF_array(2,1,:,2,1,:)),16,2),...
	0:horizon,prctile(squeeze(OIRF_array(2,1,:,2,1,:)),50,2),...
	0:horizon,prctile(squeeze(OIRF_array(2,1,:,2,1,:)),84,2)...
	)

figure
subplot(2,1,1)
plot(0:horizon,prctile(squeeze(OIRF_array(3,1,:,1,1,:)),16,2),...
	0:horizon,prctile(squeeze(OIRF_array(3,1,:,1,1,:)),50,2),...
	0:horizon,prctile(squeeze(OIRF_array(3,1,:,1,1,:)),84,2)...
	)
subplot(2,1,2)
plot(0:horizon,prctile(squeeze(OIRF_array(3,1,:,2,1,:)),16,2),...
	0:horizon,prctile(squeeze(OIRF_array(3,1,:,2,1,:)),50,2),...
	0:horizon,prctile(squeeze(OIRF_array(3,1,:,2,1,:)),84,2)...
	)

figure
subplot(2,1,1)
plot(0:horizon-1,prctile(squeeze(IRF1(1,1,:,:)),16,2),...
	0:horizon-1,prctile(squeeze(IRF1(1,1,:,:)),50,2),...
	0:horizon-1,prctile(squeeze(IRF1(1,1,:,:)),84,2)...
	)
subplot(2,1,2)
plot(0:horizon-1,prctile(squeeze(IRF2(1,1,:,:)),16,2),...
	0:horizon-1,prctile(squeeze(IRF2(1,1,:,:)),50,2),...
	0:horizon-1,prctile(squeeze(IRF2(1,1,:,:)),84,2)...
	)

figure
subplot(2,1,1)
plot(0:horizon-1,prctile(squeeze(IRF1(1,2,:,:)),16,2),...
	0:horizon-1,prctile(squeeze(IRF1(1,2,:,:)),50,2),...
	0:horizon-1,prctile(squeeze(IRF1(1,2,:,:)),84,2)...
	)
subplot(2,1,2)
plot(0:horizon-1,prctile(squeeze(IRF2(1,2,:,:)),16,2),...
	0:horizon-1,prctile(squeeze(IRF2(1,2,:,:)),50,2),...
	0:horizon-1,prctile(squeeze(IRF2(1,2,:,:)),84,2)...
	)

figure
subplot(2,1,1)
plot(0:horizon-1,prctile(squeeze(IRF1(3,2,:,:)),16,2),...
	0:horizon-1,prctile(squeeze(IRF1(3,2,:,:)),50,2),...
	0:horizon-1,prctile(squeeze(IRF1(3,2,:,:)),84,2)...
	)
subplot(2,1,2)
plot(0:horizon-1,prctile(squeeze(IRF2(3,2,:,:)),16,2),...
	0:horizon-1,prctile(squeeze(IRF2(3,2,:,:)),50,2),...
	0:horizon-1,prctile(squeeze(IRF2(3,2,:,:)),84,2)...
	)