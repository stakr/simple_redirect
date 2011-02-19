class RedirectController < ActionController::Base
  
  def index
    
    # this ensures the redirect pamameter is not an external parameter and, thus, has been set in the routes.rb (or some Rack module).
    raise ActionController::RoutingError.new("No route matches \"#{request.request_uri}\"") unless params[:redirect].is_a?(Hash)
    
    # build URL and get status
    redirect = params.delete(:redirect)
    url = send("#{redirect[:name]}_url", params.except(:controller, :action).merge(redirect[:options]))
    
    # perform redirect
    redirect_to url, :status => redirect[:status] || :moved_permanently
    
  end
  
end
