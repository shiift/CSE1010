function setupField(fieldSize)
  % Sets up the plot window for the simulation.
  % Use: setupField(fieldSize)
    title('Shots fired into a field with a round pond')
    axis([-fieldSize/2, fieldSize/2, -fieldSize/2, fieldSize/2])
    axis equal
    hold on
end