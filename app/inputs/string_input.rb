class StringInput < BaseInput
  def select_html
    builder.text_field(method, input_html_options)
  end
end
