module Postini
  module Users
    
    # Managing aliases of the users
    module Aliases
      # Return the list of aliases for the mailbox
      def aliases
        if @aliases.nil?
          remote = self.class.automated_batch_port( self.address )
          query = Postini::API::AutomatedBatch::ListusersqueryParams.new
          query.aliases = 1
          query.childorgs = 1
          query.primaryqs = self.address
          query.targetOrg = self.orgid
          request = Postini::API::AutomatedBatch::Listusers.new(
            Postini.auth,
            "ALL",
            query
          )

          response = remote.listusers( request )

          @aliases = []
          response.each { |user_record| @aliases << user_record.address }
        end

        @aliases
      end

      # Add an alias to this user
      def add_alias( address )
        @aliases = nil # clear our cache
        remote = self.class.automated_batch_port( self.address )
        request = Postini::API::AutomatedBatch::Addalias.new( Postini.auth, self.address, address )
        remote.addalias( request )
      end

      # Removes the specified alias
      def remove_alias( address )
        @aliases = nil # clear our cache
        remote = self.class.automated_batch_port( self.address )
        request = Postini::API::AutomatedBatch::Deletealias.new( Postini.auth, address )
        remote.deletealias( request )
      end

      # Removes all aliases from the user
      def clear_aliases
        aliases.each do |address|
          remove_alias( address )
        end
      end
      
    end
  end
end
