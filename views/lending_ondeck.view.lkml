view: lending_ondeck {
  sql_table_name: l2_entities.lending_ondeck ;;

  dimension: commission {
    type: number
    sql: ${TABLE}.commission ;;
  }

  dimension_group: funded {
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
    sql: ${TABLE}.funded_date ;;
  }

  dimension: identity_user_id {
    type: string
    sql: ${TABLE}.identity_user_id ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [user.identity_user_id]
  }
}
