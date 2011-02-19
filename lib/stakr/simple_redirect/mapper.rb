module Stakr #:nodoc:
  module SimpleRedirect #:nodoc:
    
    module Mapper
      
      # Creates a route for the provided <tt>path</tt> redirecting to the named route specified by <tt>name</tt>.
      # 
      # By default an access to the route will cause a "Moved Permanently (301)" status code.
      # If you want to set another status code, specify a <tt>:status</tt> parameter in the <tt>options</tt> hash
      # (see redirect_to for valid values).
      # 
      # You should ensure the provided <tt>path</tt> and the <tt>options</tt> hash contain together all parameter
      # keys which are required in the named route specified by <tt>name</tt>, otherwise the generation of the
      # destination URL may fail.
      def redirect(path, name, options = {})
        connect(path, :controller => 'redirect', :redirect => { :name => name, :status => options.delete(:status), :options => options })
      end
      
    end
    
  end
end
