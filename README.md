# SMART RECON

**Descrição**: Conjunto de scripts que utilizam ferramentas de pentest de maneira automática, usando processamento paralelo da CPU, ao final entregando em uma database no OpenDistro.

## TECNOLOGIAS E FERRAMENTAS UTILIZADAS
- Apenas roda em **Linux**
- **Python3**
- **Docker**
- **OpenDistro**
- **Airflow**
- **Argparse**
- **Asyncio**
- **Browsermobproxy**
- **Fuzzywuzzy**
- **Requests**
- **Selenium**
- **Telegram**
- **Urllib3**

## MODO DE USAR
A partir de um servidor OpenDistro em execução, crie os índices executando o script:

```bash
sh opendistro_automacao/create_all_index.sh
```

Por fim, execute o arquivo:
```
sh Autom/start_bounty.sh <domains.txt>
```
Onde domains.txt é uma lista de endereços alvos.

## TRABALHOS A SEREM FEITOS
- Generalizar caminhos, pois não há parâmetros para outras pastas.

## OBS:
- Consulta/, scripts de pesquisas específicas nos indexs.
- Opendistro_automacao/, scripts para criar e deletar indexs.
