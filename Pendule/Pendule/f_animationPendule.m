function f_animationPendule(t, x, dt)
% Paramètres géométriques du pendule
l_1 = 2; l_2 = 2;

% Création d'une figure
hFig = figure('visible', 'on'); 
hold on; grid on; box on;
axis xy equal, box on, hold on
axis(1.1*[-1 1 -1 1]*(l_1 + l_2))

% Création d'une mémoire pour la trajectoire
tmp_data = 100;
tmp_data = repmat(l_1*[sin(x(1,1)), -cos(x(1,1))], [tmp_data, 2]) + ...
    repmat([0 0 l_2*[sin(x(3,1)), -cos(x(3,1))]], [tmp_data, 1]);

% Début de la loop
i_count = 1;
while ishandle(hFig) > 0 && i_count < size(x, 1)
    % Mise à jour du compteur
    i_count = i_count + 1;
    
    % Mise à jour du graphique
    tmp_data = f_drawPendulum(t(i_count), x(i_count, :), ...
        l_1, l_2, 0.2, 0.2, tmp_data) ;
    
    % Petite pause pour afficher le tout
    pause(dt);
end

% Fermeture de la figure
if (ishandle(hFig) > 0), close(hFig); end

end

function tmp_data = f_drawPendulum(t, x, l_1, l_2, r_1, r_2, tmp_data)
cla

% Affichage de la trajectoire
alpha = linspace(0,1,size(tmp_data,1)+1)';
patch([tmp_data(:,1);NaN],[tmp_data(:,2);NaN], 0, 'EdgeColor', 'g', 'FaceColor',...
    'none','FaceVertexAlphaData', alpha, 'EdgeAlpha', 'interp', 'LineWidth',2);

patch([tmp_data(:,3);NaN],[tmp_data(:,4);NaN], 0,'EdgeColor', 'r', 'FaceColor',...
    'none', 'FaceVertexAlphaData', alpha,'EdgeAlpha', 'interp', 'LineWidth',2);

% Affichage des tiges
theta1 = x(1);
theta2 = x(3);

xm1 = l_1*sin(theta1);
ym1 = -l_1*cos(theta1);

xm2 = xm1 + l_2*sin(theta2);
ym2 = ym1 - l_2*cos(theta2);

patch([0, xm1, xm2, NaN],[0, ym1, ym2, NaN],0,'EdgeColor', 'k',...
    'FaceColor', 'none', 'LineWidth',2)

% Affichage des masses
p = linspace(0,2*pi,17);
sint = sin(p); cost = cos(p);
patch(xm1+r_1*cost,ym1+r_1*sint,0,'EdgeColor', 'k', 'FaceColor','b')
patch(xm2+r_2*cost,ym2+r_2*sint,0,'EdgeColor', 'k', 'FaceColor','b')
title(sprintf('Temps de simulation = %0.1f', t(end)))
drawnow
tmp_data = [tmp_data(2:end,:);xm1,ym1,xm2,ym2];
end