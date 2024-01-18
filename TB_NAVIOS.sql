SELECT  nome_navio, classificacao_risco, indice_conformidade, temporada 
FROM navios.tb_navios
WHERE classificacao_risco IN ('A', 'B') AND indice_conformidade > 90
ORDER BY nome_navio
LIMIT 10;
SELECT nome_navio, classificacao_risco, indice_conformidade, pontuacao_risco, temporada
FROM navios.tb_navios
WHERE indice_conformidade > 90 AND pontuacao_risco = 0 AND mes_ano = '04/2018'
ORDER BY indice_conformidade;

SELECT nome_navio, classificacao_risco, indice_conformidade, pontuacao_risco, temporada 
FROM navios.tb_navios  
WHERE indice_conformidade IN (SELECT indice_conformidade 
								FROM navios.tb_navios 
							   WHERE indice_conformidade > 90)
                                 AND pontuacao_risco = 0 
                                 AND mes_ano = '04/2018'
ORDER BY indice_conformidade;

SELECT nome_navio,pontuacao_risco
FROM navios.tb_navios  
where pontuacao_risco = 310;

SELECT nome_navio,classificacao_risco, indice_conformidade
FROM navios.tb_navios  where classificacao_risco = 'A' AND indice_conformidade >= 95;


SELECT nome_navio,classificacao_risco, indice_conformidade
FROM navios.tb_navios  where classificacao_risco IN ('C', 'D') AND indice_conformidade <= 95;

SELECT nome_navio,classificacao_risco,pontuacao_risco
FROM navios.tb_navios  where classificacao_risco = 'A' AND pontuacao_risco = 0;

SELECT * FROM navios.tb_navios
where mes_ano = '12/2016';
