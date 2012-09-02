# Encoding: UTF-8

Gem::Specification.new do |s|
  s.platform          = Gem::Platform::RUBY
  s.name              = 'refinerycms-references'
  s.version           = '1.0'
  s.description       = 'Ruby on Rails References extension for Refinery CMS'
  s.date              = '2012-09-02'
  s.summary           = 'References extension for Refinery CMS'
  s.require_paths     = %w(lib)
  s.files             = Dir["{app,config,db,lib}/**/*"] + ["readme.md"]

  # Runtime dependencies
  s.add_dependency             'refinerycms-core',    '~> 2.0.5'
  s.add_dependency             'refinerycms-formtastic',     '~> 1.0.2'

  # Development dependencies (usually used for testing)
  s.add_development_dependency 'refinerycms-testing', '~> 2.0.5'
end
