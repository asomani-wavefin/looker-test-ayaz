view: estimate {
  sql_table_name: l2_entities.estimate ;;
  drill_fields: [estimate_id]

  dimension: estimate_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.estimate_id ;;
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

  dimension: business_currency {
    type: string
    sql: ${TABLE}.business_currency ;;
  }

  dimension: business_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.business_id ;;
  }

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
  }

  dimension: estimate_amount {
    type: number
    sql: ${TABLE}.estimate_amount ;;
  }

  dimension: estimate_amount_usd {
    type: number
    sql: ${TABLE}.estimate_amount_usd ;;
  }

  dimension_group: estimate_create {
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
    sql: ${TABLE}.estimate_create_time ;;
  }

  dimension_group: estimate_due {
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
    sql: ${TABLE}.estimate_due_date ;;
  }

  dimension_group: estimate_modified {
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
    sql: ${TABLE}.estimate_modified_time ;;
  }

  dimension: estimate_tax_amount {
    type: number
    sql: ${TABLE}.estimate_tax_amount ;;
  }

  dimension: estimate_tax_amount_usd {
    type: number
    sql: ${TABLE}.estimate_tax_amount_usd ;;
  }

  dimension: identity_business_id {
    type: string
    sql: ${TABLE}.identity_business_id ;;
  }

  dimension: invoice_currency {
    type: string
    sql: ${TABLE}.invoice_currency ;;
  }

  dimension_group: last_sent {
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
    sql: ${TABLE}.last_sent_time ;;
  }

  dimension: last_sent_via {
    type: string
    sql: ${TABLE}.last_sent_via ;;
  }

  dimension_group: last_viewed {
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
    sql: ${TABLE}.last_viewed_time ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: with_shipping_address_ind {
    type: yesno
    sql: ${TABLE}.with_shipping_address_ind ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      estimate_id,
      business.accounting_business_id,
      business.business_name,
      customer.customer_id,
      customer.company_name,
      customer.customer_first_name,
      customer.customer_last_name
    ]
  }
}
