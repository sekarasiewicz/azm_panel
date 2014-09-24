class TimePickerInput < SimpleForm::Inputs::Base
  def input
    template.content_tag(:div, class: 'input-group bootstrap-timepicker') do
      @builder.input_field(attribute_name, input_html_options.merge(as: :string)) +
          template.content_tag(:span, class: 'input-group-addon') do
            template.content_tag(:i, ' ', class: 'glyphicon glyphicon-time')
          end
    end
  end

  private

  def input_html_options
    super.merge(value: formatted_time, class: 'form-control timepicker')
  end

  def formatted_time
    I18n.l(get_time, format: :short)
  end

  def get_time
    object.public_send(attribute_name) || Time.now
  end
end
