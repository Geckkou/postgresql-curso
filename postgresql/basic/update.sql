SELECT * FROM aluno WHERE id = 1;

UPDATE aluno 
SET nome = 'Alexandre',
    cpf = '4586945986',
    observacao = 'Teste',  
    idade = 21,
    dinheiro = 34.78,
    altura = 1.83,
    ativo = FALSE, 
    data_nascimento = '2002-07-01',
    hora_aula = '14:30:00',   
    matriculado_em = '2012-02-03 11:45:00'
WHERE id = 1;