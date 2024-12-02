class Graph:

    def __init__(self):
        self.graph = {}

    def addConexion(self,node,neighbor):
       
        if node not in self.graph:
            self.graph[node] = []
        if neighbor not in self.graph:
            self.graph[neighbor] = []
    
        if neighbor not in self.graph[node]:
            self.graph[node].append(neighbor)
        if node not in self.graph[neighbor]:
            self.graph[neighbor].append(node)



    def get_connections(self, node):
        return self.graph.get(node, [])
    
    def update_edge(self,node,old_neighbor, new_neighbor):
       if node in self.graph and old_neighbor in self.graph[node]:
          self.graph[node].remove(old_neighbor)
          self.graph[node].append(new_neighbor)
    
    def delete_node(self,node):
       if node in self.graph:
        del self.graph[node]
        for connections in self.graph.values():
             if node in connections :
                connections.remove(node)
    
    def get_allconnextions(self):
       return self.graph
    
    # 1 = Manizales
    # 2 = Pereira
    # 3 = Armenia
    # 4 = Chinchiná
    # 5 = Villamaria
    # 6 = Palestina
    # 7 = Neira
    # 8 = La Virginia
    # 9 = Dosquebradas
    # 10 = Santa Rosa de Cabal
    # 11 = Cartago
    # 12 = Calarcá
    # 13 = Ciscasia
    # 14 = La Tebaida
    # 15 = Montenegro
    
g = Graph()
g.addConexion("Manizales","Pereira")
g.addConexion("Manizales","Armenia")
g.addConexion("Manizales","Chinchiná")
g.addConexion("Manizales","Villamaria")
g.addConexion("Manizales","Palestina")
g.addConexion("Manizales","Neira")
g.addConexion("Manizales","Cartago")
g.addConexion("Manizales","Dosquebradas")
g.addConexion("Manizales","Santa_Rosa_de_Cabal")
g.addConexion("Pereira","Manizales")
g.addConexion("Pereira","Cartago")
g.addConexion("Pereira","La_Virginia")
g.addConexion("Pereira","Santa_Rosa_de_Cabal")
g.addConexion("Pereira","Armenia")
g.addConexion("Pereira","Ciscasia")
g.addConexion("Pereira","Dosquebradas")
g.addConexion("Armenia","Manizales")
g.addConexion("Armenia","Cartago")
g.addConexion("Armenia","Calarcá")
g.addConexion("Armenia","Ciscasia")
g.addConexion("Armenia","La Tebaida")
g.addConexion("Armenia","Montenegro")
g.addConexion("Armenia","Pereira")
g.addConexion("Armenia","Dosquebradas")
g.addConexion("Armenia","Santa_Rosa_de_Cabal")
g.addConexion("Chinchiná","Manizales")
g.addConexion("Villamaria","Manizales")
g.addConexion("Palestina","Manizales")
g.addConexion("Neira","Manizales")
g.addConexion("La_Virginia","Cartago")
g.addConexion("La_Virginia","Pereira")
g.addConexion("Dosquebradas","Manizales")
g.addConexion("Dosquebradas","Armenia")
g.addConexion("Dosquebradas","Cartago")
g.addConexion("Dosquebradas","Pereira")
g.addConexion("Santa_Rosa_de_Cabal","Manizales")
g.addConexion("Santa_Rosa_de_Cabal","Pereira")
g.addConexion("Santa_Rosa_de_Cabal","Armenia")
g.addConexion("Cartago","Manizales")
g.addConexion("Cartago","Pereira")
g.addConexion("Cartago","Armenia")
g.addConexion("Cartago","La_Virginia")
g.addConexion("Cartago","Dosquebradas")
g.addConexion("Calarcá","Armenia")
g.addConexion("Ciscasia","Armenia")
g.addConexion("Ciscasia","Pereira")
g.addConexion("La_Tebaida","Armenia")
g.addConexion("Montenegro","Armenia")

print("Todas las conexiones son: ", g.get_allconnextions())
print("")
print("Conexiones completas de Manizales son: ", g.get_connections("Manizales"))
print("")
print("Conexiones completas de Pereira son: ", g.get_connections("Pereira"))
print("")
print("Conexiones completas de Chinchiná: ", g.get_connections("Chinchiná"))
print("")
print("Conexiones completas de Armenia son: ", g.get_connections("Armenia"))
print("")
print("Conexiones completas de Villamaria son: ", g.get_connections("Villamaria"))
print("")
print("Conexiones completas de Palestina son: ", g.get_connections("Palestina"))
print("")
print("Conexiones completas de Neira son: ", g.get_connections("Neira"))
print("")
print("Conexiones completas de La Virginia son: ", g.get_connections("La_Virginia"))
print("")
print("Conexiones completas de Dosquebradas son: ", g.get_connections("Dosquebradas"))
print("")
print("Conexiones completas de Santa Rosa de Cabal son:", g.get_connections("Santa_Rosa_de_Cabal"))
print("")
print("Conexiones completas de Cartago son: ", g.get_connections("Cartago"))
print("")
print("Conexiones completas de Calarcá son: ", g.get_connections("Calarcá"))
print("")
print("Conexiones completas de Ciscasia son: ", g.get_connections("Ciscasia"))
print("")
print("Conexiones completas de la Tebaida son: ", g.get_connections("La_Tebaida"))
print("")
print("Conexiones completas de Montenegro son: ", g.get_connections("Montenegro"))