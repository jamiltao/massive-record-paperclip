begin
  require "paperclip"
rescue LoadError
  puts "MassiveRecord::Paperclip requires that you install the Paperclip gem."
  exit
end

Paperclip.options[:log] = false

if defined?(Rails)
  if Rails.respond_to?(:logger)
    Paperclip.options[:log] = Rails.logger
  end
end


Paperclip.interpolates :id do |attachment, style|
  attachment.instance.id.to_s.scan(/.{4}/).join("/")


module MassiveRecord
  module Paperclip

    def self.included(base)
      base.extend(ClassMethods)
    end

    module ClassMethods

      def has_attached_file(field, options = {})

        include ::Paperclip
        include ::Paperclip::Glue

        has_attached_file(field, options)

        column_family :photo do
          field(:"#{field}_file_name")
          field(:"#{field}_content_type")
          field(:"#{field}_file_size", :integer)
          field(:"#{field}_updated_at", :date)
        end
      end
    end
  end
end