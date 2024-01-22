#!/bin/bash

# Function to fetch time zone data for a city from TimezoneDB API
get_timezone_data() {
    local city=$1
    local api_key="YOUR_API_KEY"
    local api_url="http://api.timezonedb.com/v2.1/get-time-zone"

    # Make API request
    local response=$(curl -s "${api_url}?key=${api_key}&format=json&by=city&city=${city}")

    # Extract time zone from API response
    local timezone=$(echo "$response" | jq -r '.zoneName')

    echo "$timezone"
}

# Function to display the current time for a city
display_city_time() {
    local city=$1
    local timezone=$(get_timezone_data "$city")

    # Check if the API request was successful
    if [ -n "$timezone" ]; then
        local current_time=$(TZ="$timezone" date +"%Y-%m-%d %H:%M:%S")
        echo "Current Time in $city: $current_time"
    else
        echo "Unable to fetch time zone data for $city. Please check the city name and try again."
    fi
}

# Main script
echo "Welcome to the World Clock!"

# Prompt user to enter a city
read -p "Enter the city to check the current time: " user_input_city

# Display the current time for the entered city
display_city_time "$user_input_city"
