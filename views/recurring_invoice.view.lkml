view: recurring_invoice {
  sql_table_name: l2_entities.recurring_invoice ;;
  drill_fields: [recurring_invoice_id]

  dimension: recurring_invoice_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.recurring_invoice_id ;;
  }

  dimension: attach_pdf_ind {
    type: yesno
    sql: ${TABLE}.attach_pdf_ind ;;
  }

  dimension: auto_payment_enabled_ind {
    type: yesno
    sql: ${TABLE}.auto_payment_enabled_ind ;;
  }

  dimension: auto_send_enabled_ind {
    type: yesno
    sql: ${TABLE}.auto_send_enabled_ind ;;
  }

  dimension: business_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.business_id ;;
  }

  dimension: copy_myself_ind {
    type: yesno
    sql: ${TABLE}.copy_myself_ind ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
  }

  dimension: day_of_month {
    type: number
    sql: ${TABLE}.day_of_month ;;
  }

  dimension: day_of_week {
    type: number
    sql: ${TABLE}.day_of_week ;;
  }

  dimension: deliver_on {
    type: string
    sql: ${TABLE}.deliver_on ;;
  }

  dimension: enable_customer_payment_by_credit_card_ind {
    type: yesno
    sql: ${TABLE}.enable_customer_payment_by_credit_card_ind ;;
  }

  dimension_group: final_invoice {
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
    sql: ${TABLE}.final_invoice_date ;;
  }

  dimension_group: first_recurring_invoice_send {
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
    sql: ${TABLE}.first_recurring_invoice_send_date ;;
  }

  dimension: identity_business_id {
    type: string
    sql: ${TABLE}.identity_business_id ;;
  }

  dimension: invoice_next_month_ind {
    type: yesno
    sql: ${TABLE}.invoice_next_month_ind ;;
  }

  dimension: max_invoices {
    type: number
    sql: ${TABLE}.max_invoices ;;
  }

  dimension: month_of_year {
    type: number
    sql: ${TABLE}.month_of_year ;;
  }

  dimension_group: next_recurring_invoice {
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
    sql: ${TABLE}.next_recurring_invoice_date ;;
  }

  dimension: num_generated_to_date {
    type: number
    sql: ${TABLE}.num_generated_to_date ;;
  }

  dimension: payment_channel {
    type: string
    sql: ${TABLE}.payment_channel ;;
  }

  dimension: payment_terms {
    type: string
    sql: ${TABLE}.payment_terms ;;
  }

  dimension_group: previous_recurring_invoice {
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
    sql: ${TABLE}.previous_recurring_invoice_date ;;
  }

  dimension: recurrence_interval {
    type: number
    sql: ${TABLE}.recurrence_interval ;;
  }

  dimension: recurring_invoice_active_ind {
    type: yesno
    sql: ${TABLE}.recurring_invoice_active_ind ;;
  }

  dimension: recurring_invoice_amount {
    type: number
    sql: ${TABLE}.recurring_invoice_amount ;;
  }

  dimension: recurring_invoice_amount_usd {
    type: number
    sql: ${TABLE}.recurring_invoice_amount_usd ;;
  }

  dimension: recurring_invoice_amount_with_tax {
    type: number
    sql: ${TABLE}.recurring_invoice_amount_with_tax ;;
  }

  dimension: recurring_invoice_amount_with_tax_usd {
    type: number
    sql: ${TABLE}.recurring_invoice_amount_with_tax_usd ;;
  }

  dimension_group: recurring_invoice_create {
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
    sql: ${TABLE}.recurring_invoice_create_time ;;
  }

  dimension: recurring_invoice_frequency {
    type: string
    sql: ${TABLE}.recurring_invoice_frequency ;;
  }

  dimension: recurring_invoice_state {
    type: string
    sql: ${TABLE}.recurring_invoice_state ;;
  }

  dimension: saved_payment_method_ind {
    type: yesno
    sql: ${TABLE}.saved_payment_method_ind ;;
  }

  dimension_group: schedule_end {
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
    sql: ${TABLE}.schedule_end_date ;;
  }

  dimension_group: schedule_start {
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
    sql: ${TABLE}.schedule_start_date ;;
  }

  dimension: source_type {
    type: string
    sql: ${TABLE}.source_type ;;
  }

  dimension: timezone_id {
    type: string
    sql: ${TABLE}.timezone_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      recurring_invoice_id,
      business.accounting_business_id,
      business.business_name,
      customer.customer_id,
      customer.company_name,
      customer.customer_first_name,
      customer.customer_last_name
    ]
  }
}
