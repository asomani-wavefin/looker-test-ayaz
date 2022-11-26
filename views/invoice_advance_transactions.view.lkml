view: invoice_advance_transactions {
  sql_table_name: l2_entities.invoice_advance_transactions ;;
  drill_fields: [invoice_advance_transaction_id]

  dimension: invoice_advance_transaction_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.invoice_advance_transaction_id ;;
  }

  dimension: ach_error_codes {
    type: string
    sql: ${TABLE}.ach_error_codes ;;
  }

  dimension: ach_error_dates {
    type: string
    sql: ${TABLE}.ach_error_dates ;;
  }

  dimension: ach_status_flow {
    type: string
    sql: ${TABLE}.ach_status_flow ;;
  }

  dimension: ach_transaction_id {
    type: string
    sql: ${TABLE}.ach_transaction_id ;;
  }

  dimension: advance_id {
    type: number
    sql: ${TABLE}.advance_id ;;
  }

  dimension: business_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.business_id ;;
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

  dimension: product_type {
    type: string
    sql: ${TABLE}.product_type ;;
  }

  dimension: transaction_amount {
    type: number
    sql: ${TABLE}.transaction_amount ;;
  }

  dimension: transaction_amount_cad {
    type: number
    sql: ${TABLE}.transaction_amount_cad ;;
  }

  dimension: transaction_amount_usd {
    type: number
    sql: ${TABLE}.transaction_amount_usd ;;
  }

  dimension_group: transaction_create {
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
    sql: ${TABLE}.transaction_create_time ;;
  }

  dimension: transaction_currency {
    type: string
    sql: ${TABLE}.transaction_currency ;;
  }

  dimension_group: transaction_due {
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
    sql: ${TABLE}.transaction_due_time ;;
  }

  dimension_group: transaction_expected_complete {
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
    sql: ${TABLE}.transaction_expected_complete_time ;;
  }

  dimension: transaction_initiator {
    type: string
    sql: ${TABLE}.transaction_initiator ;;
  }

  dimension_group: transaction_sent {
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
    sql: ${TABLE}.transaction_sent_time ;;
  }

  dimension: transaction_status {
    type: string
    sql: ${TABLE}.transaction_status ;;
  }

  dimension: transaction_type {
    type: string
    sql: ${TABLE}.transaction_type ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [invoice_advance_transaction_id, business.accounting_business_id, business.business_name, user.identity_user_id]
  }
}
