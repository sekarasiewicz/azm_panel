class FileInput < BaseInput
  def select_html
    builder.file_field(method, input_html_options)
  end

  def html_options
    custom_html_options
  end
end
