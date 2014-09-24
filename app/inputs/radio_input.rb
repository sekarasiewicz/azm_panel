class RadioInput
  include Formtastic::Inputs::Base
  include Formtastic::Inputs::Base::Collections
  include Formtastic::Inputs::Base::Choices

  def to_html
    choices_wrapping do
      label_html <<
          collection.map { |choice|
            checkbox_group do
              choice_html(choice)
            end
          }.join("\n").html_safe
    end
  end

  def choice_html(choice)
    template.content_tag(:label,
                         builder.radio_button(input_name, choice_value(choice), input_html_options.merge(choice_html_options(choice)).merge(required: false)) <<
                             choice_label(choice),
                         label_html_options.merge(for: choice_input_dom_id(choice))
    )
  end

  def label_html_options
    {
        for: input_html_options[:id],
        class: ['radio control-label'],
    }
  end

  def checkbox_group(&block)
    template.content_tag(:div,
                         template.capture(&block),
                         class: 'radio'
    )
  end
end
