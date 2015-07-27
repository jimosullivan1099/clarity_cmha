- view: services
  fields:

  - dimension: id
    primary_key: true
    hidden: true
    type: int
    sql: ${TABLE}.id

#   - dimension_group: added
#     type: time
#     timeframes: [time, date, week, month]
#     sql: ${TABLE}.added_date
# 
#   - dimension_group: last_updated
#     type: time
#     timeframes: [time, date, week, month]
#     sql: ${TABLE}.last_updated

  - dimension: name
<<<<<<< HEAD
    bypass_suggest_restrictions: true
    sql: ${TABLE}.name

  - dimension: service_item_name
    sql: ${service_items.name}

# start_date, end_date

  - dimension: start_date
    type: time
    timeframes: [time, date, week, month]
    sql: ${client_services.start_date}

  - dimension: end_date
    type: time
    timeframes: [time, date, week, month]
    sql: ${client_services.end_date}

  - dimension: ref_agency
    hidden: true
    type: int
    sql: ${TABLE}.ref_agency

  - dimension: ref_category
    label: 'Service Category'
    bypass_suggest_restrictions: true
=======
    sql: ${TABLE}.name

  - dimension: service_item_name
    sql: ${service_items.name}

# start_date, end_date

  - dimension: start_date
    type: time
    timeframes: [time, date, week, month]
    sql: ${client_services.start_date}

  - dimension: end_date
    type: time
    timeframes: [time, date, week, month]
    sql: ${client_services.end_date}

  - dimension: ref_agency
    hidden: true
    type: int
    sql: ${TABLE}.ref_agency

  - dimension: ref_category
    label: 'Service Category'
>>>>>>> branch 'dev-jim-osullivan-ygv9' of git@lkrgit_github_5c637f391b9ca3811f712e9c4e51a76a48ba9030:jimosullivan1099/clarity_cmha.git
    sql: fn_getPicklistValueName('service_categories',${TABLE}.ref_category)  

#   - dimension: ref_program_usage
#     type: int
#     sql: ${TABLE}.ref_program_usage

#   - dimension: ref_site
#     type: int
#     sql: ${TABLE}.ref_site
# 
#   - dimension: ref_site_type
#     type: int
#     sql: ${TABLE}.ref_site_type
# 
#   - dimension: ref_user_updated
#     type: int
#     sql: ${TABLE}.ref_user_updated

#   - dimension: status
#     type: yesno
#     sql: ${TABLE}.status

  - measure: count
    type: count

