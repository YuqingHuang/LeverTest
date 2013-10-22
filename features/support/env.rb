# encoding: utf-8
module Cucumber
  module Formatter
    module Console

      def self.included base
        base.class_eval do
          def format_step(keyword, step_match, status, source_indent)
            comment = if source_indent
                        c = (' # ' + step_match.file_colon_line).indent(source_indent)
                        format_string(c, :comment)
                      else
                        ''
                      end

            format = format_for(status, :param)
            line = keyword + step_match.format_args(format) + comment.force_encoding('utf-8')
            format_string(line, status)
          end
        end
      end
    end
  end
end
