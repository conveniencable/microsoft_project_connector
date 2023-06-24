module MicrosoftProjectConnectorHelper
  @@readonly_fields = ['author', 'created_on', 'updated_on', 'closed_on', 'spent_hours', 'total_spent_hours']
  @@field_formats = { 'id': 'int', 'start_date': 'date', 'due_date': 'date', 'done_ratio': 'int', 'is_private': 'bool', 'estimated_hours': 'float', 'created_on': 'date', 'updated_on': 'date', 'closed_on': 'date', 'spent_hours': 'float', 'total_spent_hours': 'float' }

  @@msp_fields = [
    {:name => 'Name', :title_index => 0, :type => 'string', :readonly => false, :is_custom =>false, :enum_items => nil},
    {:name => 'Notes', :title_index => 1, :type => 'string', :readonly => false, :is_custom =>false, :enum_items => nil},
    {:name => 'ResourceNames', :title_index => 2, :type => 'string', :readonly => false, :is_custom =>false, :enum_items => nil},
    {:name => 'Start', :title_index => 3, :type => 'DateTime', :readonly => false, :is_custom =>false, :enum_items => nil},
    {:name => 'Start1', :title_index => 4, :type => 'DateTime', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Start2', :title_index => 5, :type => 'DateTime', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Start3', :title_index => 6, :type => 'DateTime', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Start4', :title_index => 7, :type => 'DateTime', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Start5', :title_index => 8, :type => 'DateTime', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Start6', :title_index => 9, :type => 'DateTime', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Start7', :title_index => 10, :type => 'DateTime', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Start8', :title_index => 11, :type => 'DateTime', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Start9', :title_index => 12, :type => 'DateTime', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Start10', :title_index => 13, :type => 'DateTime', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Finish', :title_index => 14, :type => 'DateTime', :readonly => false, :is_custom =>false, :enum_items => nil},
    {:name => 'Finish1', :title_index => 15, :type => 'DateTime', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Finish2', :title_index => 16, :type => 'DateTime', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Finish3', :title_index => 17, :type => 'DateTime', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Finish4', :title_index => 18, :type => 'DateTime', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Finish5', :title_index => 19, :type => 'DateTime', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Finish6', :title_index => 20, :type => 'DateTime', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Finish7', :title_index => 21, :type => 'DateTime', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Finish8', :title_index => 22, :type => 'DateTime', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Finish9', :title_index => 23, :type => 'DateTime', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Finish10', :title_index => 24, :type => 'DateTime', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Work', :title_index => 25, :type => 'double', :readonly => false, :is_custom =>false, :enum_items => nil},
    {:name => 'Cost', :title_index => 26, :type => 'double', :readonly => false, :is_custom =>false, :enum_items => nil},
    {:name => 'Cost1', :title_index => 27, :type => 'double', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Cost2', :title_index => 28, :type => 'double', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Cost3', :title_index => 29, :type => 'double', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Cost4', :title_index => 30, :type => 'double', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Cost5', :title_index => 31, :type => 'double', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Cost6', :title_index => 32, :type => 'double', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Cost7', :title_index => 33, :type => 'double', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Cost8', :title_index => 34, :type => 'double', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Cost9', :title_index => 35, :type => 'double', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Cost10', :title_index => 36, :type => 'double', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'ActualWork', :title_index => 37, :type => 'double', :readonly => false, :is_custom =>false, :enum_items => nil},
    {:name => 'Duration', :title_index => 38, :type => 'int', :readonly => false, :is_custom =>false, :enum_items => nil},
    {:name => 'Duration1', :title_index => 39, :type => 'int', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Duration2', :title_index => 40, :type => 'int', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Duration3', :title_index => 41, :type => 'int', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Duration4', :title_index => 42, :type => 'int', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Duration5', :title_index => 43, :type => 'int', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Duration6', :title_index => 44, :type => 'int', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Duration7', :title_index => 45, :type => 'int', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Duration8', :title_index => 46, :type => 'int', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Duration9', :title_index => 47, :type => 'int', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Duration10', :title_index => 48, :type => 'int', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'WBS', :title_index => 49, :type => 'string', :readonly => false, :is_custom =>false, :enum_items => nil},
    {:name => 'Priority', :title_index => 50, :type => 'short', :readonly => false, :is_custom =>false, :enum_items => nil},
    {:name => 'Text1', :title_index => 51, :type => 'string', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Text2', :title_index => 52, :type => 'string', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Text3', :title_index => 53, :type => 'string', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Text4', :title_index => 54, :type => 'string', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Text5', :title_index => 55, :type => 'string', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Text6', :title_index => 56, :type => 'string', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Text7', :title_index => 57, :type => 'string', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Text8', :title_index => 58, :type => 'string', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Text9', :title_index => 59, :type => 'string', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Text10', :title_index => 60, :type => 'string', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Text11', :title_index => 61, :type => 'string', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Text12', :title_index => 62, :type => 'string', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Text13', :title_index => 63, :type => 'string', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Text14', :title_index => 64, :type => 'string', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Text15', :title_index => 65, :type => 'string', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Text16', :title_index => 66, :type => 'string', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Text17', :title_index => 67, :type => 'string', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Text18', :title_index => 68, :type => 'string', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Text19', :title_index => 69, :type => 'string', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Text20', :title_index => 70, :type => 'string', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Text21', :title_index => 71, :type => 'string', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Text22', :title_index => 72, :type => 'string', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Text23', :title_index => 73, :type => 'string', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Text24', :title_index => 74, :type => 'string', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Text25', :title_index => 75, :type => 'string', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Text26', :title_index => 76, :type => 'string', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Text27', :title_index => 77, :type => 'string', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Text28', :title_index => 78, :type => 'string', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Text29', :title_index => 79, :type => 'string', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Text30', :title_index => 80, :type => 'string', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Number1', :title_index => 81, :type => 'double', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Number2', :title_index => 82, :type => 'double', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Number3', :title_index => 83, :type => 'double', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Number4', :title_index => 84, :type => 'double', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Number5', :title_index => 85, :type => 'double', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Number6', :title_index => 86, :type => 'double', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Number7', :title_index => 87, :type => 'double', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Number8', :title_index => 88, :type => 'double', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Number9', :title_index => 89, :type => 'double', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Number10', :title_index => 90, :type => 'double', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Number11', :title_index => 91, :type => 'double', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Number12', :title_index => 92, :type => 'double', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Number13', :title_index => 93, :type => 'double', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Number14', :title_index => 94, :type => 'double', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Number15', :title_index => 95, :type => 'double', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Number16', :title_index => 96, :type => 'double', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Number17', :title_index => 97, :type => 'double', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Number18', :title_index => 98, :type => 'double', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Number19', :title_index => 99, :type => 'double', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Number20', :title_index => 100, :type => 'double', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Date1', :title_index => 101, :type => 'DateTime', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Date2', :title_index => 102, :type => 'DateTime', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Date3', :title_index => 103, :type => 'DateTime', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Date4', :title_index => 104, :type => 'DateTime', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Date5', :title_index => 105, :type => 'DateTime', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Date6', :title_index => 106, :type => 'DateTime', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Date7', :title_index => 107, :type => 'DateTime', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Date8', :title_index => 108, :type => 'DateTime', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Date9', :title_index => 109, :type => 'DateTime', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Date10', :title_index => 110, :type => 'DateTime', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Flag1', :title_index => 111, :type => 'bool', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Flag2', :title_index => 112, :type => 'bool', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Flag3', :title_index => 113, :type => 'bool', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Flag4', :title_index => 114, :type => 'bool', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Flag5', :title_index => 115, :type => 'bool', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Flag6', :title_index => 116, :type => 'bool', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Flag7', :title_index => 117, :type => 'bool', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Flag8', :title_index => 118, :type => 'bool', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Flag9', :title_index => 119, :type => 'bool', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Flag10', :title_index => 120, :type => 'bool', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Flag11', :title_index => 121, :type => 'bool', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Flag12', :title_index => 122, :type => 'bool', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Flag13', :title_index => 123, :type => 'bool', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Flag14', :title_index => 124, :type => 'bool', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Flag15', :title_index => 125, :type => 'bool', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Flag16', :title_index => 126, :type => 'bool', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Flag17', :title_index => 127, :type => 'bool', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Flag18', :title_index => 128, :type => 'bool', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Flag19', :title_index => 129, :type => 'bool', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'ActualStart', :title_index => 130, :type => 'DateTime', :readonly => false, :is_custom =>false, :enum_items => nil},
    {:name => 'ActualFinish', :title_index => 131, :type => 'DateTime', :readonly => false, :is_custom =>false, :enum_items => nil},
    {:name => 'Milestone', :title_index => 132, :type => 'bool', :readonly => false, :is_custom =>false, :enum_items => nil},
    {:name => 'BaselineCost', :title_index => 133, :type => 'double', :readonly => false, :is_custom =>false, :enum_items => nil},
    {:name => 'Baseline1Cost', :title_index => 134, :type => 'double', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline2Cost', :title_index => 135, :type => 'double', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline3Cost', :title_index => 136, :type => 'double', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline4Cost', :title_index => 137, :type => 'double', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline5Cost', :title_index => 138, :type => 'double', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline6Cost', :title_index => 139, :type => 'double', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline7Cost', :title_index => 140, :type => 'double', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline8Cost', :title_index => 141, :type => 'double', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline9Cost', :title_index => 142, :type => 'double', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline10Cost', :title_index => 143, :type => 'double', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'BaselineBudgetCost', :title_index => 144, :type => 'double', :readonly => false, :is_custom =>false, :enum_items => nil},
    {:name => 'Baseline1BudgetCost', :title_index => 145, :type => 'double', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline2BudgetCost', :title_index => 146, :type => 'double', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline3BudgetCost', :title_index => 147, :type => 'double', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline4BudgetCost', :title_index => 148, :type => 'double', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline5BudgetCost', :title_index => 149, :type => 'double', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline6BudgetCost', :title_index => 150, :type => 'double', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline7BudgetCost', :title_index => 151, :type => 'double', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline8BudgetCost', :title_index => 152, :type => 'double', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline9BudgetCost', :title_index => 153, :type => 'double', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline10BudgetCost', :title_index => 154, :type => 'double', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'BaselineWork', :title_index => 155, :type => 'double', :readonly => false, :is_custom =>false, :enum_items => nil},
    {:name => 'Baseline1Work', :title_index => 156, :type => 'double', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline2Work', :title_index => 157, :type => 'double', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline3Work', :title_index => 158, :type => 'double', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline4Work', :title_index => 159, :type => 'double', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline5Work', :title_index => 160, :type => 'double', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline6Work', :title_index => 161, :type => 'double', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline7Work', :title_index => 162, :type => 'double', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline8Work', :title_index => 163, :type => 'double', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline9Work', :title_index => 164, :type => 'double', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline10Work', :title_index => 165, :type => 'double', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'BaselineBudgetWork', :title_index => 166, :type => 'double', :readonly => false, :is_custom =>false, :enum_items => nil},
    {:name => 'Baseline1BudgetWork', :title_index => 167, :type => 'double', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline2BudgetWork', :title_index => 168, :type => 'double', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline3BudgetWork', :title_index => 169, :type => 'double', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline4BudgetWork', :title_index => 170, :type => 'double', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline5BudgetWork', :title_index => 171, :type => 'double', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline6BudgetWork', :title_index => 172, :type => 'double', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline7BudgetWork', :title_index => 173, :type => 'double', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline8BudgetWork', :title_index => 174, :type => 'double', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline9BudgetWork', :title_index => 175, :type => 'double', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline10BudgetWork', :title_index => 176, :type => 'double', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'BaselineDuration', :title_index => 177, :type => 'int', :readonly => false, :is_custom =>false, :enum_items => nil},
    {:name => 'Baseline1Duration', :title_index => 178, :type => 'int', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline2Duration', :title_index => 179, :type => 'int', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline3Duration', :title_index => 180, :type => 'int', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline4Duration', :title_index => 181, :type => 'int', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline5Duration', :title_index => 182, :type => 'int', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline6Duration', :title_index => 183, :type => 'int', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline7Duration', :title_index => 184, :type => 'int', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline8Duration', :title_index => 185, :type => 'int', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline9Duration', :title_index => 186, :type => 'int', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline10Duration', :title_index => 187, :type => 'int', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'BaselineDurationEstimated', :title_index => 188, :type => 'bool', :readonly => false, :is_custom =>false, :enum_items => nil},
    {:name => 'Baseline1DurationEstimated', :title_index => 189, :type => 'bool', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline2DurationEstimated', :title_index => 190, :type => 'bool', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline3DurationEstimated', :title_index => 191, :type => 'bool', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline4DurationEstimated', :title_index => 192, :type => 'bool', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline5DurationEstimated', :title_index => 193, :type => 'bool', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline6DurationEstimated', :title_index => 194, :type => 'bool', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline7DurationEstimated', :title_index => 195, :type => 'bool', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline8DurationEstimated', :title_index => 196, :type => 'bool', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline9DurationEstimated', :title_index => 197, :type => 'bool', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline10DurationEstimated', :title_index => 198, :type => 'bool', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'BaselineStart', :title_index => 199, :type => 'DateTime', :readonly => false, :is_custom =>false, :enum_items => nil},
    {:name => 'Baseline1Start', :title_index => 200, :type => 'DateTime', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline2Start', :title_index => 201, :type => 'DateTime', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline3Start', :title_index => 202, :type => 'DateTime', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline4Start', :title_index => 203, :type => 'DateTime', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline5Start', :title_index => 204, :type => 'DateTime', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline6Start', :title_index => 205, :type => 'DateTime', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline7Start', :title_index => 206, :type => 'DateTime', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline8Start', :title_index => 207, :type => 'DateTime', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline9Start', :title_index => 208, :type => 'DateTime', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline10Start', :title_index => 209, :type => 'DateTime', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'BaselineFinish', :title_index => 210, :type => 'DateTime', :readonly => false, :is_custom =>false, :enum_items => nil},
    {:name => 'Baseline1Finish', :title_index => 211, :type => 'DateTime', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline2Finish', :title_index => 212, :type => 'DateTime', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline3Finish', :title_index => 213, :type => 'DateTime', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline4Finish', :title_index => 214, :type => 'DateTime', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline5Finish', :title_index => 215, :type => 'DateTime', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline6Finish', :title_index => 216, :type => 'DateTime', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline7Finish', :title_index => 217, :type => 'DateTime', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline8Finish', :title_index => 218, :type => 'DateTime', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline9Finish', :title_index => 219, :type => 'DateTime', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline10Finish', :title_index => 220, :type => 'DateTime', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'BaselineDeliverableStart', :title_index => 221, :type => 'DateTime', :readonly => false, :is_custom =>false, :enum_items => nil},
    {:name => 'Baseline1DeliverableStart', :title_index => 222, :type => 'DateTime', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline2DeliverableStart', :title_index => 223, :type => 'DateTime', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline3DeliverableStart', :title_index => 224, :type => 'DateTime', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline4DeliverableStart', :title_index => 225, :type => 'DateTime', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline5DeliverableStart', :title_index => 226, :type => 'DateTime', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline6DeliverableStart', :title_index => 227, :type => 'DateTime', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline7DeliverableStart', :title_index => 228, :type => 'DateTime', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline8DeliverableStart', :title_index => 229, :type => 'DateTime', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline9DeliverableStart', :title_index => 230, :type => 'DateTime', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline10DeliverableStart', :title_index => 231, :type => 'DateTime', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'BaselineDeliverableFinish', :title_index => 232, :type => 'DateTime', :readonly => false, :is_custom =>false, :enum_items => nil},
    {:name => 'Baseline1DeliverableFinish', :title_index => 233, :type => 'DateTime', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline2DeliverableFinish', :title_index => 234, :type => 'DateTime', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline3DeliverableFinish', :title_index => 235, :type => 'DateTime', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline4DeliverableFinish', :title_index => 236, :type => 'DateTime', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline5DeliverableFinish', :title_index => 237, :type => 'DateTime', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline6DeliverableFinish', :title_index => 238, :type => 'DateTime', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline7DeliverableFinish', :title_index => 239, :type => 'DateTime', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline8DeliverableFinish', :title_index => 240, :type => 'DateTime', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline9DeliverableFinish', :title_index => 241, :type => 'DateTime', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'Baseline10DeliverableFinish', :title_index => 242, :type => 'DateTime', :readonly => false, :is_custom =>true, :enum_items => nil},
    {:name => 'EarlyStart', :title_index => 243, :type => 'DateTime', :readonly => true, :is_custom =>false, :enum_items => nil},
    {:name => 'LateStart', :title_index => 244, :type => 'DateTime', :readonly => true, :is_custom =>false, :enum_items => nil},
    {:name => 'EarlyFinish', :title_index => 245, :type => 'DateTime', :readonly => true, :is_custom =>false, :enum_items => nil},
    {:name => 'LateFinish', :title_index => 246, :type => 'DateTime', :readonly => true, :is_custom =>false, :enum_items => nil},
    {:name => 'PercentComplete', :title_index => 247, :type => 'short', :readonly => false, :is_custom =>false, :enum_items => nil},
    {:name => 'CV', :title_index => 248, :type => 'double', :readonly => true, :is_custom =>false, :enum_items => nil},
    {:name => 'CVPercent', :title_index => 249, :type => 'short', :readonly => true, :is_custom =>false, :enum_items => nil},
    {:name => 'CPI', :title_index => 250, :type => 'double', :readonly => true, :is_custom =>false, :enum_items => nil},
    {:name => 'ACWP', :title_index => 251, :type => 'double', :readonly => true, :is_custom =>false, :enum_items => nil},
    {:name => 'BCWP', :title_index => 252, :type => 'double', :readonly => true, :is_custom =>false, :enum_items => nil},
    {:name => 'BCWS', :title_index => 253, :type => 'double', :readonly => true, :is_custom =>false, :enum_items => nil},
    {:name => 'EAC', :title_index => 254, :type => 'double', :readonly => true, :is_custom =>false, :enum_items => nil},
    {:name => 'SPI', :title_index => 255, :type => 'double', :readonly => true, :is_custom =>false, :enum_items => nil},
    {:name => 'SV', :title_index => 256, :type => 'double', :readonly => true, :is_custom =>false, :enum_items => nil},
    {:name => 'SVPercent', :title_index => 257, :type => 'short', :readonly => true, :is_custom =>false, :enum_items => nil},
    {:name => 'TCPI', :title_index => 258, :type => 'double', :readonly => true, :is_custom =>false, :enum_items => nil},
    {:name => 'VAC', :title_index => 259, :type => 'double', :readonly => true, :is_custom =>false, :enum_items => nil},
    {:name => 'WBSPredecessors', :title_index => 260, :type => 'string', :readonly => true, :is_custom =>false, :enum_items => nil},
    {:name => 'WBSSuccessors', :title_index => 261, :type => 'string', :readonly => true, :is_custom =>false, :enum_items => nil},
    {:name => 'ActualCost', :title_index => 262, :type => 'double', :readonly => true, :is_custom =>false, :enum_items => nil},
    {:name => 'Deadline', :title_index => 263, :type => 'DateTime', :readonly => false, :is_custom =>false, :enum_items => nil},
    {:name => 'Manual', :title_index => 264, :type => 'bool', :readonly => false, :is_custom =>false, :enum_items => nil},
    {:name => 'Type', :title_index => 265, :type => 'enum', :readonly => false, :is_custom =>false, :enum_items => ['Fixed Units', 'Fixed Duration', 'Fixed Work']},
    {:name => 'ConstraintType', :title_index => 266, :type => 'enum', :readonly => false, :is_custom =>false, :enum_items => ['As Soon As Possible', 'As Late As Possible', 'Must Start On', 'Must Finish On', 'Start Not Earlier Than', 'Start Not Later Than', 'Finish Not Earlier Than', 'Finish Not Later Than']},
    {:name => 'ConstraintDate', :title_index => 267, :type => 'DateTime', :readonly => false, :is_custom =>false, :enum_items => nil}
  ]

  def available_client_versions
    ["1.0"]
  end

  def must_load_columns
    [:subject, :start_date, :due_date, :assigned_to, :tracker, :status, :priority]
  end

  def render_query_columns_selection_for_msp(query, options = {})
    tag_name = (options[:name] || 'c') + '[]'
    render :partial => 'queries/columns_msp', :locals => { :query => query, :tag_name => tag_name }
  end

  def msc_columns_mapping_settings
    user_settings =  Setting["plugin_microsoft_project_connector"]['mpc_columns_mapping'] || []

    user_settings << Hash['redmine' => 'id', 'msp' => 'Number1']
    user_settings << Hash['redmine' => 'subject', 'msp' => 'Name']
    user_settings << Hash['redmine' => 'assigned_to', 'msp' => 'ResourceNames']
    user_settings << Hash['redmine' => 'start_date', 'msp' => 'Start']
    user_settings << Hash['redmine' => 'due_date', 'msp' => 'Finish']
    user_settings << Hash['redmine' => 'tracker', 'msp' => 'Text1']
    user_settings << Hash['redmine' => 'status', 'msp' => 'Text2']
    user_settings << Hash['redmine' => 'priority', 'msp' => 'Text3']
    user_settings << Hash['redmine' => 'description', 'msp' => 'Notes']
    user_settings << Hash['redmine' => 'done_ratio', 'msp' => 'PercentComplete']
    user_settings << Hash['redmine' => 'estimated_hours', 'msp' => 'Duration']

    repeat_msp_fields = []

    user_settings = user_settings.select do |mapping|
      unless mapping['msp'].blank?
        unless repeat_msp_fields.include? mapping['msp']
          repeat_msp_fields << mapping['msp']
          next true
        end
      end

      next false
    end

    repeat_redmine_fields = []
    user_settings = user_settings.select do |mapping|
      unless mapping['redmine'].blank?
        unless repeat_redmine_fields.include? mapping['redmine']
          repeat_redmine_fields << mapping['redmine']
          next true
        end
      end

      next false
    end

    user_settings
  end

  def mapping_column_names
    return @mapping_column_names if @mapping_column_names
    @mapping_column_names = []
    msc_columns_mapping_settings.each do |mapping|
      @mapping_column_names.append mapping['redmine'].to_sym if !mapping['redmine'].blank? && !mapping['msp'].blank?
    end
    @mapping_column_names
  end

  @@usedSym = ({:value => true}.delete('value') == true)

  def mapping_column_names_mapping
    return @mapping_column_names_mapping if @mapping_column_names_mapping
    @mapping_column_names_mapping = {}
    msp_names = @@msp_fields.map { |mf| mf[:name] }
    msp_titles = l(:task_column_titles).split('||')
    msc_columns_mapping_settings.each do |mapping|
      @mapping_column_names_mapping[mapping['redmine'].to_sym] = msp_titles[msp_names.index(mapping['msp'])] if !mapping['redmine'].blank? && !mapping['msp'].blank?
    end
    @mapping_column_names_mapping
  end

  def available_mapped_columns(query)
    must_load_columns_val = must_load_columns

    selected_names = (query.column_names or []).collect {|name| name.to_sym}
    selected_names = selected_names.concat(must_load_columns_val)

    result = query.available_columns.select { |column| ![:id, :project, :parent, :attachments].include?(column.name) && mapping_column_names_mapping[column.name] }.collect { |column| ["#{column.caption} -> #{mapping_column_names_mapping[column.name]}", column.name, selected_names.include?(column.name), must_load_columns_val.include?(column.name)] }

    selected = result.select { |c| c[2] }
    others = result.select { |c| !c[2] }

    selected.concat(others)
  end

  def available_msp_fields()
    @@msp_fields
  end

  def available_redmine_columns()
    query = IssueQuery.new
    columns = query.available_columns.reject(&:frozen?).select { |column| ![:project, :parent, :attachments].include? column.name }.collect { |column| [column.caption, column.name, column] }

    custom_fields = CustomField.all().to_ary()

    default_tracker = nil
    all_statuses = IssueStatus.all().to_ary

    columns = columns.map do |c|
      name = c[1].to_s
      label = c[0]
      if name.start_with? 'cf_'
        cfId = name[3..-1].to_i
        cf = custom_fields.find { |cf| cf.id == cfId }
        unless cf.nil?
          result = { :id => cf.id, :name => "cf_#{cf.id}", :label => cf.name, :field_format => cf.field_format, :default_value => cf.default_value, :cf_field_format => cf.field_format
          }
          if cf.field_format == 'enumeration'
            result[:possible_values] = cf.enumerations.map { |v| v.name }
            result[:field_format] = 'string'
          elsif cf.field_format == 'user' || cf.field_format == 'version'
            result[:possible_values] = cf.possible_values_options(@project).map { |v| v[0] } if @project
            result[:field_format] = 'string'
          elsif cf.possible_values && !cf.possible_values.blank?
            result[:possible_values] = cf.possible_values
            result[:field_format] = 'string'
          end
        else
          result = nil
        end

        result
      else
        possible_values = nil
        default_value = nil

        case name
        when 'assigned_to'
          if @project
            project_members = @project.members;
            possible_values = project_members.map { |u| u.name } if @project
            if @project.respond_to? 'default_assigned_to_id'
              default_assigned_to_id = @project.default_assigned_to_id
              if default_assigned_to_id
                default_assigned_to = project_members.find { |u| u.user_id == default_assigned_to_id }

                default_value = default_assigned_to.name if default_assigned_to
              end
            end
          end
        when 'tracker'
          if @project
            all_trackers = find_project_trackers
            possible_values = all_trackers.map { |t| t.name }
            if all_trackers.length > 0
              default_tracker = all_trackers[0]
              default_value = default_tracker.name
            end
          end
        when 'fixed_version'
          if @project
            shared_versions = @project.shared_versions
            possible_values = shared_versions.map { |v| v.name } if @project
            if @project.respond_to? 'default_version_id'
              default_version_id = @project.default_version_id
              if default_version_id && shared_versions && shared_versions.length > 0
                default_version = shared_versions.find { |v| v.id == default_version_id }

                default_value = default_version.name if default_version
              end
            end
          end
        when 'status'
          possible_values = all_statuses.map { |v| v.name }
        when 'priority'
          active_priorities = IssuePriority.active
          possible_values = active_priorities.map { |v| v.name }
          if active_priorities.length > 0
            active_priority = active_priorities.find { |p| p.is_default }
            default_value = active_priority.name if active_priority
          end
        when 'category'
          if @project
            possible_values = @project.issue_categories.map { |v| v.name } if @project
          end
        else
        end

        { :id => nil, :name => name, :label => label, :possible_values => possible_values, :field_format => possible_values ? 'string' : @@field_formats[name.to_sym], :read_only => @@readonly_fields.include?(c), :default_value => default_value }
      end
    end

    columns = columns.select { |c| !c.nil? }

    columns.unshift :id => nil, :name => 'id', :label => '#', :field_format => 'int', :read_only => false

    columns_mapping = msc_columns_mapping_settings

    columns.each do |column|
      msp_mapping = columns_mapping.find { |m| m['redmine'] == column[:name] }
      column[:msp_field] = msp_mapping['msp'] if msp_mapping

      if column[:name] == 'status' && default_tracker
        default_status_id = default_tracker.default_status_id
        if default_status_id
          default_status = all_statuses.find { |s| s.id == default_status_id }
          column[:default_value] = default_status.name if default_status
        end
      end
    end

    columns
  end

  def parse_msp_field_value(field_name, value, issue_data)
    set_field_name = nil
    set_value = nil

    case field_name
    when 'assigned_to'
      user = (@_project_members ||= @project.members).find { |u| u.name == value }
      set_field_name = 'assigned_to_id'
      set_value = user ? user.user_id : nil
    when 'tracker'
      tracker = (@_project_trackers ||= @project.trackers).find { |t| t.name == value }

      set_field_name = 'tracker_id'
      set_value = tracker ? tracker.id : nil
    when 'fixed_version'
      version = (@_all_fixed_versions ||= @project.shared_versions).find { |v| v.name == value }

      set_field_name = 'fixed_version_id'
      set_value = version ? version.id : nil
    when 'status'
      status = (@_all_issue_status ||= IssueStatus.all()).find { |v| v.name == value }

      set_field_name = 'status_id'
      set_value = status ? status.id : nil
    when 'priority'
      priority = (@_active_priorities ||= IssuePriority.active).find { |v| v.name == value }

      set_field_name = 'priority_id'
      set_value = priority ? priority.id : nil
    when 'category'
      category = (@_project_categories ||= @project.issue_categories).find { |v| v.name == value }

      set_field_name = 'category_id'
      set_value = category ? category.id : nil
    else
      unless ['line_no', 'guid', 'parent_guid'].include? field_name
        set_field_name = field_name
        set_value = value
      end
    end

    if set_field_name
      if @@usedSym
        issue_data[set_field_name.to_sym] = set_value
      else
        issue_data[set_field_name] = set_value 
      end
    end
  end

  def parse_msp_custom_field_value(field_id, value, all_custom_fields, cache)
    cf = all_custom_fields.find { |cf| cf.id == field_id }
    unless cf.nil?
      case cf.field_format
      when 'enumeration'
        enum = (cache["cf_possible_values_#{field_id}".to_sym] ||= cf.enumerations).find { |v| v.name == value }
        if enum
          return enum.id
        else
          index = value.to_i
          if index > 0
            enum = cache["cf_possible_values_#{field_id}".to_sym][index]
            if enum
              return enum.id
            end
          end
        end
      when 'user', 'version'
        possible_values = (cache["cf_possible_values_#{field_id}".to_sym] ||= cf.possible_values_options(@project)).find { |v| v[0] == value }
        return possible_values[1] if possible_values
      when 'list'
        pv = (cache["cf_possible_values_#{field_id}".to_sym] ||= cf.possible_values).find { |v| v == value }
        if pv
          return pv
        else
          index = value.to_i
          if index > 0
            pv = cache["cf_possible_values_#{field_id}".to_sym][index]
            if pv
              return pv
            end
          end
        end
      end
    end

    value
  end

  def relation_short_type_str(relation)
    case relation.relation_type
    when IssueRelation::TYPE_FINISH_FINISH
      'FF'
    when IssueRelation::TYPE_FINISH_START
      'FS'
    when IssueRelation::TYPE_START_START
      'SS'
    when IssueRelation::TYPE_START_FINISH
      'SF'
    end
  end

  def relation_short_type_to_type(short_type)
    case short_type
    when 'FF'
      IssueRelation::TYPE_FINISH_FINISH
    when 'FS'
      IssueRelation::TYPE_FINISH_START
    when 'SS'
      IssueRelation::TYPE_START_START
    when 'SF'
      IssueRelation::TYPE_START_FINISH
    end
  end

  def save_relation(from_id, to_id, short_type, delay)
    type = relation_short_type_to_type(short_type)
    relation = IssueRelation.where(:issue_from_id => from_id, :issue_to_id => to_id, :relation_type => [IssueRelation::TYPE_FINISH_FINISH, IssueRelation::TYPE_FINISH_START, IssueRelation::TYPE_START_START, IssueRelation::TYPE_START_FINISH]).first
    return if relation && relation.delay == delay && relation.relation_type == type

    if relation
      relation.delay = delay
      relation.relation_type = type

      relation.save
    else
      relation = IssueRelation.new
      relation.issue_from_id = from_id
      relation.issue_to_id = to_id
      relation.relation_type = type
      relation.delay = delay

      relation.save
    end

    relation
  end

  def remove_relations(to_id, exclude_from_ids)
    if exclude_from_ids.empty?
      exclude_from_ids.append(0)
    end
    IssueRelation.where("issue_to_id = ? and issue_from_id not in (?) and relation_type in (?)", to_id, exclude_from_ids, [IssueRelation::TYPE_FINISH_FINISH, IssueRelation::TYPE_FINISH_START, IssueRelation::TYPE_START_START, IssueRelation::TYPE_START_FINISH]).delete_all
  end

  def retrieve_msp_query(use_session=true, options={})
    klass=MicrosoftProjectConnectorQuery
    session_key = klass.name.underscore.to_sym

    if params[:query_id].present?
      cond = "project_id IS NULL"
      cond << " OR project_id = #{@project.id}" if @project
      @query = klass.where(cond).find(params[:query_id])

      raise ::Unauthorized unless @query.visible?
      @query.project = @project
      session[session_key] = {:id => @query.id, :project_id => @query.project_id} if use_session
    elsif api_request? || params[:set_filter] || !use_session || session[session_key].nil? || session[session_key][:project_id] != (@project ? @project.id : nil)
      # Give it a name, required to be valid
      @query = klass.new(:name => "_", :project => @project)
      @query.build_from_params(params)
      session[session_key] = {:project_id => @query.project_id, :filters => @query.filters, :group_by => @query.group_by, :column_names => (@query.column_names or []), :sort => @query.sort_criteria.to_a} if use_session
    else
      # retrieve from session
      @query = nil
      @query = klass.find_by_id(session[session_key][:id]) if session[session_key][:id]
      @query ||= klass.new(:name => "_", :filters => session[session_key][:filters], :group_by => session[session_key][:group_by], :column_names => session[session_key][:column_names], :sort_criteria => session[session_key][:sort])
      @query.project = @project
    end

    if Redmine::VERSION::MAJOR < 4
      sort_params = params[:sort] || params[:sort_criteria]
      @query.sort_criteria_fixed = sort_params if sort_params
    end
    
    if params[:sort].present?
      if use_session
        session[session_key] ||= {}
        session[session_key][:sort] = @query.sort_criteria.to_a
      end
    end
    @query
  end

  def find_project_trackers
    if Issue.respond_to? 'allowed_target_trackers'
      Issue.allowed_target_trackers(@project)
    else
      @project.trackers
    end
  end

  def find_project_members(project)
    project.members.map{|m| {:id => m.user_id, :name => m.name, :email => m.user.mail, :group => m.user.groups.empty? ? nil : m.user.groups[0].name}}
  end
end
