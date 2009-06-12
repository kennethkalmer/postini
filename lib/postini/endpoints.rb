module Postini

  # Our endpoints for use by handsoap
  class Endpoints

    class << self

      def resolver
        {
          :uri => "https://api-meta.postini.com/api2/endpointresolver",
          :version => 1
        }
      end

      def automated_batch
        raise NotConfigured, "automatedbatch service endpoint requires system number" if Postini.system_number.nil?

        {
          :uri => "https://api-s#{Postini.system_number}.postini.com/api2/automatedbatch",
          :version => 1
        }
      end
    end

  end
end
