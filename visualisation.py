import matplotlib
matplotlib.use('TkAgg')
import matplotlib.pyplot as plt
from main import platform, games_count, publisher_name, total_global_sales, year, total_sales_per_year

x_range = range(len(platform))

figure, (bar_ax, pie_ax, graph_ax) = plt.subplots(1, 3)
bar = bar_ax.bar(x_range, games_count, label='Total')
bar_ax.bar_label(bar, label_type='center')  # потрібен новий matplotlib
bar_ax.set_xticks(x_range)
bar_ax.set_xticklabels(platform)
bar_ax.set_xlabel('Платформа')
bar_ax.set_ylabel('Кількість ігр')
bar_ax.set_title('Кількість виданих ігор на кожну платформу')

pie_ax.pie(total_global_sales, labels=publisher_name, autopct='%1.1f%%')
pie_ax.set_title('Кількість продажів у світі за кожним видавництвом')

mark_color = 'blue'
graph_ax.plot(year, total_sales_per_year, color=mark_color, marker='o')

for qnt, price in zip(year, total_sales_per_year):
    graph_ax.annotate(price, xy=(qnt, price), color=mark_color, xytext=(7, 2), textcoords='offset points')

graph_ax.set_xlabel('Рік')
graph_ax.set_ylabel('Кількість')
graph_ax.set_title('Кількість проданих копій кожного року')

mng = plt.get_current_fig_manager()
mng.resize(1800, 1000)

plt.show()
