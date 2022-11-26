connection: "prod-redshift"

# include all the views
include: "/views/**/*.view"

datagroup: test-ayaz_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: test-ayaz_default_datagroup

explore: bank_account {
  join: business {
    type: left_outer
    sql_on: ${bank_account.business_id} = ${business.accounting_business_id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${bank_account.user_id} = ${user.identity_user_id} ;;
    relationship: many_to_one
  }
}

explore: bill {
  join: business {
    type: left_outer
    sql_on: ${bill.business_id} = ${business.accounting_business_id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${bill.user_id} = ${user.identity_user_id} ;;
    relationship: many_to_one
  }

  join: vendor {
    type: left_outer
    sql_on: ${bill.vendor_id} = ${vendor.vendor_id} ;;
    relationship: many_to_one
  }
}

explore: bill_payment {
  join: business {
    type: left_outer
    sql_on: ${bill_payment.business_id} = ${business.accounting_business_id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${bill_payment.user_id} = ${user.identity_user_id} ;;
    relationship: many_to_one
  }

  join: bill {
    type: left_outer
    sql_on: ${bill_payment.bill_id} = ${bill.bill_id} ;;
    relationship: many_to_one
  }

  join: vendor {
    type: left_outer
    sql_on: ${bill_payment.vendor_id} = ${vendor.vendor_id} ;;
    relationship: many_to_one
  }
}

explore: business {
  join: user {
    type: left_outer
    sql_on: ${business.user_id} = ${user.identity_user_id} ;;
    relationship: many_to_one
  }
}

explore: business_owner {
  join: user {
    type: left_outer
    sql_on: ${business_owner.user_id} = ${user.identity_user_id} ;;
    relationship: many_to_one
  }
}

explore: checkout {
  join: business {
    type: left_outer
    sql_on: ${checkout.business_id} = ${business.accounting_business_id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${business.user_id} = ${user.identity_user_id} ;;
    relationship: many_to_one
  }
}

explore: credit_business_events {
  join: business {
    type: left_outer
    sql_on: ${credit_business_events.business_id} = ${business.accounting_business_id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${business.user_id} = ${user.identity_user_id} ;;
    relationship: many_to_one
  }
}

explore: credit_product_underwriting_profiles {
  join: business {
    type: left_outer
    sql_on: ${credit_product_underwriting_profiles.business_id} = ${business.accounting_business_id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${credit_product_underwriting_profiles.user_id} = ${user.identity_user_id} ;;
    relationship: many_to_one
  }
}

explore: customer {}

explore: d_date {}

explore: estimate {
  join: business {
    type: left_outer
    sql_on: ${estimate.business_id} = ${business.accounting_business_id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${estimate.customer_id} = ${customer.customer_id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${business.user_id} = ${user.identity_user_id} ;;
    relationship: many_to_one
  }
}

explore: first_action_date {
  join: user {
    type: left_outer
    sql_on: ${first_action_date.user_id} = ${user.identity_user_id} ;;
    relationship: many_to_one
  }

  join: business {
    type: left_outer
    sql_on: ${first_action_date.business_id} = ${business.accounting_business_id} ;;
    relationship: many_to_one
  }
}

explore: holidays {}

explore: invoice {
  join: business {
    type: left_outer
    sql_on: ${invoice.business_id} = ${business.accounting_business_id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${invoice.customer_id} = ${customer.customer_id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${business.user_id} = ${user.identity_user_id} ;;
    relationship: many_to_one
  }
}

explore: invoice_advance_transactions {
  join: business {
    type: left_outer
    sql_on: ${invoice_advance_transactions.business_id} = ${business.accounting_business_id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${invoice_advance_transactions.user_id} = ${user.identity_user_id} ;;
    relationship: many_to_one
  }
}

explore: invoice_payment {
  join: business {
    type: left_outer
    sql_on: ${invoice_payment.business_id} = ${business.accounting_business_id} ;;
    relationship: many_to_one
  }

  join: invoice {
    type: left_outer
    sql_on: ${invoice_payment.invoice_id} = ${invoice.recurring_invoice_id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${business.user_id} = ${user.identity_user_id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${invoice.customer_id} = ${customer.customer_id} ;;
    relationship: many_to_one
  }
}

explore: last_action_date {
  join: business {
    type: left_outer
    sql_on: ${last_action_date.business_id} = ${business.accounting_business_id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${last_action_date.user_id} = ${user.identity_user_id} ;;
    relationship: many_to_one
  }
}

explore: lending_ondeck {
  join: user {
    type: left_outer
    sql_on: ${lending_ondeck.user_id} = ${user.identity_user_id} ;;
    relationship: many_to_one
  }
}

explore: offers_advances {
  join: business {
    type: left_outer
    sql_on: ${offers_advances.business_id} = ${business.accounting_business_id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${offers_advances.user_id} = ${user.identity_user_id} ;;
    relationship: many_to_one
  }
}

explore: onboarding_questions {
  join: user {
    type: left_outer
    sql_on: ${onboarding_questions.user_id} = ${user.identity_user_id} ;;
    relationship: many_to_one
  }
}

explore: optimizely_events {
  join: business {
    type: left_outer
    sql_on: ${optimizely_events.business_id} = ${business.accounting_business_id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${optimizely_events.user_id} = ${user.identity_user_id} ;;
    relationship: many_to_one
  }
}

explore: optimizely_segmentation {
  join: business {
    type: left_outer
    sql_on: ${optimizely_segmentation.business_id} = ${business.accounting_business_id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${optimizely_segmentation.user_id} = ${user.identity_user_id} ;;
    relationship: many_to_one
  }
}

explore: providers_transactions {
  join: business {
    type: left_outer
    sql_on: ${providers_transactions.business_id} = ${business.accounting_business_id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${providers_transactions.user_id} = ${user.identity_user_id} ;;
    relationship: many_to_one
  }
}

explore: receipt {
  join: business {
    type: left_outer
    sql_on: ${receipt.business_id} = ${business.accounting_business_id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${receipt.user_id} = ${user.identity_user_id} ;;
    relationship: many_to_one
  }
}

explore: recurring_invoice {
  join: business {
    type: left_outer
    sql_on: ${recurring_invoice.business_id} = ${business.accounting_business_id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${recurring_invoice.customer_id} = ${customer.customer_id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${business.user_id} = ${user.identity_user_id} ;;
    relationship: many_to_one
  }
}

explore: threat_metrix_password_reset_policy {}

explore: user {}

explore: user_login_attribution {
  join: user {
    type: left_outer
    sql_on: ${user_login_attribution.user_id} = ${user.identity_user_id} ;;
    relationship: many_to_one
  }
}

explore: user_utm_parameters {
  join: user {
    type: left_outer
    sql_on: ${user_utm_parameters.user_id} = ${user.identity_user_id} ;;
    relationship: many_to_one
  }
}

explore: vendor {}

explore: wave_business_actions {
  join: business {
    type: left_outer
    sql_on: ${wave_business_actions.business_id} = ${business.accounting_business_id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${wave_business_actions.user_id} = ${user.identity_user_id} ;;
    relationship: many_to_one
  }
}

explore: wave_payment {
  join: business {
    type: left_outer
    sql_on: ${wave_payment.business_id} = ${business.accounting_business_id} ;;
    relationship: many_to_one
  }

  join: invoice {
    type: left_outer
    sql_on: ${wave_payment.invoice_id} = ${invoice.recurring_invoice_id} ;;
    relationship: many_to_one
  }

  join: invoice_payment {
    type: left_outer
    sql_on: ${wave_payment.invoice_payment_id} = ${invoice_payment.invoice_payment_id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${wave_payment.customer_id} = ${customer.customer_id} ;;
    relationship: many_to_one
  }

  join: checkout {
    type: left_outer
    sql_on: ${wave_payment.checkout_id} = ${checkout.checkout_id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${business.user_id} = ${user.identity_user_id} ;;
    relationship: many_to_one
  }
}

explore: zendesk_ticket {
  join: user {
    type: left_outer
    sql_on: ${zendesk_ticket.user_id} = ${user.identity_user_id} ;;
    relationship: many_to_one
  }
}
