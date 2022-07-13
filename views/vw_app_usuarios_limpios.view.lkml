# The name of this view in Looker is "Vw App Usuarios Limpios"
view: vw_app_usuarios_limpios {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `account_2022.vw_app_usuariosLimpios`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Contact C" in Explore.

  dimension: contact_c {
    type: string
    sql: ${TABLE}.contact_c ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.Email ;;
  }

  dimension: identity_number_c {
    type: string
    sql: ${TABLE}.IdentityNumber_c ;;
  }

  dimension: identity_type_c {
    type: string
    sql: ${TABLE}.IdentityType_c ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: num_cliente {
    type: string
    sql: ${TABLE}.NumCliente ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
