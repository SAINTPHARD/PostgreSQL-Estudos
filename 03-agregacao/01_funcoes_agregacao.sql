SELECT * FROM public.funcionarios
ORDER BY id ASC 

-- COUNT - Retorna a quantidade de registros
-- SUM -   Retorna a soma dos registros
-- MAX -   Retorna o maior valor dos registros
-- MIN -   Retorna o menor valor dos registros
-- AVG -   Retorna a média dos registros


-- ====================================================================
-- TEMA: Funções de Agregação e Métricas de Sumarização
-- CONCEITO: Redução de Tuplas a Valores Escalares (COUNT, SUM, MAX, MIN, AVG, ROUND)
-- OBJETIVO: Demonstrar como calcular métricas estatísticas e consolidadas 
--           sobre conjuntos de dados, aplicando formatação de precisão numérica.
--
-- MODELAGEM DE DADOS
-- • Modelo Conceitual : Consolidação estatística da base de colaboradores.
-- • Modelo Lógico     : Mapeamento de funções agregadoras sobre atributos numéricos.
-- • Modelo Físico     : Varredura de páginas de dados (Seq Scan) e execução de 
--                       operações de agregação no motor de consultas do Postgres.
--
-- CLASSIFICAÇÃO SQL
-- • DDL (Data Definition Language): Não aplicável.
-- • DML (Data Manipulation Language): Não aplicável.
-- • DQL (Data Query Language): SELECT, COUNT, SUM, MAX, MIN, AVG, ROUND.
--
-- Arquivo: 03-agregacao/01_funcoes_agregacao.sql
-- ====================================================================


-- ====================================================================
-- SQL DQL
-- Estado inicial e verificação das instâncias
-- ====================================================================

SELECT * FROM funcionarios;


-- ====================================================================
-- SQL DQL
-- Aplicação Individual das Funções de Agregação
-- ====================================================================

-- 1. COUNT: Retorna a contagem total de registros (tuplas)
SELECT COUNT(id) AS total_registros FROM funcionarios;

-- 2. SUM: Retorna o somatório dos valores contidos no atributo
SELECT SUM(id) AS soma_ids FROM funcionarios;

-- 3. MAX: Identifica o maior valor ordinal/numérico
SELECT MAX(id) AS id_maximo FROM funcionarios;

-- 4. MIN: Identifica o menor valor ordinal/numérico
SELECT MIN(id) AS id_minimo FROM funcionarios;

-- 5. AVG: Calcula a média aritmética simples
SELECT AVG(id) AS media_bruta FROM funcionarios;


-- ====================================================================
-- SQL DQL
-- Agregação Consolidada e Formatação de Arredondamento (ROUND)
-- ====================================================================

-- OBSERVAÇÃO ACADÊMICA:
-- A função ROUND(valor, precisao) ajusta a exibição das casas decimais.
-- O segundo parâmetro define a quantidade de dígitos após a vírgula.

SELECT 
    COUNT(id)         AS "Total de Registros",
    SUM(id)           AS "Soma dos IDs",
    MAX(id)           AS "Maior ID",
    MIN(id)           AS "Menor ID",
    ROUND(AVG(id), 2) AS "Média (2 Decimais)",
    ROUND(AVG(id), 0) AS "Média (Inteiro)"
FROM funcionarios;