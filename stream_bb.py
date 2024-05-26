import json
import websocket
import datetime
import mysql.connector
from mysql.connector import Error

def ws_trades(connection): 
    socket = f'wss://stream.binance.com:9443/ws/bbusdt@trade'

    def on_message(wsapp,message):  
        json_message = json.loads(message)
        # print(json_message)
        handle_trades(connection, json_message)

    def on_error(wsapp,error):
        print(error)

    wsapp = websocket.WebSocketApp(socket, on_message=on_message, on_error=on_error)
    wsapp.run_forever()
    
def handle_trades(connection, json_message):
    Event_time = datetime.datetime.fromtimestamp(json_message['E']/1000).strftime('%Y-%m-%d %H:%M:%S')
    Trade_time = datetime.datetime.fromtimestamp(json_message['T']/1000).strftime('%Y-%m-%d %H:%M:%S')
    query = f"insert into crypto.BB_stream values ({json_message['t']}, '{json_message['e']}', '{Event_time}', '{json_message['s']}', '{json_message['p']}', {json_message['q']}, {json_message['b']}, {json_message['a']}, '{Trade_time}', {json_message['m']}, {json_message['M']});"
    execute_query(connection, query, json_message)
    # print("SYMBOL: "+json_message['s'])
    # print("PRICE: "+json_message['p'])
    # print("QTY: "+json_message['q'])
    # print("TIMESTAMP: " + str(date_time))
    # print("-----------------------")

def connect_to_mysql():
    try:
        connection = mysql.connector.connect(
            host='localhost',
            user='root',
            password='',
            database='crypto'
        )
        if connection.is_connected():
            print("Connected to MySQL database")
            return connection
    except Error as e:
        print(f"Error: {e}")
        return None
    
def close_connection(connection):
    if connection.is_connected():
        connection.close()
        print("MySQL connection is closed")

def execute_query(connection, query, json_message):
    cursor = connection.cursor()
    try:
        cursor.execute(query)
        connection.commit()
        print("Query executed successfully", json_message['t'])
    except Error as e:
        print(f"Error: {e}")

# connect_to_mysql()
connection = connect_to_mysql()

ws_trades(connection)