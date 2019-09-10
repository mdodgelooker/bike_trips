view: trip_count_prediction {
  sql_table_name: bike_trips.trip_count_prediction ;;

  dimension: intercept {
    type: number
    sql: ${TABLE}.Intercept ;;
  }

  dimension: predictor {
    type: string
    sql: ${TABLE}.Predictor ;;
  }

  dimension: x0 {
    type: number
    sql: ${TABLE}.X0 ;;
  }

  dimension: x1 {
    type: number
    sql: ${TABLE}.X1 ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
