class SelectInput

  include Formtastic::Inputs::Base
  include Formtastic::Inputs::Base::Collections

  def to_html
    template.content_tag(:div, class: 'form-group') do
      label_html <<
      select_html
    end
  end

  def label_html_options
    {
        for: input_html_options[:id],
        class: ['control-label'],
    }
  end

  def select_html
    builder.select(input_name, collection, input_options, input_html_options)
  end

  def input_html_options
    super.merge(class: 'form-control')
  end
end
