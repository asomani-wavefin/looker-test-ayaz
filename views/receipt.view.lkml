view: receipt {
  sql_table_name: l2_entities.receipt ;;
  drill_fields: [receipt_id]

  dimension: receipt_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.receipt_id ;;
  }

  dimension: accounting_business_id {
    type: number
    sql: ${TABLE}.accounting_business_id ;;
  }

  dimension: active_ind {
    type: yesno
    sql: ${TABLE}.active_ind ;;
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

  dimension: customer_pk {
    type: number
    sql: ${TABLE}.customer_pk ;;
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

  dimension_group: due {
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
    sql: ${TABLE}.due_date ;;
  }

  dimension: financial_transaction_id {
    type: number
    sql: ${TABLE}.financial_transaction_id ;;
  }

  dimension: identity_business_id {
    type: string
    sql: ${TABLE}.identity_business_id ;;
  }

  dimension: identity_user_id {
    type: string
    sql: ${TABLE}.identity_user_id ;;
  }

  dimension_group: import {
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
    sql: ${TABLE}.import_time ;;
  }

  dimension: is_new_receipt {
    type: yesno
    sql: ${TABLE}.is_new_receipt ;;
  }

  dimension: merchant {
    type: string
    sql: ${TABLE}.merchant ;;
  }

  dimension: new_receipt_cnt {
    type: number
    sql: ${TABLE}.new_receipt_cnt ;;
  }

  dimension: old_receipt_cnt {
    type: number
    sql: ${TABLE}.old_receipt_cnt ;;
  }

  dimension: paid_ind {
    type: yesno
    sql: ${TABLE}.paid_ind ;;
  }

  dimension_group: receipt {
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
    sql: ${TABLE}.receipt_date ;;
  }

  dimension: receipt_url {
    type: string
    sql: ${TABLE}.receipt_url ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: subtotal_amount {
    type: number
    sql: ${TABLE}.subtotal_amount ;;
  }

  dimension: subtotal_amount_usd {
    type: number
    sql: ${TABLE}.subtotal_amount_usd ;;
  }

  dimension: total_amount {
    type: number
    sql: ${TABLE}.total_amount ;;
  }

  dimension: total_amount_usd {
    type: number
    sql: ${TABLE}.total_amount_usd ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension_group: upload {
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
    sql: ${TABLE}.upload_time ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [receipt_id, business.accounting_business_id, business.business_name, user.identity_user_id]
  }
}
