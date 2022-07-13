# The name of this view in Looker is "Vw Web Usuarios Validados"
view: vw_web_usuarios_validados {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `account_2022.vw_web_usuariosValidados`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Dni" in Explore.

  dimension: dni {
    type: string
    sql: ${TABLE}.DNI ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.EMAIL ;;
  }

  dimension: id_contacto_sfdc {
    type: string
    sql: ${TABLE}.ID_CONTACTO_SFDC ;;
  }

  dimension: numcliente {
    type: string
    sql: ${TABLE}.NUMCLIENTE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
