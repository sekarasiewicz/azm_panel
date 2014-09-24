class BaseInput
  include Formtastic::Inputs::Base

  def to_html
    form_group do
      label_html <<
          select_html
    end
  end

  def input_html_options
    super.merge(class: 'form-control')
  end

  def label_html_options
    {
        for: input_html_options[:id],
        class: ['control-label'],
    }
  end

  def form_group(&block)
    template.content_tag(:div,
                         template.capture(&block),
                         class: 'form-group'
    )
  end
end
