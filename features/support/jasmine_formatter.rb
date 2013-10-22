# encoding: utf-8
require 'cucumber/formatter/console'
require 'cucumber/formatter/io'

module Cucumber
  class StepMatch
    attr_reader :invoke_return_value
    def invoke(multiline_arg)
      all_args = args
      all_args << multiline_arg.to_step_definition_arg if multiline_arg
      @invoke_return_value = @step_definition.invoke(all_args)
    end
  end
end

module Cucumber
  module Formatter
    class Jasmine 
      include Io
      include Console

      def initialize(step_mother, path_or_io, options)
        @io = ensure_io(path_or_io, "jasmine")
      end

      def before_feature(feature)
        @file = File.new("#{feature.name}.js", 'w')
        @file << "describe('#{feature.name}', function() {\n"
        @file << "  beforeEach(function() {\n  })\n\n  afterEach(function() {\n  })\n\n"
      end

      def before_feature_element(feature_element)
        @file << "  it('#{feature_element.name}', function() {\n"
      end
      
      def after_feature_element(feature_element)
        @file << "  })\n"
      end

      def before_step_result(keyword, step_match, multiline_arg, status, exception, source_indent, background, file_colon_line)
        @file << "    #{step_match.invoke_return_value}\n"
      end

      def after_feature(feature)
        @file << "})\n"
        @file.close
      end

    end
  end
end
