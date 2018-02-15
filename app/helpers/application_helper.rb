module ApplicationHelper

  def current_class?(test_path)
    'mdl-navigation__link--current' if request.path == test_path
  end
  
end
