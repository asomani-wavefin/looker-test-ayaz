view: invoice_payment {
  sql_table_name: l2_entities.invoice_payment ;;
  drill_fields: [invoice_payment_id]

  dimension: invoice_payment_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.invoice_payment_id ;;
  }

  dimension: accounting_business_id {
    type: number
    sql: ${TABLE}.accounting_business_id ;;
  }

  dimension: active_ind {
    type: yesno
    sql: ${TABLE}.active_ind ;;
  }

  dimension: auto_payment_ind {
    type: yesno
    sql: ${TABLE}.auto_payment_ind ;;
  }

  dimension: business_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.business_id ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension_group: date_added {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date_added ;;
  }

  dimension: fee_amount {
    type: number
    sql: ${TABLE}.fee_amount ;;
  }

  dimension: fee_amount_cad {
    type: number
    sql: ${TABLE}.fee_amount_cad ;;
  }

  dimension: fee_amount_usd {
    type: number
    sql: ${TABLE}.fee_amount_usd ;;
  }

  dimension: identity_business_id {
    type: string
    sql: ${TABLE}.identity_business_id ;;
  }

  dimension: invoice_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.invoice_id ;;
  }

  dimension: payment_amount {
    type: number
    sql: ${TABLE}.payment_amount ;;
  }

  dimension: payment_amount_cad {
    type: number
    sql: ${TABLE}.payment_amount_cad ;;
  }

  dimension: payment_amount_usd {
    type: number
    sql: ${TABLE}.payment_amount_usd ;;
  }

  dimension: payment_by {
    type: string
    sql: ${TABLE}.payment_by ;;
  }

  dimension: payment_channel {
    type: string
    sql: ${TABLE}.payment_channel ;;
  }

  dimension: payment_create_source {
    type: string
    sql: ${TABLE}.payment_create_source ;;
  }

  dimension_group: payment_create {
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
    sql: ${TABLE}.payment_create_time ;;
  }

  dimension_group: payment {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.payment_date ;;
  }

  dimension: payment_method {
    type: string
    sql: ${TABLE}.payment_method ;;
  }

  dimension: payment_submethod {
    type: string
    sql: ${TABLE}.payment_submethod ;;
  }

  dimension: payment_transaction_state {
    type: string
    sql: ${TABLE}.payment_transaction_state ;;
  }

  dimension: saved_payment_method_ind {
    type: yesno
    sql: ${TABLE}.saved_payment_method_ind ;;
  }

  dimension: transaction_id {
    type: string
    sql: ${TABLE}.transaction_id ;;
  }

  dimension: wpp_business_profile_id {
    type: string
    sql: ${TABLE}.wpp_business_profile_id ;;
  }

  measure: count {
    type: count
    drill_fields: [invoice_payment_id, business.accounting_business_id, business.business_name, invoice.recurring_invoice_id, wave_payment.count]
  }
}
