USE GcProDev

SELECT ISNULL(r.NomeReferencia, pt.NomeProdutoTerceiro) AS Nome
	FROM Vendas_PedidoItem vpi
		LEFT JOIN Producao_FichaTecnica ft
			ON vpi.IdFichaTecnica = ft.IdFichaTecnica
		LEFT JOIN Comercial_Referencia r
			ON r.IdReferencia = ft.IdReferencia
		LEFT JOIN Almoxarifado_ProdutoTerceiro pt
			ON vpi.IdProdutoTerceiro = pt.IdProdutoTerceiro
	WHERE ISNULL(r.NomeReferencia, pt.NomeProdutoTerceiro) IS NOT NULL

SELECT r.NomeReferencia AS Nome
	FROM Vendas_PedidoItem vpi
		INNER JOIN Producao_FichaTecnica ft
			ON vpi.IdFichaTecnica = ft.IdFichaTecnica
		INNER JOIN Comercial_Referencia r
			ON r.IdReferencia = ft.IdReferencia
UNION ALL

SELECT pt.NomeProdutoTerceiro
	FROM Vendas_PedidoItem vpi
		INNER JOIN Almoxarifado_ProdutoTerceiro pt
			ON vpi.IdProdutoTerceiro = pt.IdProdutoTerceiro

			SELECT * FROM Vendas_PedidoItem WHERE IdProdutoTerceiro IS NOT NULL OR IdFichaTecnica IS NOT NULL