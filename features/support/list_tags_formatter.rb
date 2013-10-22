# encoding: utf-8
require 'cucumber/formatter/console'
require 'cucumber/formatter/io'

module Cucumber
  module Formatter
    class ListTags
      include Io
      include Console

      def initialize(step_mother, path_or_io, options)
        @io = ensure_io(path_or_io, "list_tags")
        @all_tags = {}
      end

      def before_feature(feature)
        @current_tag_names = []
      end

      def tag_name(tag_name)
        unless tag_name.empty?
          @current_tag_names << tag_name unless @current_tag_names.include?(tag_name)
        end
      end

      def feature_name(keyword, name)
        unless @current_tag_names.to_s.empty?
          @current_tag_names.each do |current_tag_name|
            @all_tags[current_tag_name] ||= []
            @all_tags[current_tag_name] << name
          end
        end
      end

      def after_features(features)
        @io.puts MultiJson.dump(@all_tags)
      end

    end
  end
end
