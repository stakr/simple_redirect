# Simple Redirect

Written by stakr GbR (Jan Sebastian Siwy, Martin Spickermann, Henning Staib GbR; http://www.stakr.de/)

Source: https://github.com/stakr/simple_redirect

A plugin to write redirect instruction directly into the route.rb file.


## Example

Let's assume you have a route for the 'list' action of the UsersController:

    map.list_users 'users', :controller => 'users', :action => 'list'

If it is a common typo to write another path or if this controller/action has previously
been available under another route (e.g. 'user'), just add the following line to your
routes.rb file:

    map.redirect 'user', :list_users

By default an access to the 'user' route will cause a "Moved Permanently (301)" status code.
If you want to set another status code, specify a third options parameter (see redirect_to
for valid values).

    map.redirect 'user', :list_users, :status => :found

You should ensure the provided path and the options hash (third parameter) contain together all
parameter keys which are required in the specified named route, otherwise the generation of the
destination URL may fail.


Copyright (c) 2009 stakr GbR (Jan Sebastian Siwy, Martin Spickermann, Henning Staib GbR), released under the MIT license
