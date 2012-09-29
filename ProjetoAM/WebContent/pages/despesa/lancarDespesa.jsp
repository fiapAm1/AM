<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<jsp:include page="../../util/css.jsp" />
<jsp:include page="../../util/js.jsp" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Lan�amento de Despesas</title>
</head>
<body>
	<s:form id="form_LancarDepesas" 
				action="cadastrarDespesa" 
				method="post" 
				class="formee"
				theme="simple">
		<fieldset>
			<legend>Lan�ar Despesas</legend>
			<div class="grid-6-12">
				<div class="grid-5-12">
					<s:label value="C�digo do Processo" for="textfield_Codigo" />
				</div>
				<div class="grid-7-12">
					<s:text id="textfield_Codigo" name="codigoProcesso" />
				</div>
			</div>
			<div class="grid-6-12" style="text-align: left;">
				<s:submit id="submit_Pesquisar"
						  value="Pesquisar"
						  action="pesquisarAudiencia"/>
			</div>
			<div class="grid-12-12">
				<table id="table_Audiencias"
					   class="lawyer-table">
					<caption>Processo</caption>
					<thead>
						<tr>
							<th width="15%" class="par">N�mero do Processo</th>
							<th width="15%" class="par">Descri��o do Processo</th>
							<th width="10%" class="par" >Cliente</th>
						</tr>
					</thead>
					<tbody>
						<s:iterator id="iterator_Despesas"
									value="despesas">
							<tr>
								<td class="par"><s:property value="source.tipoDespesa.despesa"/></td>
								<td class="par"><s:property value="source.valorDespesa"/></td>
								<td class="par"><s:date name="source.dataDespesa" format="dd/MM/yyyy"/></td>
								<td class="par"><label title="<s:property value="source.observacao"/>"/></td>
							</tr>			
						</s:iterator>
					</tbody>
				</table>
				<table id="table_Audiencias"
					   class="lawyer-table">
					<caption>Despesas Filtadas</caption>
					<thead>
						<tr>
							<th width="15%" class="par">Tipo da Despesa</th>
							<th width="15%" class="par">Valor</th>
							<th width="10%" class="par" >Data de Lan�amento</th>
							<th width="30%" class="par">Observa��o</th>
						</tr>
					</thead>
					<tbody>
						<s:iterator id="iterator_Despesas"
									value="despesas">
							<tr>
								<td class="par"><s:property value="source.tipoDespesa.despesa"/></td>
								<td class="par"><s:property value="source.valorDespesa"/></td>
								<td class="par"><s:date name="source.dataDespesa" format="dd/MM/yyyy"/></td>
								<td class="par"><label title="<s:property value="source.observacao"/>"/></td>
							</tr>			
						</s:iterator>
					</tbody>
				</table>
			</div>
			<div class="grid-12-12">
				<hr></hr>
			</div>
			<div class="grid-12-12" style="text-align: right;">
				<s:submit id="submit_Emitir"
						  action="emitirAudiencia"
						  value="Emitir Relat�rio"/>
				<s:submit id="submit_Voltar"
						  action="home"
						  value="Voltar"/>
			</div>
		</fieldset>
	</s:form>
</body>
</html>