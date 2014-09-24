class SelectInput < BaseInput

  include Formtastic::Inputs::Base::Collections

  def select_html
    builder.select(input_name, collection, input_options, input_html_options)
  end
end
