#connection: "@{MULTICLOUD_DASHBOARD_CONNECTION}"
connection: "bq_argolis"


include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
include: "/dashboards/*"
explore: cloud { hidden: yes }
