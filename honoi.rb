class Hanoi

  POLES = ['Start', 'Goal', 'Temp']

  DISCS = ('A'..'Z').to_a

    

      def initialize(n)

        @n = n

        @from = POLES[0]

        @to = POLES[1]

        @cnt = 0

       @result = []

     end

     

    def steps

       @result = []

       hanoi(@n, @from, @to)

     end

     

    def to_s

       @result = []

       answer = ""

       result = hanoi(@n, @from, @to)

       result.each_with_index do |(disc,from,to), i|

         answer << "#{i+1}: move #{DISCS[disc-1]} #{from} => #{to}\n"

       end

       answer

     end

     

    private

    def hanoi(n, from, to)

       tmp = (POLES - [from, to]).to_s

       return @result if n == 0

       hanoi(n-1, from, tmp)

       @cnt += 1

       @result << [n, from, to]

       hanoi(n-1, tmp, to)

     end

   end

 

   if __FILE__ == $0

     h = Hanoi.new(3)

     puts h

   end

   # >> 1: move A Start => Goal

   # >> 2: move B Start => Temp

   # >> 3: move A Goal => Temp

   # >> 4: move C Start => Goal

   # >> 5: move A Temp => Start

   # >> 6: move B Temp => Goal

 # >> 7: move A Start => Goal