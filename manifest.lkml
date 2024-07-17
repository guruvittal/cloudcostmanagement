project_name: "multicloud_billing_dashboard"

constant: MULTICLOUD_DASHBOARD_CONNECTION {
  export: override_required
  value: "mw-alpha-cloud-usage"
}

application: explore_assistant {
  label: "Explore Assistant (thelook/spend_supplychaingraph)"
  url: "https://localhost:8888/bundle.js"
  #file: "bundle.js"
  entitlements: {
    core_api_methods: ["lookml_model_explore", "create_sql_query", "run_sql_query", "run_query", "create_query"]
    navigation: yes
    use_embeds: yes
    use_iframes: yes
    new_window: yes
    new_window_external_urls: ["https://developers.generativeai.google/**"]
    local_storage: yes
    #external_api_urls: ["cloud function url"]

  }
}
