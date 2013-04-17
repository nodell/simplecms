class DemoController < ApplicationController
  def index
	# redirect actually does a 302 
	redirect_to(:action => "hello")
  end
  
  def hello
	# can also redirect to outside URLs
	# redirect_to("http://www.dartmouth.edu")
	# redirect_to(:action => 'other_hello');
	# redirect_to(:controller => 'newController', :action => 'myaction')
	
	# instance variables begin with @, and are automatically available in any of the views for this controller
	@array = [1,2,3,4,5]
	# instance variable even available in another template!!
	# render('anotherTemplate'); 
  end
  
  def other_hello
	# render just text, not a template
	# render(:text => "Hello Everybody!")
	# render a different template
	# render(:template => 'anotherTemplate')
	render('anotherTemplate')
	
  end
end
