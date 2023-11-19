import psycopg2


username = 'AAVOLOVYK'
password = '111'
database = 'lab_3'
host = 'localhost'
port = '5432'

query_1 = '''
SELECT Platform_Name, COUNT(Game.game_id) AS Games_Count
FROM Platform
JOIN Game ON Platform.platform_id = Game.platform_id
GROUP BY Platform.Platform_Name;
'''
query_2 = '''
SELECT pub.Publisher_Name, SUM(Game.Global_Sales) AS TotalGlobalSales
FROM Publisher pub
JOIN Game ON pub.publisher_id = Game.publisher_id
GROUP BY pub.Publisher_Name;
'''

query_3 = '''
SELECT Year, SUM(Global_Sales) AS TotalSalesPerYear
FROM Game
GROUP BY Year
ORDER BY Year;
'''

conn = psycopg2.connect(user=username, password=password, dbname=database, host=host, port=port)

with conn:
    cur = conn.cursor()

    cur.execute(query_1)
    platform = []
    games_count = []

    for row in cur:
        platform.append(row[0])
        games_count.append(row[1])

    cur.execute(query_2)
    publisher_name = []
    total_global_sales = []

    for row in cur:
        publisher_name.append(row[0])
        total_global_sales.append(row[1])

    cur.execute(query_3)
    year = []
    total_sales_per_year = []

    for row in cur:
        year.append(row[0])
        total_sales_per_year.append(round(row[1], 2))
        print(row)
