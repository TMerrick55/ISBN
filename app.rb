require 'sinatra'
require_relative 'ISBN.rb'

get '/' do
	# 'Hello world!'
	# 'Finally got this to work!'
	# 'Are we done yet?'
	# 'Guess not...'
	# '... Oh well...'

erb :ISBN_input, :locals => {isbn_input => ''}
end

post '/ISBN_num' do
	isbn_num = params[:isbn]
	# puts '#{isbn_num}ISBN_num_should_be_here'

results = valid_isbn?(isbn_num)
# "#{results} results shown here"
erb :ISBN_input, :locals => {:isbn_num => isbn_num, :results => results}

end