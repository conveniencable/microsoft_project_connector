class MicrosoftProjectConnectorQuery < IssueQuery
    def sort_criteria_fixed=(arg)
        c = []
        if arg.is_a?(Hash)
          arg = arg.keys.sort.collect {|k| arg[k]}
        end
        c = arg.select {|k,o| !k.to_s.blank?}.slice(0,3).collect {|k,o| [k.to_s, (o == 'desc' || o == false) ? 'desc' : 'asc']}
        write_attribute(:sort_criteria, c)
    end
end