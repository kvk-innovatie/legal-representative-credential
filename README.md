# Power of Representation credential

A "Power of Representation" credential lives in a natural person wallet and is used by a physical person to prove to a relying party that he/she is legally authorized to represent his/her organization.

The repository contains the SD-JWT VC Type Metadata of the "Power of Representation" credential type issued by the Dutch chamber of commerce (KVK), but aimed to be compatible with European standards (as far as they exist). This credential is primarily based on [proposals of credential schemas](https://github.com/EWC-consortium/eudi-wallet-rulebooks-and-schemas) that are currently being developed within the EWC LSP consortium.

A human friendler view of the data fields and there properties, you can find [here](https://legal-representative.mayersoftwaredevelopment.nl/)

## Content of this repo

[SD-JWT VC Type Metadata of the "Power of Representation" credential type](power-of-representation.json)

[An example of an unsecured payload of an SD-JWT "Power of Representation" VC.](example.json)

The example has nested properties. MDOC can't handle nesting at this moment. So the [flattened version](example_flat.json) will be used in the KVK issuance service.

flatten.sh will create example_flat from example.

A json schema of the credential is work in progress.
