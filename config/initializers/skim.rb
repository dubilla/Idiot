if defined?(Skim)
  Skim::Engine.default_options[:use_asset] = true

  # By default, Slim uses {curly braces} as a delimiter for element attributes.
  # This breaks angularjs templating however, so we remove it from the list here.

  # :attr_delims is deprecated in Slim master (unreleased change as of 9/2/14).
  # Change it to :attr_list_delims after we upgrade.
  Slim::Parser.default_options[:attr_delims] = {'(' => ')', '[' => ']'}
end
