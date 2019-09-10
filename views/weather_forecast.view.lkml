view: weather_forecast {
  sql_table_name: bike_trips.weather_forecast ;;

  dimension: forecast_date {
    type: string
    sql: ${TABLE}.forecast_date ;;
  }

  dimension: humidity {
    type: number
    sql: ${TABLE}.Humidity ;;
  }

  dimension_group: snapshot {
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
    sql: ${TABLE}.snapshot_time ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.Status ;;
  }

  dimension: temperature {
    type: number
    sql: ${TABLE}.Temperature ;;
  }

  dimension: wind {
    type: number
    sql: ${TABLE}.Wind ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
