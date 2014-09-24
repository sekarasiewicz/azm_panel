class StringInput

  include Formtastic::Inputs::Base

  def to_html

    template.content_tag(:div, class: 'form-group') do
      label_html <<
          select_html
    end
  end

  def select_html
    builder.text_field(method, input_html_options)
  end

  def label_html_options
    {
        for: input_html_options[:id],
        class: ['control-label'],
    }
  end

  def input_html_options
    super.merge(class: 'form-control')
  end
end
