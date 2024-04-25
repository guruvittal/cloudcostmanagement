connection: "bq_argolis"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: costmgmt_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: costmgmt_default_datagroup

explore: argolis_filtered_view {}

explore: billboard {
    join: billboard__tags {
      view_label: "Billboard: Tags"
      sql: LEFT JOIN UNNEST(${billboard.tags}) as billboard__tags ;;
      relationship: one_to_many
    }
    join: billboard__labels {
      view_label: "Billboard: Labels"
      sql: LEFT JOIN UNNEST(${billboard.labels}) as billboard__labels ;;
      relationship: one_to_many
    }
    join: billboard__credits {
      view_label: "Billboard: Credits"
      sql: LEFT JOIN UNNEST(${billboard.credits}) as billboard__credits ;;
      relationship: one_to_many
    }
    join: billboard__system_labels {
      view_label: "Billboard: System Labels"
      sql: LEFT JOIN UNNEST(${billboard.system_labels}) as billboard__system_labels ;;
      relationship: one_to_many
    }
    join: billboard__project__labels {
      view_label: "Billboard: Project Labels"
      sql: LEFT JOIN UNNEST(${billboard.project__labels}) as billboard__project__labels ;;
      relationship: one_to_many
    }
    join: billboard__project__ancestors {
      view_label: "Billboard: Project Ancestors"
      sql: LEFT JOIN UNNEST(${billboard.project__ancestors}) as billboard__project__ancestors ;;
      relationship: one_to_many
    }
}

explore: supply_chain_graph_filtered_view_aggregate {
    join: supply_chain_graph_filtered_view_aggregate__tags {
      view_label: "Supply Chain Graph Filtered View Aggregate: Tags"
      sql: LEFT JOIN UNNEST(${supply_chain_graph_filtered_view_aggregate.tags}) as supply_chain_graph_filtered_view_aggregate__tags ;;
      relationship: one_to_many
    }
    join: supply_chain_graph_filtered_view_aggregate__labels {
      view_label: "Supply Chain Graph Filtered View Aggregate: Labels"
      sql: LEFT JOIN UNNEST(${supply_chain_graph_filtered_view_aggregate.labels}) as supply_chain_graph_filtered_view_aggregate__labels ;;
      relationship: one_to_many
    }
    join: supply_chain_graph_filtered_view_aggregate__credits {
      view_label: "Supply Chain Graph Filtered View Aggregate: Credits"
      sql: LEFT JOIN UNNEST(${supply_chain_graph_filtered_view_aggregate.credits}) as supply_chain_graph_filtered_view_aggregate__credits ;;
      relationship: one_to_many
    }
    join: supply_chain_graph_filtered_view_aggregate__system_labels {
      view_label: "Supply Chain Graph Filtered View Aggregate: System Labels"
      sql: LEFT JOIN UNNEST(${supply_chain_graph_filtered_view_aggregate.system_labels}) as supply_chain_graph_filtered_view_aggregate__system_labels ;;
      relationship: one_to_many
    }
    join: supply_chain_graph_filtered_view_aggregate__project__labels {
      view_label: "Supply Chain Graph Filtered View Aggregate: Project Labels"
      sql: LEFT JOIN UNNEST(${supply_chain_graph_filtered_view_aggregate.project__labels}) as supply_chain_graph_filtered_view_aggregate__project__labels ;;
      relationship: one_to_many
    }
    join: supply_chain_graph_filtered_view_aggregate__project__ancestors {
      view_label: "Supply Chain Graph Filtered View Aggregate: Project Ancestors"
      sql: LEFT JOIN UNNEST(${supply_chain_graph_filtered_view_aggregate.project__ancestors}) as supply_chain_graph_filtered_view_aggregate__project__ancestors ;;
      relationship: one_to_many
    }
}

explore: supply_chain_graph_filtered_view_resource {
    join: supply_chain_graph_filtered_view_resource__tags {
      view_label: "Supply Chain Graph Filtered View Resource: Tags"
      sql: LEFT JOIN UNNEST(${supply_chain_graph_filtered_view_resource.tags}) as supply_chain_graph_filtered_view_resource__tags ;;
      relationship: one_to_many
    }
    join: supply_chain_graph_filtered_view_resource__labels {
      view_label: "Supply Chain Graph Filtered View Resource: Labels"
      sql: LEFT JOIN UNNEST(${supply_chain_graph_filtered_view_resource.labels}) as supply_chain_graph_filtered_view_resource__labels ;;
      relationship: one_to_many
    }
    join: supply_chain_graph_filtered_view_resource__credits {
      view_label: "Supply Chain Graph Filtered View Resource: Credits"
      sql: LEFT JOIN UNNEST(${supply_chain_graph_filtered_view_resource.credits}) as supply_chain_graph_filtered_view_resource__credits ;;
      relationship: one_to_many
    }
    join: supply_chain_graph_filtered_view_resource__system_labels {
      view_label: "Supply Chain Graph Filtered View Resource: System Labels"
      sql: LEFT JOIN UNNEST(${supply_chain_graph_filtered_view_resource.system_labels}) as supply_chain_graph_filtered_view_resource__system_labels ;;
      relationship: one_to_many
    }
    join: supply_chain_graph_filtered_view_resource__project__labels {
      view_label: "Supply Chain Graph Filtered View Resource: Project Labels"
      sql: LEFT JOIN UNNEST(${supply_chain_graph_filtered_view_resource.project__labels}) as supply_chain_graph_filtered_view_resource__project__labels ;;
      relationship: one_to_many
    }
    join: supply_chain_graph_filtered_view_resource__project__ancestors {
      view_label: "Supply Chain Graph Filtered View Resource: Project Ancestors"
      sql: LEFT JOIN UNNEST(${supply_chain_graph_filtered_view_resource.project__ancestors}) as supply_chain_graph_filtered_view_resource__project__ancestors ;;
      relationship: one_to_many
    }
}

explore: supply_chain_graph_filtered_view_insights {
    join: supply_chain_graph_filtered_view_insights__target_resources {
      view_label: "Supply Chain Graph Filtered View Insights: Target Resources"
      sql: LEFT JOIN UNNEST(${supply_chain_graph_filtered_view_insights.target_resources}) as supply_chain_graph_filtered_view_insights__target_resources ;;
      relationship: one_to_many
    }
    join: supply_chain_graph_filtered_view_insights__ancestors__folder_ids {
      view_label: "Supply Chain Graph Filtered View Insights: Ancestors Folder Ids"
      sql: LEFT JOIN UNNEST(${supply_chain_graph_filtered_view_insights.ancestors__folder_ids}) as supply_chain_graph_filtered_view_insights__ancestors__folder_ids ;;
      relationship: one_to_many
    }
    join: supply_chain_graph_filtered_view_insights__associated_recommendations {
      view_label: "Supply Chain Graph Filtered View Insights: Associated Recommendations"
      sql: LEFT JOIN UNNEST(${supply_chain_graph_filtered_view_insights.associated_recommendations}) as supply_chain_graph_filtered_view_insights__associated_recommendations ;;
      relationship: one_to_many
    }
}

explore: gcp_billing_export_v1_014_a57_458_dec_0_c54_b5 {
    join: gcp_billing_export_v1_014_a57_458_dec_0_c54_b5__tags {
      view_label: "Gcp Billing Export V1 014 A57 458 Dec 0 C54 B5: Tags"
      sql: LEFT JOIN UNNEST(${gcp_billing_export_v1_014_a57_458_dec_0_c54_b5.tags}) as gcp_billing_export_v1_014_a57_458_dec_0_c54_b5__tags ;;
      relationship: one_to_many
    }
    join: gcp_billing_export_v1_014_a57_458_dec_0_c54_b5__labels {
      view_label: "Gcp Billing Export V1 014 A57 458 Dec 0 C54 B5: Labels"
      sql: LEFT JOIN UNNEST(${gcp_billing_export_v1_014_a57_458_dec_0_c54_b5.labels}) as gcp_billing_export_v1_014_a57_458_dec_0_c54_b5__labels ;;
      relationship: one_to_many
    }
    join: gcp_billing_export_v1_014_a57_458_dec_0_c54_b5__credits {
      view_label: "Gcp Billing Export V1 014 A57 458 Dec 0 C54 B5: Credits"
      sql: LEFT JOIN UNNEST(${gcp_billing_export_v1_014_a57_458_dec_0_c54_b5.credits}) as gcp_billing_export_v1_014_a57_458_dec_0_c54_b5__credits ;;
      relationship: one_to_many
    }
    join: gcp_billing_export_v1_014_a57_458_dec_0_c54_b5__system_labels {
      view_label: "Gcp Billing Export V1 014 A57 458 Dec 0 C54 B5: System Labels"
      sql: LEFT JOIN UNNEST(${gcp_billing_export_v1_014_a57_458_dec_0_c54_b5.system_labels}) as gcp_billing_export_v1_014_a57_458_dec_0_c54_b5__system_labels ;;
      relationship: one_to_many
    }
    join: gcp_billing_export_v1_014_a57_458_dec_0_c54_b5__project__labels {
      view_label: "Gcp Billing Export V1 014 A57 458 Dec 0 C54 B5: Project Labels"
      sql: LEFT JOIN UNNEST(${gcp_billing_export_v1_014_a57_458_dec_0_c54_b5.project__labels}) as gcp_billing_export_v1_014_a57_458_dec_0_c54_b5__project__labels ;;
      relationship: one_to_many
    }
    join: gcp_billing_export_v1_014_a57_458_dec_0_c54_b5__project__ancestors {
      view_label: "Gcp Billing Export V1 014 A57 458 Dec 0 C54 B5: Project Ancestors"
      sql: LEFT JOIN UNNEST(${gcp_billing_export_v1_014_a57_458_dec_0_c54_b5.project__ancestors}) as gcp_billing_export_v1_014_a57_458_dec_0_c54_b5__project__ancestors ;;
      relationship: one_to_many
    }
}

explore: gcp_billing_export_resource_v1_014_a57_458_dec_0_c54_b5 {
    join: gcp_billing_export_resource_v1_014_a57_458_dec_0_c54_b5__tags {
      view_label: "Gcp Billing Export Resource V1 014 A57 458 Dec 0 C54 B5: Tags"
      sql: LEFT JOIN UNNEST(${gcp_billing_export_resource_v1_014_a57_458_dec_0_c54_b5.tags}) as gcp_billing_export_resource_v1_014_a57_458_dec_0_c54_b5__tags ;;
      relationship: one_to_many
    }
    join: gcp_billing_export_resource_v1_014_a57_458_dec_0_c54_b5__labels {
      view_label: "Gcp Billing Export Resource V1 014 A57 458 Dec 0 C54 B5: Labels"
      sql: LEFT JOIN UNNEST(${gcp_billing_export_resource_v1_014_a57_458_dec_0_c54_b5.labels}) as gcp_billing_export_resource_v1_014_a57_458_dec_0_c54_b5__labels ;;
      relationship: one_to_many
    }
    join: gcp_billing_export_resource_v1_014_a57_458_dec_0_c54_b5__credits {
      view_label: "Gcp Billing Export Resource V1 014 A57 458 Dec 0 C54 B5: Credits"
      sql: LEFT JOIN UNNEST(${gcp_billing_export_resource_v1_014_a57_458_dec_0_c54_b5.credits}) as gcp_billing_export_resource_v1_014_a57_458_dec_0_c54_b5__credits ;;
      relationship: one_to_many
    }
    join: gcp_billing_export_resource_v1_014_a57_458_dec_0_c54_b5__system_labels {
      view_label: "Gcp Billing Export Resource V1 014 A57 458 Dec 0 C54 B5: System Labels"
      sql: LEFT JOIN UNNEST(${gcp_billing_export_resource_v1_014_a57_458_dec_0_c54_b5.system_labels}) as gcp_billing_export_resource_v1_014_a57_458_dec_0_c54_b5__system_labels ;;
      relationship: one_to_many
    }
    join: gcp_billing_export_resource_v1_014_a57_458_dec_0_c54_b5__project__labels {
      view_label: "Gcp Billing Export Resource V1 014 A57 458 Dec 0 C54 B5: Project Labels"
      sql: LEFT JOIN UNNEST(${gcp_billing_export_resource_v1_014_a57_458_dec_0_c54_b5.project__labels}) as gcp_billing_export_resource_v1_014_a57_458_dec_0_c54_b5__project__labels ;;
      relationship: one_to_many
    }
    join: gcp_billing_export_resource_v1_014_a57_458_dec_0_c54_b5__project__ancestors {
      view_label: "Gcp Billing Export Resource V1 014 A57 458 Dec 0 C54 B5: Project Ancestors"
      sql: LEFT JOIN UNNEST(${gcp_billing_export_resource_v1_014_a57_458_dec_0_c54_b5.project__ancestors}) as gcp_billing_export_resource_v1_014_a57_458_dec_0_c54_b5__project__ancestors ;;
      relationship: one_to_many
    }
}

explore: cloud_pricing_export {
    join: cloud_pricing_export__product_taxonomy {
      view_label: "Cloud Pricing Export: Product Taxonomy"
      sql: LEFT JOIN UNNEST(${cloud_pricing_export.product_taxonomy}) as cloud_pricing_export__product_taxonomy ;;
      relationship: one_to_many
    }
    join: cloud_pricing_export__geo_taxonomy__regions {
      view_label: "Cloud Pricing Export: Geo Taxonomy Regions"
      sql: LEFT JOIN UNNEST(${cloud_pricing_export.geo_taxonomy__regions}) as cloud_pricing_export__geo_taxonomy__regions ;;
      relationship: one_to_many
    }
    join: cloud_pricing_export__list_price__tiered_rates {
      view_label: "Cloud Pricing Export: List Price Tiered Rates"
      sql: LEFT JOIN UNNEST(${cloud_pricing_export.list_price__tiered_rates}) as cloud_pricing_export__list_price__tiered_rates ;;
      relationship: one_to_many
    }
    join: cloud_pricing_export__sku__destination_migration_mappings {
      view_label: "Cloud Pricing Export: Sku Destination Migration Mappings"
      sql: LEFT JOIN UNNEST(${cloud_pricing_export.sku__destination_migration_mappings}) as cloud_pricing_export__sku__destination_migration_mappings ;;
      relationship: one_to_many
    }
    join: cloud_pricing_export__billing_account_price__tiered_rates {
      view_label: "Cloud Pricing Export: Billing Account Price Tiered Rates"
      sql: LEFT JOIN UNNEST(${cloud_pricing_export.billing_account_price__tiered_rates}) as cloud_pricing_export__billing_account_price__tiered_rates ;;
      relationship: one_to_many
    }
}

explore: spend_allprojs {}

explore: spend_supplychaingraph {}

explore: insights_export {
    join: insights_export__target_resources {
      view_label: "Insights Export: Target Resources"
      sql: LEFT JOIN UNNEST(${insights_export.target_resources}) as insights_export__target_resources ;;
      relationship: one_to_many
    }
    join: insights_export__ancestors__folder_ids {
      view_label: "Insights Export: Ancestors Folder Ids"
      sql: LEFT JOIN UNNEST(${insights_export.ancestors__folder_ids}) as insights_export__ancestors__folder_ids ;;
      relationship: one_to_many
    }
    join: insights_export__associated_recommendations {
      view_label: "Insights Export: Associated Recommendations"
      sql: LEFT JOIN UNNEST(${insights_export.associated_recommendations}) as insights_export__associated_recommendations ;;
      relationship: one_to_many
    }
}

