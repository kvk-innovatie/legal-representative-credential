# Vragen over datavelden in Credential

# Soort Bevoegdheid en Type volmacht

## Bevoegdheid
```
MA —> heeftAlsEigenaar —> natuurlijkPersoon           
MA —> heeftAlsEigenaar —> samenwerkingsverband —> heeft[] —> aansprakelijke  —> bevoegdheid —> soort: Onbeperkt bevoegd of Beperkt bevoegd
MA —> heeftAlsEigenaar —> rechtspersoon 	   —> heeft[] —> bestuursfunctie —> bevoegdheid —> soort: Alleen/zelfstandig bevoegd of Gezamenlijk bevoegd
```

## Volmacht
```
MA —> heeftAlsEigenaar —> natuurlijkPersoon    —> heeft[] —> gemachtigde     —> volmacht —> typeVolmacht: Beperkte volmacht of Volledige volmacht
MA —> heeftAlsEigenaar —> samenwerkingsverband —> heeft[] —> gemachtigde     —> volmacht —> typeVolmacht: Beperkte volmacht of Volledige volmacht
MA —> heeftAlsEigenaar —> rechtspersoon 	   —> heeft[] —> gemachtigde     —> volmacht —> typeVolmacht: Beperkte volmacht of Volledige volmacht
```

# Voorstel voor credential
- **soort_bevoegdheid**: Gezamenlijk bevoegd of Alleen/zelfstandig bevoegd of Onbeperkt bevoegd of Beperkt bevoegd
- **type_volmacht**: Beperkte volmacht of Volledige volmacht


# Beperking in Geld
```
MA —> heeftAlsEigenaar —> samenwerkingsverband —> heeft[] —> aansprakelijke  —> bevoegdheid —> beperkingInEuros
MA —> heeftAlsEigenaar —> natuurlijkPersoon    —> heeft[] —> gemachtigde     —> volmacht —> beperkteVolmacht -> beperkingInGeld
```

# Voorstel voor credential
- **beperking_in_geld**: 10.000 EUR

# Overige vragen
- Wat is het verschil tussen vertegenwoordigingsbevoegdheid, tekeningsbevoegd en handelingsbevoegd?
- Is Legal Representative een goede term? Is een vennoot in een VOF een wettelijke vertegenwoordiger? Is een gevolmachtige een wettelijke vertegenwoordiger?
- Wat is een goede engelse term voor soort_bevoegdheid en type_volmacht, die Europa breed kan worden gebruikt? Is het voorgestelde signatory_rule een logische keus? Wat kan gebruikt worden voor type_volmacht?
- Kunnen we beperking_in_geld gebruiken voor 'bevoegden voor samenwerkingsverbanden' en 'gevolmachtigden'? En leeg laten voor bestuurders voor rechtspersonen?

