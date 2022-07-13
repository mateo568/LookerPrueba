# The name of this view in Looker is "Vw Documentos Web Filtrados"
view: vw_documentos_web_filtrados {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `account_2022.vw_DocumentosWebFiltrados`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Casuistica" in Explore.

  dimension: casuistica {
    type: string
    sql: ${TABLE}.Casuistica ;;
  }

  dimension: dni {
    type: string
    sql: ${TABLE}.DNI ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
