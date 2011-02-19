require 'stakr/simple_redirect/mapper'

module ::ActionController #:nodoc:
  module Routing #:nodoc:
    class RouteSet #:nodoc:
      class Mapper #:nodoc:
        include Stakr::SimpleRedirect::Mapper
      end
    end
  end
end
