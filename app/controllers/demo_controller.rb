class DemoController < ApplicationController
  
  def index
    # Renders the action it would render if it were the "hello" action.
    # render({:action => 'hello'}) # This is the old way, Rails 1.x.
    
    # Specifies the template to render.
    render({:template => 'demo/hello'})
    #render(:hello)
    
    # Rails 3.x.
    #render('demo/index')
    
    # Rails knows we are in 'demo' becase we are in "DemoController".
    #render('index')
    
    # redirect_to(:controller => 'demo', :action => 'other_hello')
    @arr = [1, 2, 3, 4, 5]
  end
  
  def hello
    @arr = [1, 2, 3, 4, 5]
    # redirect_to('http://jeditux.wordpress.com')
    @id = params[:id].to_i
    @page = params[:page].to_i
  end
  
  def other_hello
    render(:text => 'This is plain text bein rendered.')
  end
  
  def test
    # render({:text => 'More plain text being rendere...'})
    #render({:action => 'index'})
  end
  
end
