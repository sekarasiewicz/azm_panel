class DatePickerInput < SimpleForm::Inputs::Base
  def input
    template.content_tag(:div, class: 'input-group date') do
      @builder.input_field(attribute_name, input_html_options.merge(as: :string)) +
          template.content_tag(:span, class: 'input-group-addon') do
            template.content_tag(:i, ' ', class: 'glyphicon glyphicon-calendar')
          end
    end
  end

  private

  def input_html_options
    super.merge(class: 'form-control date-picker-input')
  end
end
