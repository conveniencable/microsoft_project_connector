#
# THIS FILE MUST BE LOADED BEFORE IssueQuery OR EasyIssueQuery !!!
#
module MicrosoftProjectConnector
  module Patches
    module IssuePatch
  
      def self.included(base)
        base.send(:include, InstanceMethods)

        if Issue.method_defined? :would_reschedule?
          base.class_eval do
              unloadable
              alias_method :would_reschedule_without_microsoft_project_connector?, :would_reschedule?
              alias_method :would_reschedule?, :would_reschedule_with_microsoft_project_connector?
          end
        end
      end
  
      module InstanceMethods
        def would_reschedule_with_microsoft_project_connector?(other)
          all = [self]
          last = [self]
          in_types = [IssueRelation::TYPE_PRECEDES, IssueRelation::TYPE_FINISH_FINISH, IssueRelation::TYPE_FINISH_START, IssueRelation::TYPE_START_START, IssueRelation::TYPE_START_FINISH]
          while last.any?
            current = last.map {|i|
              i.relations_from.where(:relation_type => in_types).map(&:issue_to) +
              i.leaves.to_a +
              i.ancestors.map {|a| a.relations_from.where(:relation_type => in_types).map(&:issue_to)}
            }.flatten.uniq
            current -= last
            current -= all
            return true if current.include?(other)
            last = current
            all += last
          end
          false
        end

        def reschedule_due_date(date)
          wd = working_duration
          self.start_date = subtrack_working_days(date, wd)
          self.due_date = date
        end

        def subtract_working_days(date, working_days)
          if working_days > 0
            weeks = working_days / (7 - non_working_week_days.size)
            result = weeks * 7
            days_left = working_days - weeks * (7 - non_working_week_days.size)
            cwday = date.cwday
            while days_left > 0
              cwday -= 1
              if cwday == 0
                  cwday = 7
              end
              unless non_working_week_days.include?(cwday)
                days_left -= 1
              end
              result += 1
            end
            next_working_date(date - result)
          else
            date
          end
        end
  
        # Returns the date of the first day on or after the given date that is a working day
        def prev_working_date(date)
          cwday = date.cwday
          days = 0
          while true
              days -= 1
              cwday -= 1
              if cwday == 0
                  cwday = 7
              end
              break unless non_working_week_days.include?(cwday) || days < -7
          end
          date + days
        end
      end
    end
  end
end
  
unless Issue.included_modules.include?(MicrosoftProjectConnector::Patches::IssuePatch)
    Issue.include(MicrosoftProjectConnector::Patches::IssuePatch)
end