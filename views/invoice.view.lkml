view: invoice {
  sql_table_name: l2_entities.invoice ;;
  drill_fields: [recurring_invoice_id]

  dimension: recurring_invoice_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.recurring_invoice_id ;;
  }

  dimension: accounting_business_id {
    type: number
    sql: ${TABLE}.accounting_business_id ;;
  }

  dimension: active_ind {
    type: yesno
    sql: ${TABLE}.active_ind ;;
  }

  dimension: app_platform {
    type: string
    sql: ${TABLE}.app_platform ;;
  }

  dimension: auto_delivery_state {
    type: string
    sql: ${TABLE}.auto_delivery_state ;;
  }

  dimension: business_created_pe_ind {
    type: yesno
    sql: ${TABLE}.business_created_pe_ind ;;
  }

  dimension: business_currency {
    type: string
    sql: ${TABLE}.business_currency ;;
  }

  dimension: business_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.business_id ;;
  }

  dimension: business_sent_pe_ind {
    type: yesno
    sql: ${TABLE}.business_sent_pe_ind ;;
  }

  dimension: create_origin {
    type: string
    sql: ${TABLE}.create_origin ;;
  }

  dimension: create_source {
    type: string
    sql: ${TABLE}.create_source ;;
  }

  dimension: current_status {
    type: string
    sql: ${TABLE}.current_status ;;
  }

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
  }

  dimension: customer_invoice_view_count {
    type: number
    sql: ${TABLE}.customer_invoice_view_count ;;
  }

  dimension_group: date_added {
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
    sql: ${TABLE}.date_added ;;
  }

  dimension: identity_business_id {
    type: string
    sql: ${TABLE}.identity_business_id ;;
  }

  dimension: invoice_advance_agreement_id {
    type: number
    sql: ${TABLE}.invoice_advance_agreement_id ;;
  }

  dimension: invoice_amount {
    type: number
    sql: ${TABLE}.invoice_amount ;;
  }

  dimension: invoice_amount_usd {
    type: number
    sql: ${TABLE}.invoice_amount_usd ;;
  }

  dimension: invoice_bp_enabled_ind {
    type: yesno
    sql: ${TABLE}.invoice_bp_enabled_ind ;;
  }

  dimension: invoice_cc_enabled_ind {
    type: yesno
    sql: ${TABLE}.invoice_cc_enabled_ind ;;
  }

  dimension_group: invoice_create {
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
    sql: ${TABLE}.invoice_create_time ;;
  }

  dimension: invoice_currency {
    type: string
    sql: ${TABLE}.invoice_currency ;;
  }

  dimension_group: invoice {
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
    sql: ${TABLE}.invoice_date ;;
  }

  dimension_group: invoice_due {
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
    sql: ${TABLE}.invoice_due_date ;;
  }

  dimension: invoice_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.invoice_id ;;
  }

  dimension: invoice_sent_count {
    type: number
    sql: ${TABLE}.invoice_sent_count ;;
  }

  dimension: invoice_sent_ind {
    type: yesno
    sql: ${TABLE}.invoice_sent_ind ;;
  }

  dimension: invoice_sent_pe_ind {
    type: yesno
    sql: ${TABLE}.invoice_sent_pe_ind ;;
  }

  dimension: invoice_tax_amount {
    type: number
    sql: ${TABLE}.invoice_tax_amount ;;
  }

  dimension: invoice_tax_amount_usd {
    type: number
    sql: ${TABLE}.invoice_tax_amount_usd ;;
  }

  dimension: invoice_template {
    type: string
    sql: ${TABLE}.invoice_template ;;
  }

  dimension: invoice_viewer_pe_ind {
    type: yesno
    sql: ${TABLE}.invoice_viewer_pe_ind ;;
  }

  dimension_group: last_reminder {
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
    sql: ${TABLE}.last_reminder_date ;;
  }

  dimension_group: last_sent {
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
    sql: ${TABLE}.last_sent_time ;;
  }

  dimension: last_sent_via {
    type: string
    sql: ${TABLE}.last_sent_via ;;
  }

  dimension_group: last_viewed {
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
    sql: ${TABLE}.last_viewed_time ;;
  }

  dimension_group: last_wave_event {
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
    sql: ${TABLE}.last_wave_event_time ;;
  }

  dimension: last_wave_event_type {
    type: string
    sql: ${TABLE}.last_wave_event_type ;;
  }

  dimension: mobile_os_create_source {
    type: string
    sql: ${TABLE}.mobile_os_create_source ;;
  }

  dimension: payment_enabled_ind {
    type: yesno
    sql: ${TABLE}.payment_enabled_ind ;;
  }

  dimension: pretax_invoice_amount {
    type: number
    sql: ${TABLE}.pretax_invoice_amount ;;
  }

  dimension: pretax_invoice_amount_usd {
    type: number
    sql: ${TABLE}.pretax_invoice_amount_usd ;;
  }

  dimension: reminder_count {
    type: number
    sql: ${TABLE}.reminder_count ;;
  }

  dimension: terms_of_service_required_ind {
    type: yesno
    sql: ${TABLE}.terms_of_service_required_ind ;;
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
      invoice.recurring_invoice_id,
      customer.customer_id,
      customer.company_name,
      customer.customer_first_name,
      customer.customer_last_name,
      invoice.count,
      invoice_payment.count,
      wave_payment.count
    ]
  }
}
