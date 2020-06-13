require 'readline'

def usage
  puts "Usage: ruby #{File.basename($0)} DIFFICULTY[=1]"
end

def main
  return usage() if ['-h', '--help'].any?{|h| ARGV.include?(h) }
  srand()
  difficulty = Integer(ARGV[0] || 1)
  difficulty >= 1 or raise "invalid difficulty: #{difficulty} (must be >= 1)"
  puts "[difficulty #{difficulty}]"
  correct = rand(10 * difficulty + 1)
  error_handling(true) do
    times = 0
    while line = Readline.readline("guess? > ", true)
      return give_up() if line.strip == 'g'
      try = Integer(line)
      times += 1
      comp = case
        when correct == try then return result(try, times)
        when correct >  try then 'smaller'
        when correct <  try then 'bigger'
      end
      puts "#{try} is #{comp}. (put `g' to give up)"
    end
  end
end

def give_up
  puts "give up!"
end

def result(answer, times)
  puts "#{answer} is correct!"
  puts "you tried to guess #{times} times."
end

def error_handling(continue = false)
  yield
rescue => ex
  me = continue ? '' : "#{File.basename($0, '.rb')}: "
  puts "#{me}#{ex.message}"
  continue ? retry : exit(1)
end

error_handling{ main }