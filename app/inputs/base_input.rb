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
    template.content_tag(:div, template.capture(&block), class: 'form-group')
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
end
