function simple_morph_plotter(appdata)
figure;
subplot(3,1,1);
scatter(appdata.nodes_flattened(:,1),appdata.nodes_flattened(:,2),'ko','filled');
axis('equal');
xlabel('X (µm)')
ylabel('Y (µm)')
subplot(3,1,2);
hold('on');
scatter(appdata.nodes_flattened(:,1),appdata.nodes_flattened(:,3),'ko','filled')
line([0, max(appdata.nodes_flattened(:,1))],[appdata.lower_surface_z appdata.lower_surface_z],'Color','r','linestyle','--')
line([0, max(appdata.nodes_flattened(:,1))],[appdata.upper_surface_z appdata.upper_surface_z],'Color','r','linestyle','--')
xlabel('X (µm)')
ylabel('Depth (µm)')
ylim([0, appdata.upper_surface_z * 1.5])
hold('off');
subplot(3,1,3);
hold('on');
plot(appdata.strat_x,appdata.strat_y_norm,'k-','LineWidth',2);
line([0 0], [0 1], 'Color','r','linestyle','--');
line([1 1], [0 1], 'Color','r','linestyle','--');
xlim([-2 1.5]);
xlabel('IPL depth (normalized)')
ylabel('Dendrite density (normalized)')
hold('off');
