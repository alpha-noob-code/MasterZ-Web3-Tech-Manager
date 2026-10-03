# Lezione 15 - ERC1155

Un solo contratto con piu token:

- id 0 GOLD (1000 copie)
- id 1 SILVER (5000 copie)
- id 2 CERTIFICATO (1 copia, quindi e' un NFT)

A differenza di ERC20 e ERC721 qui nello stesso contratto ci sono sia token fungibili che non fungibili, e si possono trasferire piu token insieme con `safeBatchTransferFrom`.

Al deploy si passa l'indirizzo dell'owner e la cartella dei metadati su Pinata (`ipfs://CID/`), i file sono in `metadata/`.

Deploy con Remix + MetaMask su Polygon Amoy.

Contratto: `inserire indirizzo`
