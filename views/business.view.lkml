view: business {
  sql_table_name: l2_entities.business ;;
  drill_fields: [accounting_business_id]

  dimension: accounting_business_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.accounting_business_id ;;
  }

  dimension_group: accounting_business_create {
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
    sql: ${TABLE}.accounting_business_create_date ;;
  }

  dimension: active_connected_bank_account_ind {
    type: yesno
    sql: ${TABLE}.active_connected_bank_account_ind ;;
  }

  dimension: active_ind {
    type: yesno
    sql: ${TABLE}.active_ind ;;
  }

  dimension: amplitude_id {
    type: number
    sql: ${TABLE}.amplitude_id ;;
  }

  dimension: business_address {
    type: string
    sql: ${TABLE}.business_address ;;
  }

  dimension: business_address2 {
    type: string
    sql: ${TABLE}.business_address2 ;;
  }

  dimension: business_city {
    type: string
    sql: ${TABLE}.business_city ;;
  }

  dimension: business_country {
    type: string
    sql: ${TABLE}.business_country ;;
  }

  dimension: business_create_origin {
    type: string
    sql: ${TABLE}.business_create_origin ;;
  }

  dimension_group: business_create_time {
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
    sql: ${TABLE}.business_create_time ;;
  }

  dimension: business_geo_category {
    type: string
    sql: ${TABLE}.business_geo_category ;;
  }

  dimension: business_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.business_id ;;
  }

  dimension: business_name {
    type: string
    sql: ${TABLE}.business_name ;;
  }

  dimension: business_province {
    type: string
    sql: ${TABLE}.business_province ;;
  }

  dimension: business_subtype {
    type: string
    sql: ${TABLE}.business_subtype ;;
  }

  dimension: business_type {
    type: string
    sql: ${TABLE}.business_type ;;
  }

  dimension: current_payment_rails {
    type: string
    sql: ${TABLE}.current_payment_rails ;;
  }

  dimension_group: date_added {
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
    sql: ${TABLE}.date_added ;;
  }

  dimension: fraud_attack_ind {
    type: yesno
    sql: ${TABLE}.fraud_attack_ind ;;
  }

  dimension: identity_business_id {
    type: string
    sql: ${TABLE}.identity_business_id ;;
  }

  dimension: identity_user_id {
    type: string
    sql: ${TABLE}.identity_user_id ;;
  }

  dimension: instant_payout_daily_limit {
    type: number
    sql: ${TABLE}.instant_payout_daily_limit ;;
  }

  dimension: instant_payout_schedule_active_ind {
    type: yesno
    sql: ${TABLE}.instant_payout_schedule_active_ind ;;
  }

  dimension_group: instant_payout_schedule_deactivation {
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
    sql: ${TABLE}.instant_payout_schedule_deactivation_date ;;
  }

  dimension: invoice_reminder_disabled {
    type: yesno
    sql: ${TABLE}.invoice_reminder_disabled ;;
  }

  dimension: marked_as_fraud_ind {
    type: yesno
    sql: ${TABLE}.marked_as_fraud_ind ;;
  }

  dimension: merchant_category_code {
    type: number
    sql: ${TABLE}.merchant_category_code ;;
  }

  dimension_group: most_recent_instant_payout_schedule_activation {
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
    sql: ${TABLE}.most_recent_instant_payout_schedule_activation_date ;;
  }

  dimension: most_recent_instant_payout_schedule_maximum_amount {
    type: number
    sql: ${TABLE}.most_recent_instant_payout_schedule_maximum_amount ;;
  }

  dimension: no_of_collaborators {
    type: number
    sql: ${TABLE}.no_of_collaborators ;;
  }

  dimension: number_of_product {
    type: number
    sql: ${TABLE}.number_of_product ;;
  }

  dimension: organizational_type {
    type: string
    sql: ${TABLE}.organizational_type ;;
  }

  dimension: partner_id {
    type: string
    sql: ${TABLE}.partner_id ;;
  }

  dimension: payment_enabled_region_ind {
    type: yesno
    sql: ${TABLE}.payment_enabled_region_ind ;;
  }

  dimension: payment_rails_at_signup {
    type: string
    sql: ${TABLE}.payment_rails_at_signup ;;
  }

  dimension: payroll_edition {
    type: string
    sql: ${TABLE}.payroll_edition ;;
  }

  dimension: payroll_employer_id {
    type: string
    sql: ${TABLE}.payroll_employer_id ;;
  }

  dimension: payroll_subscription_status {
    type: string
    sql: ${TABLE}.payroll_subscription_status ;;
  }

  dimension: personal_ind {
    type: yesno
    sql: ${TABLE}.personal_ind ;;
  }

  dimension: postal_zip_code {
    type: string
    sql: ${TABLE}.postal_zip_code ;;
  }

  dimension: primary_currency {
    type: string
    sql: ${TABLE}.primary_currency ;;
  }

  dimension: product_combo {
    type: string
    sql: ${TABLE}.product_combo ;;
  }

  dimension: product_permutation {
    type: string
    sql: ${TABLE}.product_permutation ;;
  }

  dimension: product_permutation_days_to_adopt {
    type: string
    sql: ${TABLE}.product_permutation_days_to_adopt ;;
  }

  dimension: saved_credit_card_ind {
    type: yesno
    sql: ${TABLE}.saved_credit_card_ind ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  dimension: wave_money_application_processing_status {
    type: string
    sql: ${TABLE}.wave_money_application_processing_status ;;
  }

  dimension: wave_money_ind {
    type: yesno
    sql: ${TABLE}.wave_money_ind ;;
  }

  dimension: wavemoney_invite_risk_ok {
    type: yesno
    sql: ${TABLE}.wavemoney_invite_risk_ok ;;
  }

  dimension: wavemoney_new_instant_payout_lim {
    type: number
    sql: ${TABLE}.wavemoney_new_instant_payout_lim ;;
  }

  dimension: wpp_application_status {
    type: string
    sql: ${TABLE}.wpp_application_status ;;
  }

  dimension: wpp_bp_authorized_ind {
    type: yesno
    sql: ${TABLE}.wpp_bp_authorized_ind ;;
  }

  dimension_group: wpp_business_application_start {
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
    sql: ${TABLE}.wpp_business_application_start_time ;;
  }

  dimension_group: wpp_business_application_submitted {
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
    sql: ${TABLE}.wpp_business_application_submitted_time ;;
  }

  dimension: wpp_business_city {
    type: string
    sql: ${TABLE}.wpp_business_city ;;
  }

  dimension: wpp_business_profile_configuration {
    type: string
    sql: ${TABLE}.wpp_business_profile_configuration ;;
  }

  dimension: wpp_business_profile_id {
    type: string
    sql: ${TABLE}.wpp_business_profile_id ;;
  }

  dimension: wpp_business_profile_state {
    type: string
    sql: ${TABLE}.wpp_business_profile_state ;;
  }

  dimension: wpp_business_profile_state_reason {
    type: string
    sql: ${TABLE}.wpp_business_profile_state_reason ;;
  }

  dimension: wpp_business_province_state {
    type: string
    sql: ${TABLE}.wpp_business_province_state ;;
  }

  dimension: wpp_can_settle_ind {
    type: yesno
    sql: ${TABLE}.wpp_can_settle_ind ;;
  }

  dimension: wpp_cc_authorized_ind {
    type: yesno
    sql: ${TABLE}.wpp_cc_authorized_ind ;;
  }

  dimension: wpp_number_of_active_saved_cc {
    type: number
    sql: ${TABLE}.wpp_number_of_active_saved_cc ;;
  }

  dimension: wpp_trust_status {
    type: string
    sql: ${TABLE}.wpp_trust_status ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      accounting_business_id,
      business_name,
      business.accounting_business_id,
      business.business_name,
      user.identity_user_id,
      bank_account.count,
      bill.count,
      bill_payment.count,
      business.count,
      checkout.count,
      credit_business_events.count,
      credit_product_underwriting_profiles.count,
      estimate.count,
      first_action_date.count,
      invoice.count,
      invoice_advance_transactions.count,
      invoice_payment.count,
      last_action_date.count,
      offers_advances.count,
      optimizely_events.count,
      optimizely_segmentation.count,
      providers_transactions.count,
      receipt.count,
      recurring_invoice.count,
      wave_business_actions.count,
      wave_payment.count
    ]
  }
}
