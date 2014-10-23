class BaseInput
  include Formtastic::Inputs::Base

  def to_html
    form_group do
      label_html <<
          select_html
    end
  end

  def input_html_options
    super.merge(html_options)
  end

  def label_html_options
    {
        for: input_html_options[:id],
        class: 'control-label',
    }
  end

  def form_group(&block)
    template.content_tag(:div,
                         [template.capture(&block), hint_html].join("\n").html_safe,
                         wrapper_html_options
    )
  end

  def input_group(&block)
    template.content_tag(:div, template.capture(&block), class: 'input-group')
  end

  def html_options
    {
        class: 'form-control'
    }.merge(custom_html_options){|_, *values| values.join(' ') }
  end

  def custom_html_options
    options[:input_html] || {}
  end

  def wrapper_classes
    classes = wrapper_classes_raw
    classes << as
    classes << 'form-group'
    classes << 'has-error' if errors?
    classes << 'optional' if optional?
    classes << 'required' if required?
    classes << 'autofocus' if autofocus?

    classes.join(' ')
  end
end
