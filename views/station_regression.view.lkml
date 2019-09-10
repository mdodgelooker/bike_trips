view: station_regression {
  sql_table_name: bike_trips.station_regression ;;

  dimension: bike_station {
    type: string
    sql: ${TABLE}.bike_station ;;
  }

  dimension: end_intercept {
    type: number
    sql: ${TABLE}.end_intercept ;;
  }

  dimension: end_slope {
    type: number
    sql: ${TABLE}.end_slope ;;
  }

  dimension: start_intercept {
    type: number
    sql: ${TABLE}.start_intercept ;;
  }

  dimension: start_slope {
    type: number
    sql: ${TABLE}.start_slope ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
