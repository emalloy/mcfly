class DeleteQueue
   def initialize
      @hashmap = {}
   end

   def destinations
      return @hashmap.reject { |ip, queue| queue.empty? }.keys
   end

   def push ip, delete
      @hashmap[ip] ||= []
      @hashmap[ip].push delete
      return
   end

   def peek ip
      return @hashmap[ip].first
   end

   def pop ip
      @hashmap[ip].shift
      return
   end
end
