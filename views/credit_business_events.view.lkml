view: credit_business_events {
  sql_table_name: l2_entities.credit_business_events ;;

  dimension: business_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.business_id ;;
  }

  dimension: cohort {
    type: string
    sql: ${TABLE}.cohort ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.created_time ;;
  }

  dimension: credit_limit_in_cents {
    type: number
    sql: ${TABLE}.credit_limit_in_cents ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension: event_id {
    type: number
    sql: ${TABLE}.event_id ;;
  }

  dimension: event_type {
    type: string
    sql: ${TABLE}.event_type ;;
  }

  dimension: identity_business_id {
    type: string
    sql: ${TABLE}.identity_business_id ;;
  }

  dimension: max_allowed_open_advances {
    type: number
    sql: ${TABLE}.max_allowed_open_advances ;;
  }

  dimension: product {
    type: string
    sql: ${TABLE}.product ;;
  }

  measure: count {
    type: count
    drill_fields: [created_time, business.accounting_business_id, business.business_name]
  }
}
