## Imagem Golang com menos de 2MB

Estrutura:
```
├── README.md
├── fullcycle.go
└── Dockerfile


3 arquivos
```

> ℹ️ **INFO** 
> O projeto usa do **multi stage build** para diminuir ao máximo o tamanho da imagem final buildada a partir da imagem `scratch` com a inclusão do arquivo binário `executable`.

## Testando

```
docker run rica000/fullcycle-golang
```