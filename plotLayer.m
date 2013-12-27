%% another approach to plotting binary 
% adapted from http://stackoverflow.com/questions/3280705/how-to-convert-2d-binary-matrix-to-black-white-plot
function plotLayer(currentLayer, layerNumber)
  if nargin == 2 % see also http://stackoverflow.com/questions/8590478/how-to-check-whether-an-argument-is-supplied-in-function-call
    titleText =   sprintf('Layer %d', layerNumber); 
  else
    titleText =   'Layer';
  end
    [r,c] = size(currentLayer);                  %# Get the matrix size
    %figure(1);
    imagesc((1:c)+0.5,(1:r)+0.5,1-currentLayer);   %# Plot the image
    colormap(gray);                              %# Use a gray colormap
    axis equal                                   %# Make axes grid sizes equal
    set(gca,'XTick',10:10:(c+1),'YTick',10:10:(r+1),...  %# Change some axes properties
            'XLim',[1 c+1],'YLim',[1 r+1],...
            'GridLineStyle','-','XGrid','on','YGrid','on');
     title(titleText,... 
  'FontWeight','bold')
    drawnow
end
%try also spy and pcolor: http://www.mathworks.com/help/matlab/ref/pcolor.html