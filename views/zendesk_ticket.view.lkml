view: zendesk_ticket {
  sql_table_name: l2_entities.zendesk_ticket ;;

  dimension: account_management_comment_ind {
    type: yesno
    sql: ${TABLE}.account_management_comment_ind ;;
  }

  dimension: assignee_user_id {
    type: number
    sql: ${TABLE}.assignee_user_id ;;
  }

  dimension: assignee_user_name {
    type: string
    sql: ${TABLE}.assignee_user_name ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.department ;;
  }

  dimension: identity_user_id {
    type: string
    sql: ${TABLE}.identity_user_id ;;
  }

  dimension: satisfaction_rating_score {
    type: string
    sql: ${TABLE}.satisfaction_rating_score ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: tags {
    type: string
    sql: ${TABLE}.tags ;;
  }

  dimension: ticket_assignee_stations {
    type: number
    sql: ${TABLE}.ticket_assignee_stations ;;
  }

  dimension_group: ticket_create {
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
    sql: ${TABLE}.ticket_create_time ;;
  }

  dimension: ticket_first_resolution_time_in_minutes_calendar {
    type: number
    sql: ${TABLE}.ticket_first_resolution_time_in_minutes_calendar ;;
  }

  dimension: ticket_form_name {
    type: string
    sql: ${TABLE}.ticket_form_name ;;
  }

  dimension: ticket_full_resolution_time_in_minutes_calendar {
    type: number
    sql: ${TABLE}.ticket_full_resolution_time_in_minutes_calendar ;;
  }

  dimension: ticket_group_id {
    type: number
    sql: ${TABLE}.ticket_group_id ;;
  }

  dimension: ticket_group_name {
    type: string
    sql: ${TABLE}.ticket_group_name ;;
  }

  dimension: ticket_id {
    type: number
    sql: ${TABLE}.ticket_id ;;
  }

  dimension: ticket_reopens {
    type: number
    sql: ${TABLE}.ticket_reopens ;;
  }

  dimension: ticket_replies {
    type: number
    sql: ${TABLE}.ticket_replies ;;
  }

  dimension: ticket_reply_time_in_minutes_calendar {
    type: number
    sql: ${TABLE}.ticket_reply_time_in_minutes_calendar ;;
  }

  dimension_group: ticket_solved {
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
    sql: ${TABLE}.ticket_solved_at ;;
  }

  dimension: ticket_source {
    type: string
    sql: ${TABLE}.ticket_source ;;
  }

  dimension: ticket_type {
    type: string
    sql: ${TABLE}.ticket_type ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}.updated_at ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  dimension: user_lifecycle_month {
    type: number
    sql: ${TABLE}.user_lifecycle_month ;;
  }

  dimension: user_ticket_rank {
    type: number
    sql: ${TABLE}.user_ticket_rank ;;
  }

  dimension: zendesk_user_id {
    type: number
    sql: ${TABLE}.zendesk_user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [assignee_user_name, ticket_group_name, ticket_form_name, user.identity_user_id]
  }
}
