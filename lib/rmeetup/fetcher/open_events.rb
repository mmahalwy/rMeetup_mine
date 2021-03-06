module RMeetup
  module Fetcher
    class Open_Events < Base
      def initialize
        @type = :open_events
      end
      
      # Turn the result hash into a Event Class
      def format_result(result)
        RMeetup::Type::Open_Event.new(result)
      end
    end
  end
end