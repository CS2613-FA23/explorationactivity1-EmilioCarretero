
disp("List of commands: \n\tPress 'C' to change the colours.\n\tPress 'B' to change the colour vs black.\n\tPress 'P' to pick a new picture from your files.\n\tPress 'X' to exit the program.");
command = kbhit();

global red = 50;
global green = 50;
global blue = 50;
global contrast = 50;

while (strcmpi(command, "X") == 0)
  if (strcmpi(command, "C") == 1)
    red = input("How much red? (0 - 100): ") / 100.0;
    green = input("How much green? (0 - 100): ") / 100.0;
    blue = input("How much blue? (0 - 100): ") / 100.0;
  endif
  if (strcmpi(command, "B") == 1)
    contrast = input("How much colour vs black? (0 - 100): ") + 50;
  endif
  if (strcmpi(command, "P") == 1)
    I = imread(uigetfile());
    hold ("on");
    [row, col] = find (I < contrast);
    [x, y] = find (I > contrast);
    imshow (I);
    plot (col, row, "ro", "marker", "s", "markersize", 0.4, "markeredgecolor", "none", "markerfacecolor", [0,0,0], y, x, "ro", "marker", "s", "markersize", 0.4, "markeredgecolor", "none", "markerfacecolor", [red,green,blue]);
    hold ("off");
  endif
  disp("List of commands: \n\tPress 'C' to change the colours.\n\tPress 'B' to change the colour vs black.\n\tPress 'P' to pick a new picture from your files.\n\tPress 'X' to exit the program.");
  command = kbhit();
endwhile