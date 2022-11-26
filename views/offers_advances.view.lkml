view: offers_advances {
  sql_table_name: l2_entities.offers_advances ;;

  dimension: accepted_advance_ind {
    type: yesno
    sql: ${TABLE}.accepted_advance_ind ;;
  }

  dimension_group: advance_accepted {
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
    sql: ${TABLE}.advance_accepted_time ;;
  }

  dimension: advance_amount {
    type: number
    sql: ${TABLE}.advance_amount ;;
  }

  dimension: advance_amount_cad {
    type: number
    sql: ${TABLE}.advance_amount_cad ;;
  }

  dimension: advance_amount_usd {
    type: number
    sql: ${TABLE}.advance_amount_usd ;;
  }

  dimension_group: advance_closed {
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
    sql: ${TABLE}.advance_closed_time ;;
  }

  dimension: advance_currency {
    type: string
    sql: ${TABLE}.advance_currency ;;
  }

  dimension: advance_fee_amount {
    type: number
    sql: ${TABLE}.advance_fee_amount ;;
  }

  dimension: advance_fee_amount_cad {
    type: number
    sql: ${TABLE}.advance_fee_amount_cad ;;
  }

  dimension: advance_fee_amount_usd {
    type: number
    sql: ${TABLE}.advance_fee_amount_usd ;;
  }

  dimension: advance_fee_rate {
    type: number
    sql: ${TABLE}.advance_fee_rate ;;
  }

  dimension: advance_id {
    type: number
    sql: ${TABLE}.advance_id ;;
  }

  dimension: advance_status {
    type: string
    sql: ${TABLE}.advance_status ;;
  }

  dimension: business_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.business_id ;;
  }

  dimension: customer_id_snapshot {
    type: number
    value_format_name: id
    sql: ${TABLE}.customer_id_snapshot ;;
  }

  dimension: days_accept_to_close {
    type: number
    sql: ${TABLE}.days_accept_to_close ;;
  }

  dimension: days_offer_to_accept {
    type: number
    sql: ${TABLE}.days_offer_to_accept ;;
  }

  dimension: identity_business_id {
    type: string
    sql: ${TABLE}.identity_business_id ;;
  }

  dimension: identity_user_id {
    type: string
    sql: ${TABLE}.identity_user_id ;;
  }

  dimension: invoice_advance_business_id {
    type: number
    sql: ${TABLE}.invoice_advance_business_id ;;
  }

  dimension: invoice_advance_cohort {
    type: string
    sql: ${TABLE}.invoice_advance_cohort ;;
  }

  dimension: invoice_amount_snapshot {
    type: number
    sql: ${TABLE}.invoice_amount_snapshot ;;
  }

  dimension: invoice_amount_snapshot_cad {
    type: number
    sql: ${TABLE}.invoice_amount_snapshot_cad ;;
  }

  dimension: invoice_amount_snapshot_usd {
    type: number
    sql: ${TABLE}.invoice_amount_snapshot_usd ;;
  }

  dimension: invoice_currency_snapshot {
    type: string
    sql: ${TABLE}.invoice_currency_snapshot ;;
  }

  dimension: invoice_customer_change_ind {
    type: yesno
    sql: ${TABLE}.invoice_customer_change_ind ;;
  }

  dimension_group: invoice_date_snapshot {
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
    sql: ${TABLE}.invoice_date_snapshot ;;
  }

  dimension_group: invoice_due_date_snapshot {
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
    sql: ${TABLE}.invoice_due_date_snapshot ;;
  }

  dimension: invoice_id_snapshot {
    type: number
    value_format_name: id
    sql: ${TABLE}.invoice_id_snapshot ;;
  }

  dimension: invoice_size_category {
    type: string
    sql: ${TABLE}.invoice_size_category ;;
  }

  dimension: invoice_status_snapshot {
    type: string
    sql: ${TABLE}.invoice_status_snapshot ;;
  }

  dimension: invoice_term {
    type: number
    sql: ${TABLE}.invoice_term ;;
  }

  dimension: invoice_term_category {
    type: string
    sql: ${TABLE}.invoice_term_category ;;
  }

  dimension: offer_amount {
    type: number
    sql: ${TABLE}.offer_amount ;;
  }

  dimension: offer_amount_cad {
    type: number
    sql: ${TABLE}.offer_amount_cad ;;
  }

  dimension: offer_amount_usd {
    type: number
    sql: ${TABLE}.offer_amount_usd ;;
  }

  dimension_group: offer_create {
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
    sql: ${TABLE}.offer_create_time ;;
  }

  dimension: offer_currency {
    type: string
    sql: ${TABLE}.offer_currency ;;
  }

  dimension: offer_fee_amount {
    type: number
    sql: ${TABLE}.offer_fee_amount ;;
  }

  dimension: offer_fee_amount_cad {
    type: number
    sql: ${TABLE}.offer_fee_amount_cad ;;
  }

  dimension: offer_fee_amount_usd {
    type: number
    sql: ${TABLE}.offer_fee_amount_usd ;;
  }

  dimension: offer_fee_rate {
    type: number
    sql: ${TABLE}.offer_fee_rate ;;
  }

  dimension: offer_id {
    type: number
    sql: ${TABLE}.offer_id ;;
  }

  dimension: offer_status {
    type: string
    sql: ${TABLE}.offer_status ;;
  }

  dimension: open_advance_ind {
    type: yesno
    sql: ${TABLE}.open_advance_ind ;;
  }

  dimension: product_type {
    type: string
    sql: ${TABLE}.product_type ;;
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
