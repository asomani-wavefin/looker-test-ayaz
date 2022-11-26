view: business_owner {
  sql_table_name: l2_entities.business_owner ;;

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: identity_user_id {
    type: string
    sql: ${TABLE}.identity_user_id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: phone_number {
    type: string
    sql: ${TABLE}.phone_number ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [name, user.identity_user_id]
  }
}
