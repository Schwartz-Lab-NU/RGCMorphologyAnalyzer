function simple_morph_plotter(appdata)
figure;
subplot(2,1,1);
scatter(appdata.nodes_flattened(:,1),appdata.nodes_flattened(:,2),'ko','filled');
axis('equal');
xlabel('X (µm)')
ylabel('Y (µm)')
subplot(2,1,2);
hold('on');
scatter(appdata.nodes_flattened(:,1),appdata.nodes_flattened(:,3),'ko','filled')
line([0, max(appdata.nodes_flattened(:,1))],[appdata.lower_surface_z appdata.lower_surface_z],'Color','r','linestyle','--')
line([0, max(appdata.nodes_flattened(:,1))],[appdata.upper_surface_z appdata.upper_surface_z],'Color','r','linestyle','--')
xlabel('X (µm)')
ylabel('Depth (µm)')
ylim([0, appdata.upper_surface_z * 1.5])
hold('off');
