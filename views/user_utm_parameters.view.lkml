view: user_utm_parameters {
  sql_table_name: l2_entities.user_utm_parameters ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: gclid {
    type: string
    sql: ${TABLE}.gclid ;;
  }

  dimension: msclkid {
    type: string
    sql: ${TABLE}.msclkid ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  dimension: utm_parameter {
    type: string
    sql: ${TABLE}.utm_parameter ;;
  }

  measure: count {
    type: count
    drill_fields: [id, user.identity_user_id]
  }
}
