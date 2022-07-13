# The name of this view in Looker is "Vw Mails Web Unicos"
view: vw_mails_web_unicos {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `account_2022.vw_MailsWeb_unicos`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Email" in Explore.

  dimension: email {
    type: string
    sql: ${TABLE}.EMAIL ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
