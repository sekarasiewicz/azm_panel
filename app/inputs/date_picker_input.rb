class DatePickerInput < BaseInput
  def to_html
    form_group do
      label_html <<
          input_group do
            select_html <<
                icon_html
          end
    end
  end

  private

  def select_html
    builder.text_field(method, input_html_options)
  end

  def icon_html
    template.content_tag(:span, class: 'input-group-addon') do
      template.content_tag(:i, ' ', class: 'glyphicon glyphicon-calendar')
    end
  end
end
