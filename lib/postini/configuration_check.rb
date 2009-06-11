module Postini

  # Mixin with a method decorator that prevents calls from being made
  # if the library is not properly configured.
  module ConfigurationCheck

    def self.included( base )
      base.extend( ClassMethods )
    end

    module ClassMethods

      def requires_configured( method_name )
        class_eval <<-EOF, __FILE__, __LINE__
          alias #{method_name}_original #{method_name}
          def #{method_name}( *args )
            raise Postini::NotConfigured, "Cannot call #{method_name} if not configured" unless Postini.configured?

            #{method_name}_original( *args )
          end
        EOF
      end
    end
  end
end
