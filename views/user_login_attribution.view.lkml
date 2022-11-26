view: user_login_attribution {
  sql_table_name: l2_entities.user_login_attribution ;;

  dimension: attribution_owner {
    type: string
    sql: ${TABLE}.attribution_owner ;;
  }

  dimension: attribution_source {
    type: string
    sql: ${TABLE}.attribution_source ;;
  }

  dimension: attribution_subsource {
    type: string
    sql: ${TABLE}.attribution_subsource ;;
  }

  dimension: attribution_type {
    type: string
    sql: ${TABLE}.attribution_type ;;
  }

  dimension: identity_user_id {
    type: string
    sql: ${TABLE}.identity_user_id ;;
  }

  dimension: immediate_referrer {
    type: string
    sql: ${TABLE}.immediate_referrer ;;
  }

  dimension: landing_page {
    type: string
    sql: ${TABLE}.landing_page ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  dimension_group: user_login {
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
    sql: ${TABLE}.user_login_time ;;
  }

  dimension: utm_campaign {
    type: string
    sql: ${TABLE}.utm_campaign ;;
  }

  dimension: utm_content {
    type: string
    sql: ${TABLE}.utm_content ;;
  }

  dimension: utm_medium {
    type: string
    sql: ${TABLE}.utm_medium ;;
  }

  dimension: utm_source {
    type: string
    sql: ${TABLE}.utm_source ;;
  }

  dimension: utm_term {
    type: string
    sql: ${TABLE}.utm_term ;;
  }

  measure: count {
    type: count
    drill_fields: [user.identity_user_id]
  }
}
