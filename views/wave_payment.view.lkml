view: wave_payment {
  sql_table_name: l2_entities.wave_payment ;;

  dimension: accounting_business_id {
    type: number
    sql: ${TABLE}.accounting_business_id ;;
  }

  dimension: auto_payment_ind {
    type: yesno
    sql: ${TABLE}.auto_payment_ind ;;
  }

  dimension: business_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.business_id ;;
  }

  dimension: chargeback_transaction_id {
    type: string
    sql: ${TABLE}.chargeback_transaction_id ;;
  }

  dimension: checkout_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.checkout_id ;;
  }

  dimension: confirmation_code {
    type: string
    sql: ${TABLE}.confirmation_code ;;
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

  dimension: echeck_verification_type {
    type: string
    sql: ${TABLE}.echeck_verification_type ;;
  }

  dimension: fast_verification_ind {
    type: yesno
    sql: ${TABLE}.fast_verification_ind ;;
  }

  dimension: fee_amount {
    type: number
    sql: ${TABLE}.fee_amount ;;
  }

  dimension: fee_amount_cad {
    type: number
    sql: ${TABLE}.fee_amount_cad ;;
  }

  dimension: fee_amount_usd {
    type: number
    sql: ${TABLE}.fee_amount_usd ;;
  }

  dimension: free_processing_period_ind {
    type: yesno
    sql: ${TABLE}.free_processing_period_ind ;;
  }

  dimension: identity_business_id {
    type: string
    sql: ${TABLE}.identity_business_id ;;
  }

  dimension: invoice_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.invoice_id ;;
  }

  dimension: invoice_payment_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.invoice_payment_id ;;
  }

  dimension: last_submission_to_merchant_response {
    type: string
    sql: ${TABLE}.last_submission_to_merchant_response ;;
  }

  dimension_group: last_submission_to_merchant {
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
    sql: ${TABLE}.last_submission_to_merchant_time ;;
  }

  dimension: last_transaction_state_reason_code {
    type: string
    sql: ${TABLE}.last_transaction_state_reason_code ;;
  }

  dimension_group: last_transaction_state {
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
    sql: ${TABLE}.last_transaction_state_time ;;
  }

  dimension: payee_auth_id {
    type: number
    sql: ${TABLE}.payee_auth_id ;;
  }

  dimension: payment_amount {
    type: number
    sql: ${TABLE}.payment_amount ;;
  }

  dimension: payment_amount_cad {
    type: number
    sql: ${TABLE}.payment_amount_cad ;;
  }

  dimension: payment_amount_usd {
    type: number
    sql: ${TABLE}.payment_amount_usd ;;
  }

  dimension: payment_by {
    type: string
    sql: ${TABLE}.payment_by ;;
  }

  dimension: payment_card_source {
    type: string
    sql: ${TABLE}.payment_card_source ;;
  }

  dimension: payment_category {
    type: string
    sql: ${TABLE}.payment_category ;;
  }

  dimension: payment_channel {
    type: string
    sql: ${TABLE}.payment_channel ;;
  }

  dimension: payment_create_origin {
    type: string
    sql: ${TABLE}.payment_create_origin ;;
  }

  dimension: payment_create_source {
    type: string
    sql: ${TABLE}.payment_create_source ;;
  }

  dimension_group: payment_create {
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
    sql: ${TABLE}.payment_create_time ;;
  }

  dimension: payment_method {
    type: string
    sql: ${TABLE}.payment_method ;;
  }

  dimension: payment_method_id {
    type: number
    sql: ${TABLE}.payment_method_id ;;
  }

  dimension_group: payment_provider {
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
    sql: ${TABLE}.payment_provider_time ;;
  }

  dimension: payment_subcategory {
    type: string
    sql: ${TABLE}.payment_subcategory ;;
  }

  dimension: payment_submethod {
    type: string
    sql: ${TABLE}.payment_submethod ;;
  }

  dimension: payment_transaction_state {
    type: string
    sql: ${TABLE}.payment_transaction_state ;;
  }

  dimension: refund_transaction_id {
    type: string
    sql: ${TABLE}.refund_transaction_id ;;
  }

  dimension: saved_payment_method {
    type: string
    sql: ${TABLE}.saved_payment_method ;;
  }

  dimension: transaction_accepted_ind {
    type: yesno
    sql: ${TABLE}.transaction_accepted_ind ;;
  }

  dimension: transaction_currently_accepted_ind {
    type: yesno
    sql: ${TABLE}.transaction_currently_accepted_ind ;;
  }

  dimension: transaction_id {
    type: string
    sql: ${TABLE}.transaction_id ;;
  }

  dimension: wpp_business_profile_id {
    type: string
    sql: ${TABLE}.wpp_business_profile_id ;;
  }

  dimension: wpp_fee_percentage {
    type: number
    sql: ${TABLE}.wpp_fee_percentage ;;
  }

  dimension: wpp_fee_profile_id {
    type: number
    sql: ${TABLE}.wpp_fee_profile_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      business.accounting_business_id,
      business.business_name,
      invoice.recurring_invoice_id,
      invoice_payment.invoice_payment_id,
      customer.customer_id,
      customer.company_name,
      customer.customer_first_name,
      customer.customer_last_name,
      checkout.checkout_id
    ]
  }
}
