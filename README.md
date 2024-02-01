# AdministrateFieldPaperTrail

![Gem](https://img.shields.io/gem/v/administrate-field-paper_trail.svg)
![CI](https://github.com/IrvanFza/administrate-field-paper_trail/workflows/CI/badge.svg)

An [Administrate](https://github.com/thoughtbot/administrate/) plugin to show record change histories from [PaperTrail](https://github.com/paper-trail-gem/paper_trail).

## Requirements

- Ruby on Rails version >= 5.0
- Administrate version >= 0.2.2
- PaperTrail version >= 2.7.2

## Installation

Make sure you already setup [PaperTrail](https://github.com/paper-trail-gem/paper_trail#1b-installation) properly in your project.
Add `administrate-field-paper_trail` to your Gemfile:

```ruby
gem 'administrate-field-paper_trail'
```

And then execute:
```
$ bundle install
```

## Usage

Add to your `UserDashboard`:

```ruby
ATTRIBUTE_TYPES = {
  changeset: Field::PaperTrail.with_options(excluded_attributes: %w[created_at updated_at], whodunnit_model: 'User'),
}
```

The `excluded_attributes` option takes an array of string of the attributes you want to exclude from the result. Default excluded attributes are: `id`, `created_at`, and `updated_at`.

The `whodunnit_model` defines which model to search for whoever made the change, and to link to it. Defaults to `'User'`.

Then show the field in your show page like so:

```ruby
SHOW_PAGE_ATTRIBUTES = %i[
  changeset
]
```

Currently, only support to show changes in the show page. Contribution will be appreciated.

## To Do

- [x] Show record changes information in the show page
- [ ] Show count of changes of each records in the index page
- [ ] Add i18n support for the result message
- [ ] Add i18n support for date/time value

## Contributing

1. Contribution are welcome (codes, suggestions, and bugs)
2. Please test your code: `bundle exec rspec`
3. Please document your code
4. Bug reports and pull requests are welcome on GitHub at https://github.com/IrvanFza/administrate-field-paper_trail

## License

[MIT License](https://github.com/IrvanFza/administrate-field-paper_trail/blob/master/LICENSE.md)

---
Based on the [Administrate::Field::Image](https://github.com/thoughtbot/administrate-field-image) template
