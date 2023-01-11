$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |gem|
  gem.name = "administrate-field-paper_trail"
  gem.version = "0.1.0"
  gem.authors = ["Irvan Fauziansyah"]
  gem.email = ["ervhan@gmail.com"]
  gem.homepage = "https://github.com/IrvanFza/administrate-field-paper_trail"
  gem.summary = "Administrate field for PaperTrail"
  gem.description = "Administrate's plugin to show PaperTrail versions via new field type"
  gem.license = "MIT"

  gem.require_paths = ["lib"]
  gem.files = `git ls-files`.split("\n")
  gem.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")

  gem.add_dependency "administrate", ">= 0.2.2"
  gem.add_dependency "paper_trail", ">= 2.7.2"
  gem.add_dependency "rails", ">= 5.0"

  gem.add_development_dependency "rspec", "~> 3.4"
end
