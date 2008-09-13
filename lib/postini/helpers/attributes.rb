module Postini
  module Helpers
    # Provide our classes with ActiveRecord like attribute handling, mapping
    # plain text to native Ruby objects (and vice versa).
    module Attributes
      
      def self.included( base ) #:nodoc:
        base.extend( ClassMethods )
        base.send( :include, InstanceMethods )
      end
      
      module ClassMethods
        
        def self.extended( base )
          base.send( :class_inheritable_hash, :attributes )
          base.attributes = {}
        end
        
        # Specifies the list of attributes for the class, together with an
        # optional type to map them to.
        # 
        #   has_attributes :address
        #   has_attributes :active, :welcome, :type => :boolean
        # 
        def has_attributes( *args )
          opts = args.extract_options!
          opts[:type] ||= :string
          
          args.each do |attr|
            register_attribute( attr => opts[:type] )
          end
        end
        
        # Specify a single attribute together with its type
        def has_attribute( attr )
          raise "Invalid parameter, hash expected" unless attr.is_a?( Hash ) && 
            attr.keys.size == 1
          
          register_attribute( attr )
        end
        
        private
        
        # Register an attribute in our internal list
        def register_attribute( attr )
          self.attributes.merge!( attr.stringify_keys! )
          
          # :id needs to be handled specialy
          if attr.keys.first == "id"
            class_eval <<-EOF
              def id
                @attributes[ "id" ]
              end
              def id=( value )
                @attributes[ "id" ] = value
              end
            EOF
          end
        end
        
      end
      
      module InstanceMethods
        
        # Setup a new instance with all the attributes configured
        def initialize( attributes = {} )
          validate_attributes!( attributes )
          
          @attributes = attributes.stringify_keys
        end
        
        def method_missing( method_name, *args )
          method_name.to_s =~ /^([^=]+)(\=)?$/
          key = $1.to_s
          if self.class.attributes.has_key?( key )
            if $2
              @attributes[ key ] = *args
            else
              @attributes[ key ]
            end
          end
        end
        
        private
        
        def validate_attributes!( attrs = {} )
          attrs.assert_valid_keys( self.class.attributes.symbolize_keys.keys )
        end
        
      end
      
    end
  end
end
