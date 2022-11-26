view: bank_account {
  sql_table_name: l2_entities.bank_account ;;

  dimension: account_id {
    type: string
    sql: ${TABLE}.account_id ;;
  }

  dimension: account_origin {
    type: string
    sql: ${TABLE}.account_origin ;;
  }

  dimension: account_subtype {
    type: string
    sql: ${TABLE}.account_subtype ;;
  }

  dimension: account_type {
    type: string
    sql: ${TABLE}.account_type ;;
  }

  dimension: accounting_business_id {
    type: number
    sql: ${TABLE}.accounting_business_id ;;
  }

  dimension: active {
    type: yesno
    sql: ${TABLE}.active ;;
  }

  dimension: any_current_enabled_products_ind {
    type: yesno
    sql: ${TABLE}.any_current_enabled_products_ind ;;
  }

  dimension: any_enabled_products_ever_ind {
    type: yesno
    sql: ${TABLE}.any_enabled_products_ever_ind ;;
  }

  dimension_group: balance_last_retrieved {
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
    sql: ${TABLE}.balance_last_retrieved_at ;;
  }

  dimension: business_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.business_id ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.created_at ;;
  }

  dimension: currency_code {
    type: string
    sql: ${TABLE}.currency_code ;;
  }

  dimension: current_enabled_product_combination {
    type: string
    sql: ${TABLE}.current_enabled_product_combination ;;
  }

  dimension: current_enabled_product_permutation {
    type: string
    sql: ${TABLE}.current_enabled_product_permutation ;;
  }

  dimension: currently_payments_enabled_ind {
    type: yesno
    sql: ${TABLE}.currently_payments_enabled_ind ;;
  }

  dimension: currently_payroll_employee_enabled_ind {
    type: yesno
    sql: ${TABLE}.currently_payroll_employee_enabled_ind ;;
  }

  dimension: currently_payroll_enabled_ind {
    type: yesno
    sql: ${TABLE}.currently_payroll_enabled_ind ;;
  }

  dimension: currently_transaction_history_enabled_ind {
    type: yesno
    sql: ${TABLE}.currently_transaction_history_enabled_ind ;;
  }

  dimension: depository_account_ind {
    type: yesno
    sql: ${TABLE}.depository_account_ind ;;
  }

  dimension: ever_enabled_product_combination {
    type: string
    sql: ${TABLE}.ever_enabled_product_combination ;;
  }

  dimension: ever_enabled_product_permutation {
    type: string
    sql: ${TABLE}.ever_enabled_product_permutation ;;
  }

  dimension: ever_payments_enabled_ind {
    type: yesno
    sql: ${TABLE}.ever_payments_enabled_ind ;;
  }

  dimension: ever_payroll_employee_enabled_ind {
    type: yesno
    sql: ${TABLE}.ever_payroll_employee_enabled_ind ;;
  }

  dimension: ever_payroll_enabled_ind {
    type: yesno
    sql: ${TABLE}.ever_payroll_enabled_ind ;;
  }

  dimension: ever_transaction_history_enabled_ind {
    type: yesno
    sql: ${TABLE}.ever_transaction_history_enabled_ind ;;
  }

  dimension_group: first_imported_transaction {
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
    sql: ${TABLE}.first_imported_transaction_date ;;
  }

  dimension: identity_business_id {
    type: string
    sql: ${TABLE}.identity_business_id ;;
  }

  dimension: identity_user_id {
    type: string
    sql: ${TABLE}.identity_user_id ;;
  }

  dimension: institution_id {
    type: string
    sql: ${TABLE}.institution_id ;;
  }

  dimension: institution_name {
    type: string
    sql: ${TABLE}.institution_name ;;
  }

  dimension: is_business {
    type: yesno
    sql: ${TABLE}.is_business ;;
  }

  dimension_group: last_imported_transaction {
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
    sql: ${TABLE}.last_imported_transaction_date ;;
  }

  dimension: last_retrieved_available_balance {
    type: number
    sql: ${TABLE}.last_retrieved_available_balance ;;
  }

  dimension: last_retrieved_current_balance {
    type: number
    sql: ${TABLE}.last_retrieved_current_balance ;;
  }

  dimension: site_id {
    type: string
    sql: ${TABLE}.site_id ;;
  }

  dimension: total_imported_credit_txn {
    type: number
    sql: ${TABLE}.total_imported_credit_txn ;;
  }

  dimension: total_imported_credit_vol {
    type: number
    sql: ${TABLE}.total_imported_credit_vol ;;
  }

  dimension: total_imported_credit_vol_cad {
    type: number
    sql: ${TABLE}.total_imported_credit_vol_cad ;;
  }

  dimension: total_imported_credit_vol_usd {
    type: number
    sql: ${TABLE}.total_imported_credit_vol_usd ;;
  }

  dimension: total_imported_debit_txn {
    type: number
    sql: ${TABLE}.total_imported_debit_txn ;;
  }

  dimension: total_imported_debit_vol {
    type: number
    sql: ${TABLE}.total_imported_debit_vol ;;
  }

  dimension: total_imported_debit_vol_cad {
    type: number
    sql: ${TABLE}.total_imported_debit_vol_cad ;;
  }

  dimension: total_imported_debit_vol_usd {
    type: number
    sql: ${TABLE}.total_imported_debit_vol_usd ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [institution_name, business.accounting_business_id, business.business_name, user.identity_user_id]
  }
}
