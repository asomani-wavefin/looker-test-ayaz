view: holidays {
  sql_table_name: l2_entities.holidays ;;

  dimension: counties {
    type: string
    sql: ${TABLE}.counties ;;
  }

  dimension: countrycode {
    type: string
    sql: ${TABLE}.countrycode ;;
  }

  dimension: countyadministrationholiday {
    type: yesno
    sql: ${TABLE}.countyadministrationholiday ;;
  }

  dimension: countyofficialholiday {
    type: yesno
    sql: ${TABLE}.countyofficialholiday ;;
  }

  dimension_group: date {
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
    sql: ${TABLE}.date ;;
  }

  dimension: fixed {
    type: yesno
    sql: ${TABLE}.fixed ;;
  }

  dimension: global {
    type: yesno
    sql: ${TABLE}.global ;;
  }

  dimension: launchyear {
    type: string
    sql: ${TABLE}.launchyear ;;
  }

  dimension: localname {
    type: string
    sql: ${TABLE}.localname ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  measure: count {
    type: count
    drill_fields: [localname, name]
  }
}
