# Microsoft Project Connector

A Redmine Plugin to Work with MS Project Plugin [Redmine Connector](https://conveniencable.com/download). It's not a mpp/xml import/export tools but more powerful and convenient than all the import/export tools. You can filter, load, add, edit, delete tasks as issues in MS Project directly.

Key features:
1. You can load/merge tasks from redmine and save tasks to redmine by one-click.
2. Parent/Subtask and Relation(FS/FF/SF/SS) is saved automatically.
3. You can almost mapping all the standard and custom fields between Microsoft Project and Redmine. The Redmine project members is auto loading to Microsoft Project as resources. For redmine selectable fields, it will auto create selectable dropdown in Microsoft Project's mapped fields.
4. When a task is deleted, you can decide whether delete the issue. 
5. It's smart: Default values is filled when a task is create, Only the changed tasks are saved.


## Screenshot

!https://conveniencable.github.io/images/redmine_setting.jpg!
!https://conveniencable.github.io/images/load_issues.jpg!
!https://conveniencable.github.io/images/issues_relations_and_subtasks.jpg!


## Installation

From your Redmine plugins directory, clone this repository as `microsoft_project_connector`:

    git clone https://github.com/conveniencable/microsoft_project_connector.git microsoft_project_connector

Restart Redmine, and you should see the plugin show up in the Plugins page.


## Custom fields mapping

Under the plugin configuration options, you can set field mappings between Redmine and Microsoft Project:
![RedmineSetting](https://conveniencable.github.io/images/redmine_setting.jpg)

## Microsoft Project to Redmine bi-directional synchronization, Relations and Subtasks are supported
![LoadIssues](https://conveniencable.github.io/images/load_issues.jpg)
![RelationsAndSubTasks](https://conveniencable.github.io/images/issues_relations_and_subtasks.jpg)


## Microsoft Project Plugin Redmine Connector Download
[X64](https://conveniencable.github.io/downloads/redmine_connector_x64.exe)
[X32](https://conveniencable.github.io/downloads/redmine_connector_x86.exe)

