view: providers_transactions {
  sql_table_name: l2_entities.providers_transactions ;;

  dimension: accounting_business_id {
    type: number
    sql: ${TABLE}.accounting_business_id ;;
  }

  dimension: business_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.business_id ;;
  }

  dimension: expense_amount_usd {
    type: number
    sql: ${TABLE}.expense_amount_usd ;;
  }

  dimension: expense_txn_count {
    type: number
    sql: ${TABLE}.expense_txn_count ;;
  }

  dimension: identity_business_id {
    type: string
    sql: ${TABLE}.identity_business_id ;;
  }

  dimension: identity_user_id {
    type: string
    sql: ${TABLE}.identity_user_id ;;
  }

  dimension: income_amount_usd {
    type: number
    sql: ${TABLE}.income_amount_usd ;;
  }

  dimension: income_txn_count {
    type: number
    sql: ${TABLE}.income_txn_count ;;
  }

  dimension_group: insert_dt {
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
    sql: ${TABLE}.insert_dt ;;
  }

  dimension: provider {
    type: string
    sql: ${TABLE}.provider ;;
  }

  dimension_group: transaction {
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
    sql: ${TABLE}.transaction_date ;;
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
