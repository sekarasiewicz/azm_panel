class NumberInput
  include Formtastic::Inputs::Base
  include Formtastic::Inputs::Base::Numeric
  include Formtastic::Inputs::Base::Placeholder

  def to_html
    template.content_tag(:div, class: 'form-group') do
      label_html <<
          builder.number_field(method, input_html_options)
    end
  end

  def input_html_options
    super.merge(class: 'form-control')
  end

  def label_html_options
    {
        for: input_html_options[:id],
        class: ['control-label'],
    }
  end

  def step_option
    super || 'any'
  end
end
