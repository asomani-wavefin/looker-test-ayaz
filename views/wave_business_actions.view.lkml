view: wave_business_actions {
  sql_table_name: l2_entities.wave_business_actions ;;

  dimension: accounting_business_id {
    type: number
    sql: ${TABLE}.accounting_business_id ;;
  }

  dimension_group: action {
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
    sql: ${TABLE}.action_date ;;
  }

  dimension: action_type {
    type: string
    sql: ${TABLE}.action_type ;;
  }

  dimension: business_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.business_id ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: identity_business_id {
    type: string
    sql: ${TABLE}.identity_business_id ;;
  }

  dimension: identity_user_id {
    type: string
    sql: ${TABLE}.identity_user_id ;;
  }

  dimension_group: insert_datetime {
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
    sql: ${TABLE}.insert_datetime ;;
  }

  dimension: number_of_actions {
    type: number
    sql: ${TABLE}.number_of_actions ;;
  }

  dimension: product {
    type: string
    sql: ${TABLE}.product ;;
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
