view: d_date {
  sql_table_name: l2_entities.d_date ;;

  dimension: au_format_date {
    type: string
    sql: ${TABLE}.au_format_date ;;
  }

  dimension: aus_holiday_ind {
    type: yesno
    sql: ${TABLE}.aus_holiday_ind ;;
  }

  dimension: can_holiday_ind {
    type: yesno
    sql: ${TABLE}.can_holiday_ind ;;
  }

  dimension: date_id {
    type: number
    sql: ${TABLE}.date_id ;;
  }

  dimension: date_row_id {
    type: number
    sql: ${TABLE}.date_row_id ;;
  }

  dimension: day_is_last_of_month {
    type: yesno
    sql: ${TABLE}.day_is_last_of_month ;;
  }

  dimension: day_is_weekday {
    type: yesno
    sql: ${TABLE}.day_is_weekday ;;
  }

  dimension: day_name {
    type: string
    sql: ${TABLE}.day_name ;;
  }

  dimension: fiscal_qtr_number {
    type: number
    sql: ${TABLE}.fiscal_qtr_number ;;
  }

  dimension: fiscal_year_number {
    type: number
    sql: ${TABLE}.fiscal_year_number ;;
  }

  dimension_group: full {
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
    sql: ${TABLE}.full_date ;;
  }

  dimension: gb_holiday_ind {
    type: yesno
    sql: ${TABLE}.gb_holiday_ind ;;
  }

  dimension: holiday_us_ind {
    type: yesno
    sql: ${TABLE}.holiday_us_ind ;;
  }

  dimension: month_day_number {
    type: number
    sql: ${TABLE}.month_day_number ;;
  }

  dimension_group: month_first_day {
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
    sql: ${TABLE}.month_first_day ;;
  }

  dimension_group: month_last_day {
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
    sql: ${TABLE}.month_last_day ;;
  }

  dimension: month_name {
    type: string
    sql: ${TABLE}.month_name ;;
  }

  dimension: month_number {
    type: number
    sql: ${TABLE}.month_number ;;
  }

  dimension: qtr_number {
    type: number
    sql: ${TABLE}.qtr_number ;;
  }

  dimension: tbd {
    type: number
    sql: ${TABLE}.tbd ;;
  }

  dimension: tbd_can {
    type: number
    sql: ${TABLE}.tbd_can ;;
  }

  dimension: tbd_na {
    type: number
    sql: ${TABLE}.tbd_na ;;
  }

  dimension: tbd_old {
    type: number
    sql: ${TABLE}.tbd_old ;;
  }

  dimension: tbd_row {
    type: number
    sql: ${TABLE}.tbd_row ;;
  }

  dimension: tbd_usa {
    type: number
    sql: ${TABLE}.tbd_usa ;;
  }

  dimension: us_format_date {
    type: string
    sql: ${TABLE}.us_format_date ;;
  }

  dimension: us_holiday_ind {
    type: yesno
    sql: ${TABLE}.us_holiday_ind ;;
  }

  dimension: week_day_number {
    type: number
    sql: ${TABLE}.week_day_number ;;
  }

  dimension: year_day_number {
    type: number
    sql: ${TABLE}.year_day_number ;;
  }

  dimension: year_number {
    type: number
    sql: ${TABLE}.year_number ;;
  }

  dimension: year_week_number {
    type: number
    sql: ${TABLE}.year_week_number ;;
  }

  measure: count {
    type: count
    drill_fields: [month_name, day_name]
  }
}
