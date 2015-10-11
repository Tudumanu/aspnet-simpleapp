<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h2>ASP.NET com C# - Tadeu Sampaio - RA 1191190</h2>
    </div>

    <div class="row">
        <div class="col-md-12">
            <h1>Cálculo de conversão de moedas</h1>

            <div class="row">
                <div class="col-md-4">

                    <table style="width: 100%; border-collapse: collapse; border-style: solid; border-width: 1px">
                        <caption>Tabela de conversão, cotação 04/10/2015</caption>
                        <tr>
                            <td>&nbsp;</td>
                            <td>Dolar</td>
                            <td>Real</td>
                            <td>Euro</td>
                        </tr>
                        <tr>
                            <td>Dolar</td>
                            <td>1</td>
                            <td><asp:Label runat="server" id="DolarReal"></asp:Label></td>
                            <td><asp:Label runat="server" id="DolarEuro"></asp:Label></td>
                        </tr>
                        <tr>
                            <td>Real</td>
                            <td><asp:Label runat="server" id="RealDolar"></asp:Label></td>
                            <td>1</td>
                            <td><asp:Label runat="server" id="RealEuro"></asp:Label></td>
                        </tr>
                        <tr>
                            <td>Euro</td>
                            <td><asp:Label runat="server" id="EuroDolar"></asp:Label></td>
                            <td><asp:Label runat="server" id="EuroReal"></asp:Label></td>
                            <td>1</td>
                        </tr>
                    </table>
                </div>
            
                <div class="col-md-8">
                    <asp:Label runat="server" Text="Valor:"></asp:Label>
                    <asp:DropDownList runat="server" id="FromList">
                        <asp:ListItem value="dolar">Dolar</asp:ListItem>
                        <asp:ListItem value="real">Real</asp:ListItem>
                        <asp:ListItem value="euro">Euro</asp:ListItem>
                    </asp:DropDownList>
                    <asp:TextBox runat="server" id="FromInput" /> 

                    <asp:Label runat="server" Text="Converter para:"></asp:Label>
                    <asp:DropDownList runat="server" id="ToList">
                        <asp:ListItem value="dolar">Dolar</asp:ListItem>
                        <asp:ListItem value="real">Real</asp:ListItem>
                        <asp:ListItem value="euro">Euro</asp:ListItem>
                    </asp:DropDownList>

                    <asp:Button runat="server" id="ConvertButton" text="Converter" />

                    <br />
                    <br />

                    <asp:Label runat="server" id="ValorConversao"></asp:Label>
                </div>
            </div>

        </div>
    </div>

    <hr />

    <div class="row">
        <div class="col-md-12">
            <h1>Cálculo utilizando teorema de Pitágoras</h1>

            <div class="row">
                <div class="col-md-4">
                    <asp:image id="img" runat="server" imageurl="Content/triangulo.jpg" />
                </div>
                <div class="col-md-8">
                    <h4>Digite os valores para os catetos</h4>
                    <asp:Label runat="server" Text="b:"></asp:Label>
                    <asp:TextBox runat="server" id="CatetoBInput" /> 
                    <asp:Label runat="server" Text="c:"></asp:Label>
                    <asp:TextBox runat="server" id="CatetoCInput" /> 
                    <asp:Label runat="server" Text=" = "></asp:Label>
                    <asp:Label runat="server" id="HipotenusaValue"></asp:Label>
                    <br />
                    <asp:Button runat="server" id="CalcularButton" text="Calcular" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
