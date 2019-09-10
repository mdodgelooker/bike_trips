connection: "lookerdata_publicdata_standard_sql"

# include all the views
include: "/views/**/*.view"

datagroup: meredith_bike_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: meredith_bike_default_datagroup

explore: station {}

explore: station_regression {}

explore: trip {
  join: station {
    sql_on: ${trip.from_station_id} = ${station.station_id} ;;
    relationship: many_to_one
  }
}

explore: trip_count_prediction {}

explore: trip_time_prediction {}

explore: weather {}

explore: weather_forecast {}

explore: weather_prediction {}

explore: zipcode_station {}
