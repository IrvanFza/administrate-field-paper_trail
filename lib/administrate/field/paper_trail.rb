require "administrate/field/base"
require "rails"

module Administrate
  module Field
    class PaperTrail < Administrate::Field::Base
      class Engine < ::Rails::Engine
      end

      def excluded_attributes
        options.fetch(:excluded_attributes, %w[id created_at updated_at])
      end

      def whodunnit(id)
        options.fetch(:whodunnit_model, 'User')&.constantize&.find_by(id:)
      end

      def humanize_changeset(changeset)
        result = ''
        changeset.each do |attribute, values|
          next if excluded_attributes.include?(attribute)

          old_value, new_value = values
          result += "#{attribute.gsub('_', ' ').capitalize} changed from '#{old_value}' to '#{new_value}'. "
        end

        result
      end
    end
  end
end
