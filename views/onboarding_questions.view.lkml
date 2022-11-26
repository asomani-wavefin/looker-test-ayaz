view: onboarding_questions {
  sql_table_name: l2_entities.onboarding_questions ;;

  dimension: ans_accepts_payments {
    type: string
    sql: ${TABLE}.ans_accepts_payments ;;
  }

  dimension: ans_accounting_expert_assistance {
    type: string
    sql: ${TABLE}.ans_accounting_expert_assistance ;;
  }

  dimension: ans_accounting_method {
    type: string
    sql: ${TABLE}.ans_accounting_method ;;
  }

  dimension: ans_business_status {
    type: string
    sql: ${TABLE}.ans_business_status ;;
  }

  dimension: ans_current_method_payroll_seg {
    type: string
    sql: ${TABLE}.ans_current_method_payroll_seg ;;
  }

  dimension: ans_customers {
    type: string
    sql: ${TABLE}.ans_customers ;;
  }

  dimension: ans_do_you_run_payroll {
    type: string
    sql: ${TABLE}.ans_do_you_run_payroll ;;
  }

  dimension: ans_invoice_amount {
    type: string
    sql: ${TABLE}.ans_invoice_amount ;;
  }

  dimension: ans_invoice_creation_method {
    type: string
    sql: ${TABLE}.ans_invoice_creation_method ;;
  }

  dimension: ans_invoices {
    type: string
    sql: ${TABLE}.ans_invoices ;;
  }

  dimension: ans_payments_history {
    type: string
    sql: ${TABLE}.ans_payments_history ;;
  }

  dimension: ans_payroll_current_method {
    type: string
    sql: ${TABLE}.ans_payroll_current_method ;;
  }

  dimension: ans_payroll_current_provider {
    type: string
    sql: ${TABLE}.ans_payroll_current_provider ;;
  }

  dimension: ans_payroll_how_do_you_pay_team {
    type: string
    sql: ${TABLE}.ans_payroll_how_do_you_pay_team ;;
  }

  dimension: ans_payroll_target {
    type: string
    sql: ${TABLE}.ans_payroll_target ;;
  }

  dimension: ans_payroll_target_payroll_seg {
    type: string
    sql: ${TABLE}.ans_payroll_target_payroll_seg ;;
  }

  dimension: ans_payroll_team {
    type: string
    sql: ${TABLE}.ans_payroll_team ;;
  }

  dimension: ans_payroll_team_size {
    type: string
    sql: ${TABLE}.ans_payroll_team_size ;;
  }

  dimension: ans_salary_type {
    type: string
    sql: ${TABLE}.ans_salary_type ;;
  }

  dimension: business_bank_account {
    type: string
    sql: ${TABLE}.business_bank_account ;;
  }

  dimension: business_expense {
    type: string
    sql: ${TABLE}.business_expense ;;
  }

  dimension: business_tenure {
    type: string
    sql: ${TABLE}.business_tenure ;;
  }

  dimension: identity_user_id {
    type: string
    sql: ${TABLE}.identity_user_id ;;
  }

  dimension: organization_sub_type {
    type: string
    sql: ${TABLE}.organization_sub_type ;;
  }

  dimension: organization_type {
    type: string
    sql: ${TABLE}.organization_type ;;
  }

  dimension: organizational_type {
    type: string
    sql: ${TABLE}.organizational_type ;;
  }

  dimension: sales_performer_segment {
    type: string
    sql: ${TABLE}.sales_performer_segment ;;
  }

  dimension: selected_path {
    type: string
    sql: ${TABLE}.selected_path ;;
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
