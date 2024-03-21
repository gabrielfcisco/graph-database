# Utilizando a imagem oficial do Neo4j como base
FROM neo4j:5.18.1

# Definindo variáveis de ambiente para configuração do Neo4j
ENV NEO4J_AUTH=neo4j/senha_padrao
ENV NEO4J_dbms_security_procedures_unrestricted=apoc.*
ENV NEO4J_dbms_security_allow__csv__import__from__file__urls=true
ENV NEO4J_dbms_memory_heap_initial__size=512M
ENV NEO4J_dbms_memory_heap_max__size=1G

# Expondo a porta padrão do Neo4j
EXPOSE 7474 7473 7687

# Copiando arquivos de configuração personalizados, se necessário
# COPY conf/neo4j.conf /var/lib/neo4j/conf/

# Definindo o diretório de trabalho
WORKDIR /var/lib/neo4j

# Comando padrão para iniciar o Neo4j
CMD ["neo4j"]
