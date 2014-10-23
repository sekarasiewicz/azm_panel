class ColorInput < BaseInput
  include Formtastic::Inputs::Base::Stringish
  include Formtastic::Inputs::Base::Placeholder

  def to_html
    form_group do
      label_html <<
          builder.color_field(method, input_html_options)
    end
  end
end
