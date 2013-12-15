class BootstrapFormBuilder < ActionView::Helpers::FormBuilder
  def field_wrapper(field_name, options={}, &block)
    classes = []
    classes << (options[:class] || 'form-group')
    classes << 'has-error' if object.errors[field_name].any?
    @template.content_tag(:div, class: classes, &block)
  end
end