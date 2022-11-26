view: checkout {
  sql_table_name: l2_entities.checkout ;;
  drill_fields: [checkout_id]

  dimension: checkout_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.checkout_id ;;
  }

  dimension: accounting_business_id {
    type: number
    sql: ${TABLE}.accounting_business_id ;;
  }

  dimension: active_ind {
    type: yesno
    sql: ${TABLE}.active_ind ;;
  }

  dimension: address_required_ind {
    type: yesno
    sql: ${TABLE}.address_required_ind ;;
  }

  dimension: business_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.business_id ;;
  }

  dimension_group: checkout_added {
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
    sql: ${TABLE}.checkout_added_time ;;
  }

  dimension: checkout_amount {
    type: number
    sql: ${TABLE}.checkout_amount ;;
  }

  dimension: checkout_amount_pretax {
    type: number
    sql: ${TABLE}.checkout_amount_pretax ;;
  }

  dimension: checkout_amount_pretax_usd {
    type: number
    sql: ${TABLE}.checkout_amount_pretax_usd ;;
  }

  dimension: checkout_amount_usd {
    type: number
    sql: ${TABLE}.checkout_amount_usd ;;
  }

  dimension_group: checkout_deactivated {
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
    sql: ${TABLE}.checkout_deactivated_time ;;
  }

  dimension_group: checkout_modified {
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
    sql: ${TABLE}.checkout_modified_time ;;
  }

  dimension: checkout_state {
    type: string
    sql: ${TABLE}.checkout_state ;;
  }

  dimension: checkout_type {
    type: string
    sql: ${TABLE}.checkout_type ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension: device_origin {
    type: string
    sql: ${TABLE}.device_origin ;;
  }

  dimension: identity_business_id {
    type: string
    sql: ${TABLE}.identity_business_id ;;
  }

  dimension: name_required_ind {
    type: yesno
    sql: ${TABLE}.name_required_ind ;;
  }

  dimension: phone_required_ind {
    type: yesno
    sql: ${TABLE}.phone_required_ind ;;
  }

  measure: count {
    type: count
    drill_fields: [checkout_id, business.accounting_business_id, business.business_name, wave_payment.count]
  }
}
