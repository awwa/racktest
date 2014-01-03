require 'rubygems'
require 'sinatra'
# require 'haml'
require 'erb'
require 'rexml/document'
# require 'erubis'
require './rest.rb'

get '/' do
	'under construction'
end

get '/user/:id' do |id|
	precure = Precure.new.find(id)
	if precure != nil
		@user_name=precure[:name]
		@precure_name=precure[:precure]
		# erb :getprecure
		'user_name: ' + @user_name + 
		'precure_name: ' + @precure_name
	else
		'There is no precure'
	end
end

post '/post' do
	# erubis h 'POST <</post>>  => create #{h params}'
	'test test'
end

