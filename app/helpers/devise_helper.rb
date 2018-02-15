module DeviseHelper
  def devise_error_messages!
    return '' if resource.errors.empty?

     messages = resource.errors.full_messages.map { |msg| content_tag(:div, msg) }.join
     sentence = I18n.t('errors.messages.not_saved',
     count: resource.errors.count,
     resource: resource.class.model_name.human.downcase)

     html = <<-HTML
     <p>
      <br>
      #{messages}
      <br>
     </p>
     HTML

     html.html_safe
  end
end

# <div class="mdl-js-snackbar mdl-snackbar mdl-snackbar--active"
#   data-upgraded=",MaterialSnackbar">
#    <div class="mdl-snackbar__text left-align">
#      #{messages}
#    </div>
#    <button class="mdl-snackbar__action">
#      <strong>닫기</strong>
#    </button>
#  </div>