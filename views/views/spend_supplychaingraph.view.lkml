view: spend_supplychaingraph {
  sql_table_name: `BillingExport.spend_supplychaingraph` ;;

  dimension: cost {
    type: number
    sql: ${TABLE}.cost ;;
  }
  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: service {
    type: string
    sql: ${TABLE}.service ;;
  }
  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }
  measure: count {
    type: count
    drill_fields: [name]
  }
  measure: totalcost {
    type: sum
    sql: ${TABLE}.cost ;;
    }

}
