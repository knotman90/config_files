CTRL + B = MOD

MOD + c = create a new window
MOD + z = toogle  full screen on current pane
MOD + % = split the current pane HORIZONTALLY
MOD + " = split the current pane VERTICALLY
MOD + <number> = switch to the window number <number>
MOD + d = detach the current session (tmux quits)
tmux ls = list all the session currently running 
  prints something like 
     0: 2 windows (created Thu Jan 14 09:53:35 2016) [173x49] 
     1: 3 windows (created Thu Jan 14 08:52:25 2016) [174x455] 
tmux attach -t <number> 
  restore the session number <number>
tmux kill-session -t <number>
  kIlls a session (cannot be attached anymore)
