N =12 

def move(log)
  return 1 if log.size == N + 1

  cnt = 0
  [[0,1],[0,-1],[1,0],[-1,0]].each {|d|
    next_pos = [log]