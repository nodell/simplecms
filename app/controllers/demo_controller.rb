class DemoController < ApplicationController
  # by default, controller will render the view with the same name as the action
  
  
  def index
	# redirect actually does a 302 
	redirect_to(:action => "hello")
  end
  
  def hello
	@personId = "";
	# can also redirect to outside URLs
	# redirect_to("http://www.dartmouth.edu")
	# or to another action
	# redirect_to(:action => 'other_hello');
	# or to another controller & action
	# redirect_to(:controller => 'newController', :action => 'myaction')
	
	# instance variables begin with @, and are automatically available in the associated view or the one that is rendered
	@array = [1,2,3,4,5]
	# instance variable even available in another view as long as it's called from this action
	# render('anotherTemplate');
	@personId = params['pid'];
  end
  
  def other_hello
	# render just text, not a view
	# render(:text => "Hello Everybody!")
	# render a different view
	# render(:template => 'anotherTemplate')
	@array = [1,2,3,4,5]
	render('anotherTemplate')
	
  end
end
