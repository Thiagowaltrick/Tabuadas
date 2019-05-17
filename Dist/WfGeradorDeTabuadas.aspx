<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WfGeradorDeTabuadas.aspx.cs" Inherits="GeradorDeTabuadas.WfGeradorDeTabuadas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title>Tabuadas</title>

        <link href="lib/bootstrap/css/bootstrap.css" rel="stylesheet" />
        <link href="CssGeradorDeTabuadas.css" rel="stylesheet" />
    </head>

    <body>
        <form id="form1" runat="server">
            <main>
                <h1>Tabuada.</h1>
                <asp:Panel ID="Panel1" runat="server" CssClass="avisoDeObjetivo border border-warning rounded">
                    O Objetivo deste programa é verificar como será implantado a parte lógica, indentação, design, e verificar todos os erros possíveis que pode ser gerado ao digitar a informação no campo abaixo:
                </asp:Panel>
                <h3> Quantas tabuadas deseja gerar?</h3>
                <div class="alinhamentoCentral">
            
                    <div class="TextWarning">
                        <asp:RangeValidator ID="RVTbGerarTabuadas" runat="server" ControlToValidate="TbGerarTabuadas" EnableTheming="True" ErrorMessage="Informe um número positivo entre 1 a 100." Font-Bold="True" ForeColor="Red" MaximumValue="100" MinimumValue="1" SetFocusOnError="True" Type="Integer" Display="Dynamic"></asp:RangeValidator>
                    </div>

                    <div class="input-group float-left inputControl">
                        <div class="row">
                            <div class="input-group-append col-sm" id="button-addon4"> 
                                <asp:TextBox ID="TbGerarTabuadas" runat="server" ToolTip="Informe um número para gerar tabuadas." CssClass="form-control w-25"></asp:TextBox>
                                <asp:Button ID="BtnGerarTabuadas" runat="server" OnClick="BtnGerarTabuadas_Click" Text="Gerar Tabuadas"  CssClass="btn btn-dark rounded" />
                                <asp:Button ID="BtGerarTabuadasAleatorio" runat="server" Text="Gerar Aleatorio" ToolTip="Gera de 1 a 100." OnClick="BtGerarTabuadasAleatorio_Click"  CssClass="btn btn-light rounded"/>
                            </div> 
                        </div>
                    </div>

                </div>

                <div class="contentTables float-left">
                    <asp:PlaceHolder ID="PhTables" runat="server"></asp:PlaceHolder>
                </div>
            </main>

            <footer>
                <div>Boa sorte!</div>
            </footer>
        </form>
    </body>
</html>
