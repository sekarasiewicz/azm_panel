class NumberInput < BaseInput
  include Formtastic::Inputs::Base::Numeric
  include Formtastic::Inputs::Base::Placeholder

  def to_html
    form_group do
      label_html <<
          builder.number_field(method, input_html_options)
    end
  end

  def step_option
    super || 'any'
  end
end
