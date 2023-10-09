### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ d60f02ce-0a83-4edb-9747-b3de9ba1ae2b
using Markdown

# ╔═╡ 5dfaa4bb-f544-43df-a390-a9e326784fed
using InteractiveUtils

# ╔═╡ 7ea81498-700d-4402-bea4-37b5203d088f
using Logging

# ╔═╡ 5b0505f0-ab35-4ebc-9458-1914a54c7bfa
md"""
### Mini rapport: Phase 1 du projet
"""

# ╔═╡ d16af9e4-e9fd-49df-97e4-b6af7193d63f
md"""
##### 1. Proposer un type Edge pour représenter les arêtes d’un graphe
"""

# ╔═╡ 5b9924f3-f260-40be-8144-53d4fd3e0645
"""Type abstrait dont d'autres types de noeuds dériveront."""
abstract type AbstractNode{T} end


# ╔═╡ 789d0351-e2db-4250-8694-7003fbe1c17b
"""Type abstrait dont d'autres types d'arrêtes dériveront."""
abstract type AbstractEdge{T} end

# ╔═╡ 3c45416e-9c54-48fe-9e63-edcb49afd27c
"""Mutable struct Node"""
  mutable struct Node{T} <: AbstractNode{T}
    name::String
    data::T
  end


# ╔═╡ c4165062-dbb5-4e45-ac19-526f9f3ed7ea
md"""
###### Le type Edge est défini par un string, un couple de noeuds et un poid"""

# ╔═╡ 309b01be-0974-4d12-8230-4779b8983652
"""Mutable struct Edge"""
  mutable struct Edge{T} <: AbstractEdge{T}
  	name::String
  	node1::Node{T}
  	node2::Node{T}
  	weight
  end

# ╔═╡ 2528cbf0-2499-40d8-bfd3-d5aed9927ea9
md"""
```julia
Type représentant les arrêtes d'un graphe.

Exemples:

        noeud = Node("James", [π, exp(1)])
        noeud = Node("Kirk", "guitar")
        arrete = Edge("My_edge", node1, node2, weight)
```
"""

# ╔═╡ 7f5af2f7-3a44-4650-af58-c7d9f3600f33
md"""
###### Méthode d'affichage show pour un type edge"""

# ╔═╡ 30df8065-0dec-4125-837c-4e12b63cd188
md"""
##### 2. Étendre le type Graph afin qu’un graphe contienne ses arêtes. On se limite ici aux graphes non orientés. L’utilisateur doit pouvoir ajouter une arête à la fois à un graphe.
"""


# ╔═╡ 745a99fb-4d60-4b47-8bcf-2625063e44d8
"""Type abstrait dont d'autres types de graphes dériveront."""
abstract type AbstractGraph{T} end

# ╔═╡ 0bdcedde-9929-4fc7-b228-b1b7d316e0cd
md"""
###### Le type Graph est défini par un string, un vecteur contenant tous les noeuds et un vecteur contenant tous les arrêtes"""

# ╔═╡ c6850f73-7c04-4b96-a1da-b8f49b59e4e4
"""Type abstrait dont d'autres types de noeuds dériveront."""
mutable struct Graph{T} <: AbstractGraph{T}
  name::String
  nodes::Vector{Node{T}}
  edges::Vector{Edge{T}}
end

# ╔═╡ 672df196-932f-49dc-8f74-06261a9b0c24
"""Ajoute une arrete au graphe."""
function add_edge!(graph::Graph{T}, edge::Edge{T}) where T
  push!(graph.edges, edge)
  graph
end

# ╔═╡ 790f95ac-38f5-4546-8503-8a969aa33918
md"""
##### 3. Étendre la méthode d’affichage show d’un objet de type Graph afin que les arêtes du graphe soient également affichées.
"""

# ╔═╡ 723b6ebd-36be-4ea0-9669-ea9250592d78
md"""
##### 4. Étendre la fonction read\_edges() de read\_stsp.jl afin de lire les poids des arêtes (ils sont actuellement ignorés).
"""

# ╔═╡ e22a9bd2-3692-4ef2-af7b-2136c82edf09


# ╔═╡ 613362b9-ce0d-4d74-a1e3-8e88a0859249
md"""
##### 6. Fournir un programme principal qui lit une instance de TSP symétrique dont les poids sont donnés au format EXPLICIT et construit un objet de type Graph correspondant.

"""

# ╔═╡ 4c2003b5-683e-4327-b145-505f40b91203
using Base.show

# ╔═╡ 660c40be-ed71-4f2b-ad2e-04aaf2f19d33
function show(edge::AbstractEdge)
  println("Edge ", name(edge), ", data: ", data(edge))
end

# ╔═╡ efc4211f-c79d-40f8-be98-0a001730891f
"""Affiche un graphe"""
function show(graph::Graph)
  println("Graph ", name(graph), " has ", nb_nodes(graph), " nodes and ", nb_edges(graph), " edges ")
  for node in nodes(graph)
    show(node)
  end
  for edge in edges(graph)
    show(edge)
  end
end

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
InteractiveUtils = "b77e0a4c-d291-57a0-90e8-8db25a27a240"
Logging = "56ddb016-857b-54e1-b83d-db4d58db5568"
Markdown = "d6f4376e-aef5-505a-96c1-9c027394607a"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.9.3"
manifest_format = "2.0"
project_hash = "348ed7e828d2091a44e211d4df367eb5f2d0eb19"

[[deps.Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"

[[deps.InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"

[[deps.Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"

[[deps.Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"
"""

# ╔═╡ Cell order:
# ╠═d60f02ce-0a83-4edb-9747-b3de9ba1ae2b
# ╠═5dfaa4bb-f544-43df-a390-a9e326784fed
# ╠═7ea81498-700d-4402-bea4-37b5203d088f
# ╠═4c2003b5-683e-4327-b145-505f40b91203
# ╟─5b0505f0-ab35-4ebc-9458-1914a54c7bfa
# ╠═d16af9e4-e9fd-49df-97e4-b6af7193d63f
# ╟─5b9924f3-f260-40be-8144-53d4fd3e0645
# ╟─789d0351-e2db-4250-8694-7003fbe1c17b
# ╟─3c45416e-9c54-48fe-9e63-edcb49afd27c
# ╟─c4165062-dbb5-4e45-ac19-526f9f3ed7ea
# ╟─309b01be-0974-4d12-8230-4779b8983652
# ╟─2528cbf0-2499-40d8-bfd3-d5aed9927ea9
# ╟─7f5af2f7-3a44-4650-af58-c7d9f3600f33
# ╟─660c40be-ed71-4f2b-ad2e-04aaf2f19d33
# ╟─30df8065-0dec-4125-837c-4e12b63cd188
# ╟─745a99fb-4d60-4b47-8bcf-2625063e44d8
# ╟─0bdcedde-9929-4fc7-b228-b1b7d316e0cd
# ╟─c6850f73-7c04-4b96-a1da-b8f49b59e4e4
# ╟─672df196-932f-49dc-8f74-06261a9b0c24
# ╟─790f95ac-38f5-4546-8503-8a969aa33918
# ╠═efc4211f-c79d-40f8-be98-0a001730891f
# ╟─723b6ebd-36be-4ea0-9669-ea9250592d78
# ╠═e22a9bd2-3692-4ef2-af7b-2136c82edf09
# ╠═613362b9-ce0d-4d74-a1e3-8e88a0859249
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
