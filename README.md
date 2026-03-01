# Decentralized AI Training Incentivisation and Discovery Protocol

The Decentralized AI Training Incentivisation and Discovery Protocol (DATIDP) is a protocol to facilitate permissionless nodes to cooperate in the creation of a 
distributed large language model (LLM). 


How this protocol fits into the broader decentralised AI training problem space is discussed on the [known-challenges](./known-challenges.md) page.


## Requirements

The protocol should allow for:

* Discovery of other nodes in the network that hold specific sections of the model. That is, have a deterministic algorithm for which nodes are hosting which data.
* Incentivise node operators to uniformly support all parts of the model. Alternatively, auto-spread owners of parts of the network.
* Discourage model poisoning.
* Discourage a sole operator from owning sections from all parts of the model. Ideally, the protocol will prevent this.
* Identify and fine free loaders.
* Incentivise low churn - slash early exit
* Incentivise based on number of nodes / node density at a certain part / arc of the number zone
* Provide an integration to multiple [decentralised learning model projects](./candidate-projects.md). Initial integration will be hivemind.


Questions:

* Should people be allowed to choose where they land, and hence which data they host, or should they be algorithmically pushed to certain parts of the data holdering.
* How to check if multiple of same company. Maybe force signing of org of an address.




## Architecture


## Implmentation

The starting point for the work will be to provide a connector for hivemind's DHT. 

