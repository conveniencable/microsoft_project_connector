#
# THIS FILE MUST BE LOADED BEFORE IssueQuery OR EasyIssueQuery !!!
#
module MicrosoftProjectConnector
  module Patches
    module IssueRelationPatch
      FINISH_FINISH = 'finish_finish'
      R_FINISH_FINISH = 'r_finish_finish'

      FINISH_START = 'finish_start'
      R_FINISH_START = 'r_finish_start'

      START_START = 'start_start'
      R_START_START = 'r_start_start'

      START_FINISH = 'start_finish'
      R_START_FINISH = 'r_start_finish'
  
      def self.included(base)
        base.send(:include, InstanceMethods)

        if IssueRelation.method_defined? :circular_dependency?
          base.class_eval do
              unloadable
              
              alias_method :circular_dependency_without_microsoft_project_connector?, :circular_dependency?
              alias_method :circular_dependency?, :circular_dependency_with_microsoft_project_connector?

              alias_method :handle_issue_order_without_microsoft_project_connector, :handle_issue_order
              alias_method :handle_issue_order, :handle_issue_order_with_microsoft_project_connector
          end
        end
  
        new_types = base::TYPES.merge(
            FINISH_FINISH => {
              name: :label_finish_finish,
              sym_name: :label_r_finish_finish,
              order: 16,
              sym: R_FINISH_FINISH
            },
  
            R_FINISH_FINISH => {
              name: :label_r_finish_finish,
              sym_name: :label_finish_finish,
              order: 17,
              sym: FINISH_FINISH,
              reverse: FINISH_FINISH
            },
     
            FINISH_START => {
              name: :label_finish_start,
              sym_name: :label_r_finish_start,
              order: 18,
              sym: R_FINISH_START
            },

            R_FINISH_START => {
              name: :label_r_finish_start,
              sym_name: :label_finish_start,
              order: 19,
              sym: FINISH_START,
              reverse: FINISH_START
            },

            START_START => {
              name: :label_start_start,
              sym_name: :label_r_start_start,
              order: 20,
              sym: R_START_START
            },

            R_START_START => {
              name: :label_r_start_start,
              sym_name: :label_start_start,
              order: 21,
              sym: START_START,
              reverse: START_START,
            },


            START_FINISH => {
              name: :label_start_finish,
              sym_name: :label_r_start_finish,
              order: 22,
              sym: START_FINISH
            },

            R_START_FINISH => {
              name: :label_r_start_finish,
              sym_name: :label_start_finish,
              order: 23,
              sym: R_START_FINISH,
              reverse: R_START_FINISH
            }
          )
  
        base.class_eval do
          const_set :TYPE_FINISH_FINISH, FINISH_FINISH
          const_set :TYPE_FINISH_START, FINISH_START
          const_set :TYPE_START_START, START_START
          const_set :TYPE_START_FINISH, START_FINISH
  
          remove_const :TYPES
          const_set :TYPES, new_types.freeze
  
          inclusion_validator = _validators[:relation_type].find{|v| v.kind == :inclusion}
          inclusion_validator.instance_variable_set(:@delimiter, new_types.keys)
        end
      end
  
      module InstanceMethods
        def circular_dependency_with_microsoft_project_connector?
            case relation_type
                when FINISH_FINISH
                  issue_to.would_reschedule? issue_from
                when FINISH_START
                  issue_to.would_reschedule? issue_from
                when START_START
                  issue_to.would_reschedule? issue_from
                when START_FINISH
                  issue_to.would_reschedule? issue_from
                else
                    circular_dependency_without_microsoft_project_connector?
            end
        end

        def handle_issue_order_with_microsoft_project_connector
          if [FINISH_FINISH, FINISH_START, START_START, START_FINISH].include? relation_type
            self.delay ||= 0

            set_issue_to_dates
          else
            handle_issue_order_without_microsoft_project_connector
          end
        end

        def set_issue_to_dates_with_microsoft_project_connector(journal=nil)
          if relation_type == IssueRelation::TYPE_PRECEDES
            set_issue_to_dates_without_microsoft_project_connector(journal)
          else
            # case relation_type
            # when FINISH_FINISH
            # when FINISH_START
            # when START_START
            # when START_FINISH
            # end
          end
        end
      end
    end
  end
end
  
  unless IssueRelation.included_modules.include?(MicrosoftProjectConnector::Patches::IssueRelationPatch)
    IssueRelation.include(MicrosoftProjectConnector::Patches::IssueRelationPatch)
  end