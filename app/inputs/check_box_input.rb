class CheckBoxInput < SimpleForm::Inputs::Base
  def input
    template.content_tag(:div, class: 'checkbox') do
      binding.pry
      @builder.input_field(attribute_name, input_html_options.merge(as: :boolean))
    end
  end

  private

  def input_html_options
    super.merge(class: '')
  end
end
