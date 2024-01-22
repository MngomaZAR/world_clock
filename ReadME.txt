# World Clock - Bash Script

Welcome to the World Clock Bash script repository! This simple script allows you to check the current time for a specific city using the TimezoneDB API.

## How to Use

### Prerequisites

- Make sure you have Bash and `curl` installed on your system.
- You need a TimezoneDB API key. Get it [here](https://timezonedb.com/register).

### Getting Started

1. Clone the repository to your local machine:

    ```bash
    git clone https://github.com/MngomaZAR/world-clock-bash.git
    ```

2. Change into the project directory:

    ```bash
    cd world-clock-bash
    ```

3. Open the script (`world_clock.sh`) in a text editor and replace `"YOUR_API_KEY"` with your actual TimezoneDB API key.

4. Make the script executable:

    ```bash
    chmod +x world_clock.sh
    ```

### Running the Script

- Run the script:

    ```bash
    ./world_clock.sh
    ```

- Follow the prompts to enter the city you want to check.

### Example

```bash
Welcome to the World Clock!

Enter the city to check the current time: New York

Current Time in New York: 2022-01-25 14:30:00
License
This project is licensed under the MIT License.

Feel free to explore and modify the script to suit your needs!

If you encounter any issues or have suggestions, please open an issue.

Happy time checking! 🌍⏰



Replace "YOUR_API_KEY" with your actual TimezoneDB API key.

How to Run:

Save the script to a file, e.g., world_clock.sh.
Make the script executable: chmod +x world_clock.sh.
Run the script: ./world_clock.sh.
Explanation:

The script uses the TimezoneDB API to fetch time zone information based on the user-entered city.
The get_timezone_data function makes a curl request to the API and uses jq to extract the time zone.
The display_city_time function sets the time zone using TZ and fetches the current time for the specified city.
The user is prompted to enter a city, and the script displays the current time for that city.
This is a basic example, and you can extend and enhance it based on your specific requirements and preferences.