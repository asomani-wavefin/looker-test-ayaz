view: threat_metrix_password_reset_policy {
  sql_table_name: l2_entities.threat_metrix_password_reset_policy ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: account_address_city {
    type: string
    sql: ${TABLE}.account_address_city ;;
  }

  dimension: account_address_country {
    type: string
    sql: ${TABLE}.account_address_country ;;
  }

  dimension: account_address_state {
    type: string
    sql: ${TABLE}.account_address_state ;;
  }

  dimension: account_address_street1 {
    type: string
    sql: ${TABLE}.account_address_street1 ;;
  }

  dimension: account_address_street2 {
    type: string
    sql: ${TABLE}.account_address_street2 ;;
  }

  dimension: account_address_zip {
    type: string
    sql: ${TABLE}.account_address_zip ;;
  }

  dimension: account_date_of_birth {
    type: string
    sql: ${TABLE}.account_date_of_birth ;;
  }

  dimension: account_email {
    type: string
    sql: ${TABLE}.account_email ;;
  }

  dimension: account_email_domain {
    type: string
    sql: ${TABLE}.account_email_domain ;;
  }

  dimension: account_login {
    type: string
    sql: ${TABLE}.account_login ;;
  }

  dimension: account_name {
    type: string
    sql: ${TABLE}.account_name ;;
  }

  dimension: account_number {
    type: string
    sql: ${TABLE}.account_number ;;
  }

  dimension: account_telephone {
    type: string
    sql: ${TABLE}.account_telephone ;;
  }

  dimension: ach_account_hash {
    type: string
    sql: ${TABLE}.ach_account_hash ;;
  }

  dimension: ach_routing_number {
    type: string
    sql: ${TABLE}.ach_routing_number ;;
  }

  dimension: api_call_datetime {
    type: string
    sql: ${TABLE}.api_call_datetime ;;
  }

  dimension: cc_number_hash {
    type: string
    sql: ${TABLE}.cc_number_hash ;;
  }

  dimension: condition_attrib_1 {
    type: string
    sql: ${TABLE}.condition_attrib_1 ;;
  }

  dimension: condition_attrib_10 {
    type: string
    sql: ${TABLE}.condition_attrib_10 ;;
  }

  dimension: condition_attrib_11 {
    type: string
    sql: ${TABLE}.condition_attrib_11 ;;
  }

  dimension: condition_attrib_12 {
    type: string
    sql: ${TABLE}.condition_attrib_12 ;;
  }

  dimension: condition_attrib_13 {
    type: string
    sql: ${TABLE}.condition_attrib_13 ;;
  }

  dimension: condition_attrib_14 {
    type: string
    sql: ${TABLE}.condition_attrib_14 ;;
  }

  dimension: condition_attrib_15 {
    type: string
    sql: ${TABLE}.condition_attrib_15 ;;
  }

  dimension: condition_attrib_16 {
    type: string
    sql: ${TABLE}.condition_attrib_16 ;;
  }

  dimension: condition_attrib_17 {
    type: string
    sql: ${TABLE}.condition_attrib_17 ;;
  }

  dimension: condition_attrib_18 {
    type: string
    sql: ${TABLE}.condition_attrib_18 ;;
  }

  dimension: condition_attrib_2 {
    type: string
    sql: ${TABLE}.condition_attrib_2 ;;
  }

  dimension: condition_attrib_3 {
    type: string
    sql: ${TABLE}.condition_attrib_3 ;;
  }

  dimension: condition_attrib_4 {
    type: string
    sql: ${TABLE}.condition_attrib_4 ;;
  }

  dimension: condition_attrib_5 {
    type: string
    sql: ${TABLE}.condition_attrib_5 ;;
  }

  dimension: condition_attrib_6 {
    type: string
    sql: ${TABLE}.condition_attrib_6 ;;
  }

  dimension: condition_attrib_7 {
    type: string
    sql: ${TABLE}.condition_attrib_7 ;;
  }

  dimension: condition_attrib_8 {
    type: string
    sql: ${TABLE}.condition_attrib_8 ;;
  }

  dimension: condition_attrib_9 {
    type: string
    sql: ${TABLE}.condition_attrib_9 ;;
  }

  dimension_group: create {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.create_time ;;
  }

  dimension: custom_count_1 {
    type: string
    sql: ${TABLE}.custom_count_1 ;;
  }

  dimension: custom_count_10 {
    type: string
    sql: ${TABLE}.custom_count_10 ;;
  }

  dimension: custom_count_11 {
    type: string
    sql: ${TABLE}.custom_count_11 ;;
  }

  dimension: custom_count_12 {
    type: string
    sql: ${TABLE}.custom_count_12 ;;
  }

  dimension: custom_count_13 {
    type: string
    sql: ${TABLE}.custom_count_13 ;;
  }

  dimension: custom_count_14 {
    type: string
    sql: ${TABLE}.custom_count_14 ;;
  }

  dimension: custom_count_15 {
    type: string
    sql: ${TABLE}.custom_count_15 ;;
  }

  dimension: custom_count_2 {
    type: string
    sql: ${TABLE}.custom_count_2 ;;
  }

  dimension: custom_count_3 {
    type: string
    sql: ${TABLE}.custom_count_3 ;;
  }

  dimension: custom_count_4 {
    type: string
    sql: ${TABLE}.custom_count_4 ;;
  }

  dimension: custom_count_5 {
    type: string
    sql: ${TABLE}.custom_count_5 ;;
  }

  dimension: custom_count_6 {
    type: string
    sql: ${TABLE}.custom_count_6 ;;
  }

  dimension: custom_count_7 {
    type: string
    sql: ${TABLE}.custom_count_7 ;;
  }

  dimension: custom_count_8 {
    type: string
    sql: ${TABLE}.custom_count_8 ;;
  }

  dimension: custom_count_9 {
    type: string
    sql: ${TABLE}.custom_count_9 ;;
  }

  dimension: custom_unencrypted_1 {
    type: string
    sql: ${TABLE}.custom_unencrypted_1 ;;
  }

  dimension: event_type {
    type: string
    sql: ${TABLE}.event_type ;;
  }

  dimension: identity_business_id {
    type: string
    sql: ${TABLE}.identity_business_id ;;
  }

  dimension: identity_user_id {
    type: string
    sql: ${TABLE}.identity_user_id ;;
  }

  dimension: local_attrib_1 {
    type: string
    sql: ${TABLE}.local_attrib_1 ;;
  }

  dimension: local_attrib_10 {
    type: string
    sql: ${TABLE}.local_attrib_10 ;;
  }

  dimension: local_attrib_11 {
    type: string
    sql: ${TABLE}.local_attrib_11 ;;
  }

  dimension: local_attrib_12 {
    type: string
    sql: ${TABLE}.local_attrib_12 ;;
  }

  dimension: local_attrib_13 {
    type: string
    sql: ${TABLE}.local_attrib_13 ;;
  }

  dimension: local_attrib_14 {
    type: string
    sql: ${TABLE}.local_attrib_14 ;;
  }

  dimension: local_attrib_15 {
    type: string
    sql: ${TABLE}.local_attrib_15 ;;
  }

  dimension: local_attrib_2 {
    type: string
    sql: ${TABLE}.local_attrib_2 ;;
  }

  dimension: local_attrib_3 {
    type: string
    sql: ${TABLE}.local_attrib_3 ;;
  }

  dimension: local_attrib_4 {
    type: string
    sql: ${TABLE}.local_attrib_4 ;;
  }

  dimension: local_attrib_5 {
    type: string
    sql: ${TABLE}.local_attrib_5 ;;
  }

  dimension: local_attrib_6 {
    type: string
    sql: ${TABLE}.local_attrib_6 ;;
  }

  dimension: local_attrib_7 {
    type: string
    sql: ${TABLE}.local_attrib_7 ;;
  }

  dimension: local_attrib_8 {
    type: string
    sql: ${TABLE}.local_attrib_8 ;;
  }

  dimension: local_attrib_9 {
    type: string
    sql: ${TABLE}.local_attrib_9 ;;
  }

  dimension: online_id_handle {
    type: string
    sql: ${TABLE}.online_id_handle ;;
  }

  dimension: online_tld {
    type: string
    sql: ${TABLE}.online_tld ;;
  }

  dimension: org_id {
    type: string
    sql: ${TABLE}.org_id ;;
  }

  dimension: policy {
    type: string
    sql: ${TABLE}.policy ;;
  }

  dimension: policy_score {
    type: string
    sql: ${TABLE}.policy_score ;;
  }

  dimension: policy_type {
    type: string
    sql: ${TABLE}.policy_type ;;
  }

  dimension: primary_industry {
    type: string
    sql: ${TABLE}.primary_industry ;;
  }

  dimension: reason_code {
    type: string
    sql: ${TABLE}.reason_code ;;
  }

  dimension: request_duration {
    type: string
    sql: ${TABLE}.request_duration ;;
  }

  dimension: request_id {
    type: string
    sql: ${TABLE}.request_id ;;
  }

  dimension: request_result {
    type: string
    sql: ${TABLE}.request_result ;;
  }

  dimension: review_status {
    type: string
    sql: ${TABLE}.review_status ;;
  }

  dimension: risk_rating {
    type: string
    sql: ${TABLE}.risk_rating ;;
  }

  dimension: secondary_industry {
    type: string
    sql: ${TABLE}.secondary_industry ;;
  }

  dimension: service_type {
    type: string
    sql: ${TABLE}.service_type ;;
  }

  dimension: session_id {
    type: string
    sql: ${TABLE}.session_id ;;
  }

  dimension: shipping_address_city {
    type: string
    sql: ${TABLE}.shipping_address_city ;;
  }

  dimension: shipping_address_country {
    type: string
    sql: ${TABLE}.shipping_address_country ;;
  }

  dimension: shipping_address_state {
    type: string
    sql: ${TABLE}.shipping_address_state ;;
  }

  dimension: shipping_address_street1 {
    type: string
    sql: ${TABLE}.shipping_address_street1 ;;
  }

  dimension: shipping_address_street2 {
    type: string
    sql: ${TABLE}.shipping_address_street2 ;;
  }

  dimension: shipping_address_zip {
    type: string
    sql: ${TABLE}.shipping_address_zip ;;
  }

  dimension: ssn_hash {
    type: string
    sql: ${TABLE}.ssn_hash ;;
  }

  dimension: summary_risk_score {
    type: string
    sql: ${TABLE}.summary_risk_score ;;
  }

  dimension: transaction_amount {
    type: string
    sql: ${TABLE}.transaction_amount ;;
  }

  dimension: transaction_auth_amount {
    type: string
    sql: ${TABLE}.transaction_auth_amount ;;
  }

  dimension: transaction_id {
    type: string
    sql: ${TABLE}.transaction_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, account_name]
  }
}
