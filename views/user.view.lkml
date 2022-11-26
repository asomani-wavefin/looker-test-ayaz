view: user {
  sql_table_name: l2_entities."user" ;;
  drill_fields: [identity_user_id]

  dimension: identity_user_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.identity_user_id ;;
  }

  dimension: acquisition_channel {
    type: string
    sql: ${TABLE}.acquisition_channel ;;
  }

  dimension: acquisition_owner {
    type: string
    sql: ${TABLE}.acquisition_owner ;;
  }

  dimension: acquisition_source {
    type: string
    sql: ${TABLE}.acquisition_source ;;
  }

  dimension: acquisition_subsource {
    type: string
    sql: ${TABLE}.acquisition_subsource ;;
  }

  dimension: acquisition_type {
    type: string
    sql: ${TABLE}.acquisition_type ;;
  }

  dimension: active_ind {
    type: yesno
    sql: ${TABLE}.active_ind ;;
  }

  dimension: business_collaborator_count_ca {
    type: number
    sql: ${TABLE}.business_collaborator_count_ca ;;
  }

  dimension: business_collaborator_count_row {
    type: number
    sql: ${TABLE}.business_collaborator_count_row ;;
  }

  dimension: business_collaborator_count_row_pe {
    type: number
    sql: ${TABLE}.business_collaborator_count_row_pe ;;
  }

  dimension: business_collaborator_count_us {
    type: number
    sql: ${TABLE}.business_collaborator_count_us ;;
  }

  dimension: business_owned_count_ca {
    type: number
    sql: ${TABLE}.business_owned_count_ca ;;
  }

  dimension: business_owned_count_row {
    type: number
    sql: ${TABLE}.business_owned_count_row ;;
  }

  dimension: business_owned_count_row_pe {
    type: number
    sql: ${TABLE}.business_owned_count_row_pe ;;
  }

  dimension: business_owned_count_us {
    type: number
    sql: ${TABLE}.business_owned_count_us ;;
  }

  dimension: campaign_product {
    type: string
    sql: ${TABLE}.campaign_product ;;
  }

  dimension: campaign_region {
    type: string
    sql: ${TABLE}.campaign_region ;;
  }

  dimension: campaign_type {
    type: string
    sql: ${TABLE}.campaign_type ;;
  }

  dimension: custom_domain_ind {
    type: yesno
    sql: ${TABLE}.custom_domain_ind ;;
  }

  dimension_group: date_modified {
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
    sql: ${TABLE}.date_modified ;;
  }

  dimension: email_domain {
    type: string
    sql: ${TABLE}.email_domain ;;
  }

  dimension: fraud_attack_ind {
    type: yesno
    sql: ${TABLE}.fraud_attack_ind ;;
  }

  dimension: immediate_referrer_referrer {
    type: string
    sql: ${TABLE}.immediate_referrer_referrer ;;
  }

  dimension: lab_ind {
    type: yesno
    sql: ${TABLE}.lab_ind ;;
  }

  dimension: landing_page {
    type: string
    sql: ${TABLE}.landing_page ;;
  }

  dimension: last_login_remote_address {
    type: string
    sql: ${TABLE}.last_login_remote_address ;;
  }

  dimension: login_emails_added {
    type: number
    sql: ${TABLE}.login_emails_added ;;
  }

  dimension: mobile_device_origin {
    type: string
    sql: ${TABLE}.mobile_device_origin ;;
  }

  dimension: test_user_ind {
    type: yesno
    sql: ${TABLE}.test_user_ind ;;
  }

  dimension_group: user_account_closure {
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
    sql: ${TABLE}.user_account_closure_time ;;
  }

  dimension: user_business_currency {
    type: string
    sql: ${TABLE}.user_business_currency ;;
  }

  dimension: user_city {
    type: string
    sql: ${TABLE}.user_city ;;
  }

  dimension: user_country {
    type: string
    sql: ${TABLE}.user_country ;;
  }

  dimension: user_create_origin {
    type: string
    sql: ${TABLE}.user_create_origin ;;
  }

  dimension_group: user_create {
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
    sql: ${TABLE}.user_create_time ;;
  }

  dimension: user_geo_category {
    type: string
    sql: ${TABLE}.user_geo_category ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  dimension_group: user_last_login {
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
    sql: ${TABLE}.user_last_login_time ;;
  }

  dimension: user_province {
    type: string
    sql: ${TABLE}.user_province ;;
  }

  dimension: user_region {
    type: string
    sql: ${TABLE}.user_region ;;
  }

  dimension: user_suspended_group {
    type: string
    sql: ${TABLE}.user_suspended_group ;;
  }

  dimension: user_suspended_ind {
    type: yesno
    sql: ${TABLE}.user_suspended_ind ;;
  }

  dimension_group: user_unsubscribe {
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
    sql: ${TABLE}.user_unsubscribe_time ;;
  }

  dimension: utm_campaign {
    type: string
    sql: ${TABLE}.utm_campaign ;;
  }

  dimension: utm_content {
    type: string
    sql: ${TABLE}.utm_content ;;
  }

  dimension: utm_geo_label {
    type: string
    sql: ${TABLE}.utm_geo_label ;;
  }

  dimension: utm_label {
    type: string
    sql: ${TABLE}.utm_label ;;
  }

  dimension: utm_medium {
    type: string
    sql: ${TABLE}.utm_medium ;;
  }

  dimension: utm_qualifier_label {
    type: string
    sql: ${TABLE}.utm_qualifier_label ;;
  }

  dimension: utm_source {
    type: string
    sql: ${TABLE}.utm_source ;;
  }

  dimension: utm_sub_label {
    type: string
    sql: ${TABLE}.utm_sub_label ;;
  }

  dimension: utm_term {
    type: string
    sql: ${TABLE}.utm_term ;;
  }

  dimension_group: utm_timestamp {
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
    sql: ${TABLE}.utm_timestamp ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      identity_user_id,
      user.identity_user_id,
      bank_account.count,
      bill.count,
      bill_payment.count,
      business.count,
      business_owner.count,
      credit_product_underwriting_profiles.count,
      first_action_date.count,
      invoice_advance_transactions.count,
      last_action_date.count,
      lending_ondeck.count,
      offers_advances.count,
      onboarding_questions.count,
      optimizely_events.count,
      optimizely_segmentation.count,
      providers_transactions.count,
      receipt.count,
      user.count,
      user_login_attribution.count,
      user_utm_parameters.count,
      wave_business_actions.count,
      zendesk_ticket.count
    ]
  }
}
