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

# ╔═╡ 96a206ec-6634-46c8-802d-0d2b12e243df
md"""
##### 2. Proposer un type Edge pour représenter les arêtes d’un graphe
Étendre le type Graph afin qu’un graphe contienne ses arêtes. On se limite ici aux graphes non
orientés. L’utilisateur doit pouvoir ajouter une arête à la fois à un graphe.
"""

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
# ╟─5b0505f0-ab35-4ebc-9458-1914a54c7bfa
# ╠═d16af9e4-e9fd-49df-97e4-b6af7193d63f
# ╟─5b9924f3-f260-40be-8144-53d4fd3e0645
# ╟─789d0351-e2db-4250-8694-7003fbe1c17b
# ╟─3c45416e-9c54-48fe-9e63-edcb49afd27c
# ╟─309b01be-0974-4d12-8230-4779b8983652
# ╟─2528cbf0-2499-40d8-bfd3-d5aed9927ea9
# ╠═96a206ec-6634-46c8-802d-0d2b12e243df
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
