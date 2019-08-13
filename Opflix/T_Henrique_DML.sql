INSERT INTO PerfisUsuarios(Tipo) VALUES ('Cliente') , ('Administrador');
INSERT INTO Usuarios (Tipo , Nome , Email , Senha) VALUES (2 , 'Erik' , 'erik@email.com' , '123456') ,
 (2 , 'Cassiana' , 'cassiana@email.com' , '123456') , (1 , 'Helena' , 'helena@email.com' , '123456') , 
 (2 , 'Roberto' , 'rob@email.com' , '3110');
--INSERT INTO FotosUsuarios(IdUsuario , Imagem) VALUES ( 1 , CONVERT(VARBINARY(MAX) , 'aHR0cHM6Ly90cmVsbG8tYXZhdGFycy5zMy5hbWF6b25hd3MuY29tL2ZhNGZiZmI3NzU4MzBmNjk1NjYxZmE5MWE0MDdjMzEwL29yaWdpbmFsLnBuZw=='))
--, ( 2 , 'aHR0cDovL3d3dy5jb2xlZ2lvcGF1bG9mcmVpcmVzai5jb20uYnIvd3AtY29udGVudC91cGxvYWRzLzIwMTkvMDEvY2Fzc2lhbmEucG5n')
--, ( 3 , 'YmxvYjpodHRwczovL3dlYi53aGF0c2FwcC5jb20vNDEzMWE3NWEtM2UyMi00NzIwLWI5MjMtZTE2M2QzYmU1NDQ3')
--, ( 4 , 'YmxvYjpodHRwczovL3dlYi53aGF0c2FwcC5jb20vNDEzMWE3NWEtM2UyMi00NzIwLWI5MjMtZTE2M2QzYmU1NDQ3');


GO
CREATE PROCEDURE InserirImagem
@IdUsuario INT , @CodigoImagem VARCHAR(255)
AS BEGIN
INSERT INTO FotosUsuarios(IdUsuario , Imagem) VALUES (@IdUsuario , CONVERT(VARBINARY(MAX) , @CodigoImagem)
END
GO

EXECUTE InserirImagem @IdUsuario = 1 @CodigoImagem = 'aHR0cHM6Ly90cmVsbG8tYXZhdGFycy5zMy5hbWF6b25hd3MuY29tL2ZhNGZiZmI3NzU4MzBmNjk1NjYxZmE5MWE0MDdjMzEwL29yaWdpbmFsLnBuZw=='
