select DATENAME(yy, getdate()) as 'Ano atual';
select DATENAME(month, getdate()) as 'Mês atual';


select DATEPART(mm, getdate()) as 'Mês atual';
select DATEPART(month, getdate()) as 'Mês atual';


select DAY(getdate()) as 'Dia atual';
select MONTH(getdate()) as 'Mês atual';
select YEAR(getdate()) as 'Ano atual';


select DATEDIFF(mm, getdate(), getdate() + 366) as 'Meses entre hoje e 366 dias';
select DATEDIFF(yy, getdate(), getdate() + 720) as 'Anos entre hoje e 720 dias';

select DATEDIFF(yy, '14-05-2004', GETDATE()) as 'Idade';
select DATEDIFF(dd, '14-05-2004', GETDATE()) as 'Dias já vividos';


select DATEADD(yy, 1, getdate()) as 'Hoje daqui 1 ano';
select DATENAME(month, (dateadd(month, 3, getdate()))) as 'Daqui três meses';


select ISDATE('27-02-2023') as 'Data válida?';
select ISDATE('30-02-2023') as 'Data válida?';


select CONVERT(char, getdate(), 103) as 'Dia atual formatado';


select ROUND(123.3467, 3) as 'Arredondamento 3 casas';
select ROUND(123.3467, 2) as 'Arredondamento 2 casas';
select ROUND(123.3436, 1) as 'Arredondamento 1 casa';

select round(123.5457, 1) as 'Arredontamento 1 casa';
select ROUND(123.3467, 0) as 'Numero decimal para inteiro';

select ROUND(123.3467, -1) as 'Arredondamento 1 casa neg';
select ROUND(123.3467, -2) as 'Arredontamento 2 casas neg';


select FLOOR(123.45) as 'Numero decimal para inteiro';

select POWER(4,2) as '4 elevado a 2';
select POWER(2,2) as '2 elevado a 2';


select ASCII('A') as 'Cod ASCII' , ASCII('AMANDA') as 'Cod ASCII da primeira letra';


select CHAR(65) as 'Cod em letra' , CHAR(66) as 'Cod em letra';


select CHARINDEX('Mundo', 'Ola Mundo Bonito') as 'Posicao da palavra mundo';
select CHARINDEX('Mundo', 'Ola Mundo Bonito', 3) as 'Posicao da palavra a partir de 3'; 
select CHARINDEX('Mundo', 'Ola Mundo Bonito', 6) as 'Posicao da palavra a partir de 6';


select REPLACE('abcdefghicde', 'cde', 'xxx') as 'substituicao de cde';
select REPLACE(primeiro_nome, 'a', 'z') from Funcionario;


select STUFF('abcdef', 2, 3, '_ijklmn_') as 'Troca de conjunto';
/* a partir de 2 letras, conta 3 e substitui por */


select LEFT('abcdefgh', 5) as 'primeiros 5 caracteres';
select RIGHT('abcdefgh', 4) as 'ultimos 4 caracteres';


select REPLICATE('ABC', 3) as '3 vezes repetido';


select SUBSTRING('ABCDEFGHIJ', 2, 3) as 'Letras a partir de';


select LEN('ABCD') as 'qtd de caracteres';
select LEN('ABCD    ') as 'qtd de caracteres';


select REVERSE('ABCD') as 'inverso';


select LOWER('AbCD') as 'minusculo';
select LOWER(primeiro_nome) from Funcionario;
select UPPER('aBcd') as 'maiusculo';
select UPPER(primeiro_nome) from Funcionario;


select '_' + LTRIM('  AbCD   ') + '_' as 'sem a esquerda';
select '_' + RTRIM('   AbcD    ') + '_' as 'sem a direita';