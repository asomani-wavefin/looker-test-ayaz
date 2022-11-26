view: credit_product_underwriting_profiles {
  sql_table_name: l2_entities.credit_product_underwriting_profiles ;;

  dimension: active_advances_limit {
    type: number
    sql: ${TABLE}.active_advances_limit ;;
  }

  dimension: business_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.business_id ;;
  }

  dimension: credit_fee_rate {
    type: number
    sql: ${TABLE}.credit_fee_rate ;;
  }

  dimension: credit_limit {
    type: number
    sql: ${TABLE}.credit_limit ;;
  }

  dimension: credit_product_type {
    type: string
    sql: ${TABLE}.credit_product_type ;;
  }

  dimension: currency_code {
    type: string
    sql: ${TABLE}.currency_code ;;
  }

  dimension: identity_business_id {
    type: string
    sql: ${TABLE}.identity_business_id ;;
  }

  dimension: identity_user_id {
    type: string
    sql: ${TABLE}.identity_user_id ;;
  }

  dimension: invoice_advance_business_id {
    type: number
    sql: ${TABLE}.invoice_advance_business_id ;;
  }

  dimension: invoice_advance_cohort {
    type: string
    sql: ${TABLE}.invoice_advance_cohort ;;
  }

  dimension: underwriting_profile_active_ind {
    type: yesno
    sql: ${TABLE}.underwriting_profile_active_ind ;;
  }

  dimension_group: underwriting_profile_create {
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
    sql: ${TABLE}.underwriting_profile_create_time ;;
  }

  dimension_group: underwriting_profile_update {
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
    sql: ${TABLE}.underwriting_profile_update_time ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [business.accounting_business_id, business.business_name, user.identity_user_id]
  }
}
