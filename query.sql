-- Кількість виданих  ігор на кожну платформу
SELECT Platform_Name, COUNT(Game.game_id) AS Games_Count
FROM Platform
JOIN Game ON Platform.platform_id = Game.platform_id
GROUP BY Platform.Platform_Name;

-- Кількість продажів у світі за кожним видавництвом
SELECT pub.Publisher_Name, SUM(Game.Global_Sales) AS TotalGlobalSales
FROM Publisher pub
JOIN Game ON pub.publisher_id = Game.publisher_id
GROUP BY pub.Publisher_Name;

-- Кількість продажів у світі за кожним видавництвом
SELECT Year, SUM(Global_Sales) AS TotalSalesPerYear
FROM Game
GROUP BY Year
ORDER BY Year;


