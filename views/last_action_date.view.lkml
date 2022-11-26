view: last_action_date {
  sql_table_name: l2_entities.last_action_date ;;

  dimension: accounting_business_id {
    type: number
    sql: ${TABLE}.accounting_business_id ;;
  }

  dimension: business_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.business_id ;;
  }

  dimension: identity_business_id {
    type: string
    sql: ${TABLE}.identity_business_id ;;
  }

  dimension: identity_user_id {
    type: string
    sql: ${TABLE}.identity_user_id ;;
  }

  dimension_group: last_accounting {
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
    sql: ${TABLE}.last_accounting_date ;;
  }

  dimension_group: last_bank_integration {
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
    sql: ${TABLE}.last_bank_integration_date ;;
  }

  dimension_group: last_bank_payment_create {
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
    sql: ${TABLE}.last_bank_payment_create_date ;;
  }

  dimension_group: last_bill_added {
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
    sql: ${TABLE}.last_bill_added_date ;;
  }

  dimension_group: last_cc_payment_create {
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
    sql: ${TABLE}.last_cc_payment_create_date ;;
  }

  dimension_group: last_checkout_create {
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
    sql: ${TABLE}.last_checkout_create_date ;;
  }

  dimension_group: last_checkout_payment {
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
    sql: ${TABLE}.last_checkout_payment_date ;;
  }

  dimension_group: last_ecosystem_action {
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
    sql: ${TABLE}.last_ecosystem_action_date ;;
  }

  dimension_group: last_edit_transaction {
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
    sql: ${TABLE}.last_edit_transaction_date ;;
  }

  dimension_group: last_estimate_create {
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
    sql: ${TABLE}.last_estimate_create_date ;;
  }

  dimension_group: last_invoice_create {
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
    sql: ${TABLE}.last_invoice_create_date ;;
  }

  dimension_group: last_manual_transaction {
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
    sql: ${TABLE}.last_manual_transaction_date ;;
  }

  dimension_group: last_payment_create {
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
    sql: ${TABLE}.last_payment_create_date ;;
  }

  dimension_group: last_payroll_approved {
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
    sql: ${TABLE}.last_payroll_approved_date ;;
  }

  dimension_group: last_payroll_run {
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
    sql: ${TABLE}.last_payroll_run_date ;;
  }

  dimension_group: last_receipt_imported {
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
    sql: ${TABLE}.last_receipt_imported_date ;;
  }

  dimension_group: last_receipt_uploaded {
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
    sql: ${TABLE}.last_receipt_uploaded_date ;;
  }

  dimension_group: last_recurring_invoice_added {
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
    sql: ${TABLE}.last_recurring_invoice_added_date ;;
  }

  dimension_group: last_verify_transaction {
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
    sql: ${TABLE}.last_verify_transaction_date ;;
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
