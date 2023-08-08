import networkx as nx
import matplotlib.pyplot as plt

# Load the .gpickle file
G = nx.read_gpickle(r"C:\Users\SVsre\dbt_core\dbt_core\target\graph.gpickle")

# Visualize the graph
plt.figure(figsize=(10, 6))
pos = nx.spring_layout(G)  # Layout algorithm
nx.draw(G, pos, with_labels=True, node_color="lightblue", font_weight="bold")
plt.show()
