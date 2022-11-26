view: optimizely_segmentation {
  sql_table_name: l2_entities.optimizely_segmentation ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: business_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.business_id ;;
  }

  dimension: experiment {
    type: string
    sql: ${TABLE}.experiment ;;
  }

  dimension: experiment_id {
    type: number
    sql: ${TABLE}.experiment_id ;;
  }

  dimension: experiment_status {
    type: string
    sql: ${TABLE}.experiment_status ;;
  }

  dimension: id_type {
    type: string
    sql: ${TABLE}.id_type ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  dimension: variation {
    type: string
    sql: ${TABLE}.variation ;;
  }

  measure: count {
    type: count
    drill_fields: [id, business.accounting_business_id, business.business_name, user.identity_user_id]
  }
}
