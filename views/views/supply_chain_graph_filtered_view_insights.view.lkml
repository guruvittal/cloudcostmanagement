view: supply_chain_graph_filtered_view_insights {
  sql_table_name: `BillingExport.SupplyChainGraphFilteredView_Insights` ;;

  dimension: ancestors__folder_ids {
    hidden: yes
    sql: ${TABLE}.ancestors.folder_ids ;;
    group_label: "Ancestors"
    group_item_label: "Folder Ids"
  }
  dimension: ancestors__organization_id {
    type: string
    sql: ${TABLE}.ancestors.organization_id ;;
    group_label: "Ancestors"
    group_item_label: "Organization ID"
  }
  dimension: associated_recommendations {
    hidden: yes
    sql: ${TABLE}.associated_recommendations ;;
  }
  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }
  dimension: cloud_entity_id {
    type: string
    sql: ${TABLE}.cloud_entity_id ;;
  }
  dimension: cloud_entity_type {
    type: string
    sql: ${TABLE}.cloud_entity_type ;;
  }
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }
  dimension: insight_details {
    type: string
    sql: ${TABLE}.insight_details ;;
  }
  dimension: insight_subtype {
    type: string
    sql: ${TABLE}.insight_subtype ;;
  }
  dimension: insight_type {
    type: string
    sql: ${TABLE}.insight_type ;;
  }
  dimension_group: last_refresh {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.last_refresh_time ;;
  }
  dimension: location {
    type: string
    sql: ${TABLE}.location ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: severity {
    type: string
    sql: ${TABLE}.severity ;;
  }
  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }
  dimension: target_resources {
    hidden: yes
    sql: ${TABLE}.target_resources ;;
  }
  measure: count {
    type: count
    drill_fields: [name]
  }
}

view: supply_chain_graph_filtered_view_insights__target_resources {

  dimension: supply_chain_graph_filtered_view_insights__target_resources {
    type: string
    sql: supply_chain_graph_filtered_view_insights__target_resources ;;
  }
}

view: supply_chain_graph_filtered_view_insights__ancestors__folder_ids {

  dimension: supply_chain_graph_filtered_view_insights__ancestors__folder_ids {
    type: string
    sql: supply_chain_graph_filtered_view_insights__ancestors__folder_ids ;;
  }
}

view: supply_chain_graph_filtered_view_insights__associated_recommendations {

  dimension: supply_chain_graph_filtered_view_insights__associated_recommendations {
    type: string
    sql: supply_chain_graph_filtered_view_insights__associated_recommendations ;;
  }
}
