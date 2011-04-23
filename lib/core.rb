module Core
  class GitApplication
    class << self
      def root
        %x[pwd].chomp
      end
    end
  end
end