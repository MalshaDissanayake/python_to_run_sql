import os
import psycopg2

# Define PostgreSQL connection parameters
connection_params = {
    "host": "localhost",
    "database": "postgres",
    "user": "postgres",
    "password": "POSTGRESmalsha@3"
}

# Read SQL file
def read_sql_file(file_path):
    try:
        with open(file_path, 'r') as file:
            return file.read()
    except FileNotFoundError:
        print(f"Error: File '{file_path}' not found.")
        return None
    except Exception as e:
        print(f"Error reading SQL file: {e}")
        return None

# Execute SQL file
def execute_sql_file(sql_file, connection):
    cursor = connection.cursor()
    for query in sql_file.split(';'):
        query = query.strip()
        if query:
            cursor.execute(query)
    connection.commit()
    cursor.close()

if __name__ == "__main__":
    # Get current directory
    current_dir = os.path.dirname(os.path.abspath(__file__))
    # Construct file path for query.sql
    sql_file_path = os.path.join(current_dir, "query.sql")
    
    if sql_file_path:
        # Connect to PostgreSQL database
        with psycopg2.connect(**connection_params) as conn:
            # Read SQL file
            sql_content = read_sql_file(sql_file_path)

            if sql_content:
                # Execute SQL file
                execute_sql_file(sql_content, conn)
