view: vendor {
  sql_table_name: l2_entities.vendor ;;
  drill_fields: [vendor_id]

  dimension: vendor_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.vendor_id ;;
  }

  dimension: accounting_business_id {
    type: number
    sql: ${TABLE}.accounting_business_id ;;
  }

  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension: contractor_ind {
    type: yesno
    sql: ${TABLE}.contractor_ind ;;
  }

  dimension_group: contractor_profile_create {
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
    sql: ${TABLE}.contractor_profile_create_time ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: fax_number {
    type: string
    sql: ${TABLE}.fax_number ;;
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

  dimension: vendor_active_ind {
    type: number
    sql: ${TABLE}.vendor_active_ind ;;
  }

  dimension_group: vendor_added {
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
    sql: ${TABLE}.vendor_added_time ;;
  }

  dimension: vendor_email {
    type: string
    sql: ${TABLE}.vendor_email ;;
  }

  dimension: vendor_first_name {
    type: string
    sql: ${TABLE}.vendor_first_name ;;
  }

  dimension: vendor_last_name {
    type: string
    sql: ${TABLE}.vendor_last_name ;;
  }

  dimension: vendor_name {
    type: string
    sql: ${TABLE}.vendor_name ;;
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
      vendor_id,
      vendor_name,
      vendor_first_name,
      vendor_last_name,
      bill.count,
      bill_payment.count
    ]
  }
}
