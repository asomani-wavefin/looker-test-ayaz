view: bill {
  sql_table_name: l2_entities.bill ;;
  drill_fields: [bill_id]

  dimension: bill_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.bill_id ;;
  }

  dimension: accounting_business_id {
    type: number
    sql: ${TABLE}.accounting_business_id ;;
  }

  dimension: active_ind {
    type: yesno
    sql: ${TABLE}.active_ind ;;
  }

  dimension: archived_ind {
    type: yesno
    sql: ${TABLE}.archived_ind ;;
  }

  dimension: bill_amount {
    type: number
    sql: ${TABLE}.bill_amount ;;
  }

  dimension: bill_amount_usd {
    type: number
    sql: ${TABLE}.bill_amount_usd ;;
  }

  dimension_group: bill_create {
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
    sql: ${TABLE}.bill_create_time ;;
  }

  dimension_group: bill {
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
    sql: ${TABLE}.bill_date ;;
  }

  dimension_group: bill_due {
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
    sql: ${TABLE}.bill_due_date ;;
  }

  dimension: bill_tax_amount {
    type: number
    sql: ${TABLE}.bill_tax_amount ;;
  }

  dimension: bill_tax_amount_usd {
    type: number
    sql: ${TABLE}.bill_tax_amount_usd ;;
  }

  dimension: business_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.business_id ;;
  }

  dimension: contractor_ind {
    type: yesno
    sql: ${TABLE}.contractor_ind ;;
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

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  dimension: vendor_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.vendor_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      bill_id,
      business.accounting_business_id,
      business.business_name,
      user.identity_user_id,
      vendor.vendor_id,
      vendor.vendor_name,
      vendor.vendor_first_name,
      vendor.vendor_last_name,
      bill_payment.count
    ]
  }
}
