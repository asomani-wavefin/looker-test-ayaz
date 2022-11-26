view: optimizely_events {
  sql_table_name: l2_entities.optimizely_events ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: business_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.business_id ;;
  }

  dimension: event_id {
    type: string
    sql: ${TABLE}.event_id ;;
  }

  dimension: event_name {
    type: string
    sql: ${TABLE}.event_name ;;
  }

  dimension_group: event_time {
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
    sql: ${TABLE}.event_time ;;
  }

  dimension: event_type_id {
    type: number
    sql: ${TABLE}.event_type_id ;;
  }

  dimension: experiment {
    type: string
    sql: ${TABLE}.experiment ;;
  }

  dimension: experiment_id {
    type: number
    sql: ${TABLE}.experiment_id ;;
  }

  dimension: id_type {
    type: string
    sql: ${TABLE}.id_type ;;
  }

  dimension: num_of_conversion_for_this_record {
    type: number
    sql: ${TABLE}.num_of_conversion_for_this_record ;;
  }

  dimension_group: received_event {
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
    sql: ${TABLE}.received_event_time ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  dimension: variation {
    type: string
    sql: ${TABLE}.variation ;;
  }

  dimension: variation_id {
    type: number
    sql: ${TABLE}.variation_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, event_name, business.accounting_business_id, business.business_name, user.identity_user_id]
  }
}
