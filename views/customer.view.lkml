view: customer {
  sql_table_name: l2_entities.customer ;;
  drill_fields: [customer_id]

  dimension: customer_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  dimension: accounting_business_id {
    type: number
    sql: ${TABLE}.accounting_business_id ;;
  }

  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension: company_name {
    type: string
    sql: ${TABLE}.company_name ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: customer_active_ind {
    type: number
    sql: ${TABLE}.customer_active_ind ;;
  }

  dimension_group: customer_added {
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
    sql: ${TABLE}.customer_added_time ;;
  }

  dimension: customer_email {
    type: string
    sql: ${TABLE}.customer_email ;;
  }

  dimension: customer_first_name {
    type: string
    sql: ${TABLE}.customer_first_name ;;
  }

  dimension: customer_last_name {
    type: string
    sql: ${TABLE}.customer_last_name ;;
  }

  dimension: fax_number {
    type: string
    sql: ${TABLE}.fax_number ;;
  }

  dimension_group: first_invoice {
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
    sql: ${TABLE}.first_invoice_date ;;
  }

  dimension: has_credit_card_ind {
    type: number
    sql: ${TABLE}.has_credit_card_ind ;;
  }

  dimension: mobile_number {
    type: string
    sql: ${TABLE}.mobile_number ;;
  }

  dimension: phone_number {
    type: string
    sql: ${TABLE}.phone_number ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}.postal_code ;;
  }

  dimension: province {
    type: string
    sql: ${TABLE}.province ;;
  }

  dimension: toll_free_number {
    type: string
    sql: ${TABLE}.toll_free_number ;;
  }

  dimension: website {
    type: string
    sql: ${TABLE}.website ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      customer_id,
      company_name,
      customer_first_name,
      customer_last_name,
      estimate.count,
      invoice.count,
      recurring_invoice.count,
      wave_payment.count
    ]
  }
}
