# Encoding: UTF-8

Gem::Specification.new do |s|
  s.platform          = Gem::Platform::RUBY
  s.name              = 'refinerycms-atamai_theme'
  s.version           = '1.0'
  s.description       = 'Ruby on Rails graphical for Refinery CMS used by Atamai Village'
  s.date              = '2012-07-09'
  s.summary           = 'Atamai Theme extension for Refinery CMS'
  s.require_paths     = %w(lib)
  s.files             = Dir["{app,config,db,lib}/**/*"] + ["readme.md"]
  s.authors           = ['Craig Ambrose']

  # Runtime dependencies
  # s.add_dependency             'refinerycms-core',    '~> 2.1.0'

  # Development dependencies (usually used for testing)
  # s.add_development_dependency 'refinerycms-testing', '~> 2.0.5'
end
