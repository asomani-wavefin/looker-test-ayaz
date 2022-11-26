view: first_action_date {
  sql_table_name: l2_entities.first_action_date ;;

  dimension: accounting_business_id {
    type: number
    sql: ${TABLE}.accounting_business_id ;;
  }

  dimension_group: business_create {
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
    sql: ${TABLE}.business_create_date ;;
  }

  dimension: business_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.business_id ;;
  }

  dimension_group: business_inactive {
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
    sql: ${TABLE}.business_inactive_date ;;
  }

  dimension_group: first_accepted_payment_create {
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
    sql: ${TABLE}.first_accepted_payment_create_date ;;
  }

  dimension_group: first_accounting_activation_event {
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
    sql: ${TABLE}.first_accounting_activation_event_date ;;
  }

  dimension_group: first_accounting_activation_late_start {
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
    sql: ${TABLE}.first_accounting_activation_late_start_date ;;
  }

  dimension_group: first_accounting_after_trial {
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
    sql: ${TABLE}.first_accounting_after_trial_date ;;
  }

  dimension_group: first_accounting {
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
    sql: ${TABLE}.first_accounting_date ;;
  }

  dimension_group: first_android_receipt_uploaded {
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
    sql: ${TABLE}.first_android_receipt_uploaded_date ;;
  }

  dimension_group: first_auto_payment_after_trial_create {
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
    sql: ${TABLE}.first_auto_payment_after_trial_create_date ;;
  }

  dimension_group: first_auto_payment_create {
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
    sql: ${TABLE}.first_auto_payment_create_date ;;
  }

  dimension_group: first_bank_integration {
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
    sql: ${TABLE}.first_bank_integration_date ;;
  }

  dimension_group: first_bill_added {
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
    sql: ${TABLE}.first_bill_added_date ;;
  }

  dimension_group: first_bill_after_trial {
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
    sql: ${TABLE}.first_bill_after_trial_date ;;
  }

  dimension_group: first_cc_payment_after_trial_create {
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
    sql: ${TABLE}.first_cc_payment_after_trial_create_date ;;
  }

  dimension_group: first_cc_payment_create {
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
    sql: ${TABLE}.first_cc_payment_create_date ;;
  }

  dimension_group: first_checkout_create_after_trial {
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
    sql: ${TABLE}.first_checkout_create_after_trial_date ;;
  }

  dimension_group: first_checkout_create {
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
    sql: ${TABLE}.first_checkout_create_date ;;
  }

  dimension_group: first_contractor_create {
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
    sql: ${TABLE}.first_contractor_create_date ;;
  }

  dimension_group: first_direct_payment_create {
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
    sql: ${TABLE}.first_direct_payment_create_date ;;
  }

  dimension_group: first_ecosystem_action_after_trial {
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
    sql: ${TABLE}.first_ecosystem_action_after_trial_date ;;
  }

  dimension_group: first_ecosystem_action {
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
    sql: ${TABLE}.first_ecosystem_action_date ;;
  }

  dimension_group: first_estimate_after_trial {
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
    sql: ${TABLE}.first_estimate_after_trial_date ;;
  }

  dimension_group: first_estimate_create {
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
    sql: ${TABLE}.first_estimate_create_date ;;
  }

  dimension_group: first_instant_payout_contributable {
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
    sql: ${TABLE}.first_instant_payout_contributable_time ;;
  }

  dimension_group: first_instant_payout {
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
    sql: ${TABLE}.first_instant_payout_date ;;
  }

  dimension_group: first_instant_payout_eligibility {
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
    sql: ${TABLE}.first_instant_payout_eligibility_date ;;
  }

  dimension_group: first_instant_payout_schedule_create {
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
    sql: ${TABLE}.first_instant_payout_schedule_create_date ;;
  }

  dimension_group: first_invoice_advance_agreement_accepted {
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
    sql: ${TABLE}.first_invoice_advance_agreement_accepted_date ;;
  }

  dimension_group: first_invoice_advance_offer {
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
    sql: ${TABLE}.first_invoice_advance_offer_date ;;
  }

  dimension_group: first_invoice_after_trial {
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
    sql: ${TABLE}.first_invoice_after_trial_date ;;
  }

  dimension_group: first_invoice_create {
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
    sql: ${TABLE}.first_invoice_create_date ;;
  }

  dimension_group: first_invoice_payment_create {
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
    sql: ${TABLE}.first_invoice_payment_create_date ;;
  }

  dimension_group: first_invoice_sent {
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
    sql: ${TABLE}.first_invoice_sent_date ;;
  }

  dimension_group: first_ios_receipt_uploaded {
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
    sql: ${TABLE}.first_ios_receipt_uploaded_date ;;
  }

  dimension_group: first_lending_funded {
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
    sql: ${TABLE}.first_lending_funded_date ;;
  }

  dimension_group: first_lending_referral {
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
    sql: ${TABLE}.first_lending_referral_date ;;
  }

  dimension_group: first_m2_accepted_payment_create {
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
    sql: ${TABLE}.first_m2_accepted_payment_create_date ;;
  }

  dimension_group: first_m2_accounting {
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
    sql: ${TABLE}.first_m2_accounting_date ;;
  }

  dimension_group: first_m2_auto_payment_create {
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
    sql: ${TABLE}.first_m2_auto_payment_create_date ;;
  }

  dimension_group: first_m2_bill_added {
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
    sql: ${TABLE}.first_m2_bill_added_date ;;
  }

  dimension_group: first_m2_cc_payment_create {
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
    sql: ${TABLE}.first_m2_cc_payment_create_date ;;
  }

  dimension_group: first_m2_checkout_create {
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
    sql: ${TABLE}.first_m2_checkout_create_date ;;
  }

  dimension_group: first_m2_ecosystem_action {
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
    sql: ${TABLE}.first_m2_ecosystem_action_date ;;
  }

  dimension_group: first_m2_estimate_create {
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
    sql: ${TABLE}.first_m2_estimate_create_date ;;
  }

  dimension_group: first_m2_invoice_create {
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
    sql: ${TABLE}.first_m2_invoice_create_date ;;
  }

  dimension_group: first_m2_payment_create {
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
    sql: ${TABLE}.first_m2_payment_create_date ;;
  }

  dimension_group: first_m2_receipt_uploaded {
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
    sql: ${TABLE}.first_m2_receipt_uploaded_date ;;
  }

  dimension_group: first_m2_recurring_invoice_added {
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
    sql: ${TABLE}.first_m2_recurring_invoice_added_date ;;
  }

  dimension_group: first_m2_stripe_payment_create {
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
    sql: ${TABLE}.first_m2_stripe_payment_create_date ;;
  }

  dimension_group: first_m2_upload_bank_statement {
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
    sql: ${TABLE}.first_m2_upload_bank_statement_date ;;
  }

  dimension_group: first_m2_wpp_accepted_payment_create {
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
    sql: ${TABLE}.first_m2_wpp_accepted_payment_create_date ;;
  }

  dimension_group: first_m2_wpp_bank_accepted_payment_create {
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
    sql: ${TABLE}.first_m2_wpp_bank_accepted_payment_create_date ;;
  }

  dimension_group: first_m2_wpp_bank_payment_create {
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
    sql: ${TABLE}.first_m2_wpp_bank_payment_create_date ;;
  }

  dimension_group: first_m2_wpp_cc_accepted_payment_create {
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
    sql: ${TABLE}.first_m2_wpp_cc_accepted_payment_create_date ;;
  }

  dimension_group: first_m2_wpp_cc_payment_create {
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
    sql: ${TABLE}.first_m2_wpp_cc_payment_create_date ;;
  }

  dimension_group: first_m2_wpp_payment_create {
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
    sql: ${TABLE}.first_m2_wpp_payment_create_date ;;
  }

  dimension_group: first_m3_accounting {
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
    sql: ${TABLE}.first_m3_accounting_date ;;
  }

  dimension_group: first_m3_bill_added {
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
    sql: ${TABLE}.first_m3_bill_added_date ;;
  }

  dimension_group: first_m3_checkout_create {
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
    sql: ${TABLE}.first_m3_checkout_create_date ;;
  }

  dimension_group: first_m3_estimate_create {
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
    sql: ${TABLE}.first_m3_estimate_create_date ;;
  }

  dimension_group: first_m3_invoice_create {
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
    sql: ${TABLE}.first_m3_invoice_create_date ;;
  }

  dimension_group: first_m3_receipt_uploaded {
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
    sql: ${TABLE}.first_m3_receipt_uploaded_date ;;
  }

  dimension_group: first_m3_recurring_invoice_added {
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
    sql: ${TABLE}.first_m3_recurring_invoice_added_date ;;
  }

  dimension_group: first_m3_upload_bank_statement {
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
    sql: ${TABLE}.first_m3_upload_bank_statement_date ;;
  }

  dimension_group: first_mobile_invoice_create {
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
    sql: ${TABLE}.first_mobile_invoice_create_date ;;
  }

  dimension_group: first_mobile_receipt_uploaded {
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
    sql: ${TABLE}.first_mobile_receipt_uploaded_date ;;
  }

  dimension_group: first_paid_instant_payout_contributable {
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
    sql: ${TABLE}.first_paid_instant_payout_contributable_time ;;
  }

  dimension_group: first_paid_instant_payout {
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
    sql: ${TABLE}.first_paid_instant_payout_date ;;
  }

  dimension_group: first_payment_create_after_trial {
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
    sql: ${TABLE}.first_payment_create_after_trial_date ;;
  }

  dimension_group: first_payment_create {
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
    sql: ${TABLE}.first_payment_create_date ;;
  }

  dimension_group: first_payment_signup {
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
    sql: ${TABLE}.first_payment_signup_date ;;
  }

  dimension_group: first_payroll_activation_event {
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
    sql: ${TABLE}.first_payroll_activation_event_date ;;
  }

  dimension_group: first_payroll_activation_late_start {
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
    sql: ${TABLE}.first_payroll_activation_late_start_date ;;
  }

  dimension_group: first_payroll_approved {
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
    sql: ${TABLE}.first_payroll_approved_date ;;
  }

  dimension_group: first_payroll_create {
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
    sql: ${TABLE}.first_payroll_create_date ;;
  }

  dimension_group: first_payroll_dd_application_start {
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
    sql: ${TABLE}.first_payroll_dd_application_start_date ;;
  }

  dimension_group: first_payroll_dd_application_submitted {
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
    sql: ${TABLE}.first_payroll_dd_application_submitted_date ;;
  }

  dimension_group: first_payroll_dd_commenced {
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
    sql: ${TABLE}.first_payroll_dd_commenced_date ;;
  }

  dimension_group: first_payroll_dd {
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
    sql: ${TABLE}.first_payroll_dd_date ;;
  }

  dimension_group: first_payroll_employer_activation {
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
    sql: ${TABLE}.first_payroll_employer_activation_date ;;
  }

  dimension_group: first_payroll_invoice {
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
    sql: ${TABLE}.first_payroll_invoice_date ;;
  }

  dimension_group: first_payroll_run {
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
    sql: ${TABLE}.first_payroll_run_date ;;
  }

  dimension_group: first_payroll_signup {
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
    sql: ${TABLE}.first_payroll_signup_date ;;
  }

  dimension_group: first_payroll_subscription {
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
    sql: ${TABLE}.first_payroll_subscription_date ;;
  }

  dimension_group: first_payroll_trial {
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
    sql: ${TABLE}.first_payroll_trial_date ;;
  }

  dimension_group: first_payroll_tse_application_start {
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
    sql: ${TABLE}.first_payroll_tse_application_start_date ;;
  }

  dimension_group: first_payroll_tse_application_submit {
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
    sql: ${TABLE}.first_payroll_tse_application_submit_date ;;
  }

  dimension_group: first_payroll_tse {
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
    sql: ${TABLE}.first_payroll_tse_date ;;
  }

  dimension_group: first_payroll_unsubscribe {
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
    sql: ${TABLE}.first_payroll_unsubscribe_date ;;
  }

  dimension_group: first_pe_invoice_create {
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
    sql: ${TABLE}.first_pe_invoice_create_date ;;
  }

  dimension_group: first_receipt_imported {
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
    sql: ${TABLE}.first_receipt_imported_date ;;
  }

  dimension_group: first_receipt_uploaded_after_trial {
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
    sql: ${TABLE}.first_receipt_uploaded_after_trial_date ;;
  }

  dimension_group: first_receipt_uploaded {
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
    sql: ${TABLE}.first_receipt_uploaded_date ;;
  }

  dimension_group: first_recurring_invoice_added {
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
    sql: ${TABLE}.first_recurring_invoice_added_date ;;
  }

  dimension_group: first_recurring_invoice_after_trial_added {
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
    sql: ${TABLE}.first_recurring_invoice_after_trial_added_date ;;
  }

  dimension_group: first_sales_activation_event {
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
    sql: ${TABLE}.first_sales_activation_event_date ;;
  }

  dimension_group: first_sales_activation_late_start {
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
    sql: ${TABLE}.first_sales_activation_late_start_date ;;
  }

  dimension_group: first_stripe_payment_after_trial_create {
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
    sql: ${TABLE}.first_stripe_payment_after_trial_create_date ;;
  }

  dimension_group: first_stripe_payment_create {
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
    sql: ${TABLE}.first_stripe_payment_create_date ;;
  }

  dimension_group: first_stripe_signup {
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
    sql: ${TABLE}.first_stripe_signup_date ;;
  }

  dimension_group: first_tax_service_start {
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
    sql: ${TABLE}.first_tax_service_start_date ;;
  }

  dimension_group: first_tax_service_stop {
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
    sql: ${TABLE}.first_tax_service_stop_date ;;
  }

  dimension_group: first_upload_bank_statement_after_trial {
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
    sql: ${TABLE}.first_upload_bank_statement_after_trial_date ;;
  }

  dimension_group: first_upload_bank_statement {
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
    sql: ${TABLE}.first_upload_bank_statement_date ;;
  }

  dimension_group: first_wave_connect {
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
    sql: ${TABLE}.first_wave_connect_date ;;
  }

  dimension_group: first_wave_money_applepay_activated {
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
    sql: ${TABLE}.first_wave_money_applepay_activated_date ;;
  }

  dimension_group: first_wave_money_application_submitted {
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
    sql: ${TABLE}.first_wave_money_application_submitted_date ;;
  }

  dimension_group: first_wave_money_card_activated {
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
    sql: ${TABLE}.first_wave_money_card_activated_date ;;
  }

  dimension_group: first_wave_money_card_shipped {
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
    sql: ${TABLE}.first_wave_money_card_shipped_date ;;
  }

  dimension_group: first_wave_money_credit_transaction {
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
    sql: ${TABLE}.first_wave_money_credit_transaction_date ;;
  }

  dimension_group: first_wave_money_debit_transaction {
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
    sql: ${TABLE}.first_wave_money_debit_transaction_date ;;
  }

  dimension_group: first_wave_money_deposit {
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
    sql: ${TABLE}.first_wave_money_deposit_date ;;
  }

  dimension_group: first_wave_money_invite_accepted {
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
    sql: ${TABLE}.first_wave_money_invite_accepted_date ;;
  }

  dimension_group: first_wave_money_login {
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
    sql: ${TABLE}.first_wave_money_login_date ;;
  }

  dimension_group: first_wave_money_onboarding_activation {
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
    sql: ${TABLE}.first_wave_money_onboarding_activation_date ;;
  }

  dimension_group: first_wave_money_signup {
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
    sql: ${TABLE}.first_wave_money_signup_date ;;
  }

  dimension_group: first_wave_money_spend {
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
    sql: ${TABLE}.first_wave_money_spend_date ;;
  }

  dimension_group: first_web_invoice_create {
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
    sql: ${TABLE}.first_web_invoice_create_date ;;
  }

  dimension_group: first_wpp_accepted_payment_create {
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
    sql: ${TABLE}.first_wpp_accepted_payment_create_date ;;
  }

  dimension_group: first_wpp_bank_accepted_payment_create {
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
    sql: ${TABLE}.first_wpp_bank_accepted_payment_create_date ;;
  }

  dimension_group: first_wpp_bank_payment_after_trial_create {
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
    sql: ${TABLE}.first_wpp_bank_payment_after_trial_create_date ;;
  }

  dimension_group: first_wpp_bank_payment_create {
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
    sql: ${TABLE}.first_wpp_bank_payment_create_date ;;
  }

  dimension_group: first_wpp_cc_accepted_payment_create {
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
    sql: ${TABLE}.first_wpp_cc_accepted_payment_create_date ;;
  }

  dimension_group: first_wpp_cc_payment_create_after_trial {
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
    sql: ${TABLE}.first_wpp_cc_payment_create_after_trial_date ;;
  }

  dimension_group: first_wpp_cc_payment_create {
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
    sql: ${TABLE}.first_wpp_cc_payment_create_date ;;
  }

  dimension_group: first_wpp_onboarding {
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
    sql: ${TABLE}.first_wpp_onboarding_date ;;
  }

  dimension_group: first_wpp_payment_create_after_trial {
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
    sql: ${TABLE}.first_wpp_payment_create_after_trial_date ;;
  }

  dimension_group: first_wpp_payment_create {
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
    sql: ${TABLE}.first_wpp_payment_create_date ;;
  }

  dimension_group: first_wpp_signup {
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
    sql: ${TABLE}.first_wpp_signup_date ;;
  }

  dimension: identity_business_id {
    type: string
    sql: ${TABLE}.identity_business_id ;;
  }

  dimension: identity_user_id {
    type: string
    sql: ${TABLE}.identity_user_id ;;
  }

  dimension_group: user_create {
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
    sql: ${TABLE}.user_create_date ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [user.identity_user_id, business.accounting_business_id, business.business_name]
  }
}
