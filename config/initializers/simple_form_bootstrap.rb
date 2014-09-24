# Use this setup block to configure all options available in SimpleForm.
SimpleForm.setup do |config|
  config.wrappers :bootstrap, tag: 'div', class: 'form-group', error_class: 'error' do |b|
    b.use :html5
    b.use :placeholder
    b.use :label
    b.use :input, class: 'form-control'
    b.use :error, wrap_with: { tag: 'span', class: 'help-inline' }
    b.use :hint,  wrap_with: { tag: 'p', class: 'help-block' }
  end

  # config.wrappers :inline_checkbox, tag: 'div', class: 'checkbox', error_class: 'error' do |b|
  #   b.use :html5
  #   b.use :label_input, wrap_with: {class: 'checkbox'}
  #   b.use :error, wrap_with: {tag: 'span', class: 'help-inline'}
  #   b.use :hint, wrap_with: {tag: 'p', class: 'help-block'}
  # end

  # Wrappers for forms and inputs using the Twitter Bootstrap toolkit.
  # Check the Bootstrap docs (http://twitter.github.com/bootstrap)
  # to learn about the different styles for forms and inputs,
  # buttons and other elements.
  config.default_wrapper = :bootstrap
end
