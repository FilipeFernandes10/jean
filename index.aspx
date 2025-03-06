<%@ Page Language="VB" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Conexão com SQL Server</title>
    <style>
        body {
            font-size: 18px;
            font-family: Arial, sans-serif;
            background-color: #f0f8ff;
        }
        h2 {
            color: #004080;
            text-align: center;
        }
        .container {
            display: flex;
            justify-content: space-between;
            align-items: flex-start;
            padding: 20px;
        }
        .left-section {
            width: 40%;
            text-align: left;
        }
        .right-section {
            width: 55%;
        }
        label {
            font-weight: bold;
            color: #004080;
        }
        .input-box {
            padding: 8px;
            font-size: 16px;
            border: 2px solid #004080;
            border-radius: 5px;
            width: 250px;
        }
        .checkbox {
            font-size: 16px;
            color: #004080;
        }
        .button {
            background-color: #004080;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }
        .button:hover {
            background-color: #002040;
        }
        .grid-view {
            margin-top: 20px;
            border: 2px solid #004080;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h2>JEAN</h2>
        <div class="container">
            <div class="left-section">
                <label for="txtObra">Obra:</label>
                <asp:TextBox ID="txtObra" runat="server" CssClass="input-box"></asp:TextBox>
                <br /><br />
                
                <label for="txtFuncionario">Funcionário:</label>
                <asp:TextBox ID="txtFuncionario" runat="server" CssClass="input-box"></asp:TextBox>
                <br /><br />
                
                <asp:CheckBox ID="chkInterna" runat="server" Text="Obra Interna" CssClass="checkbox" />
                <asp:CheckBox ID="CheckBox1" runat="server" Text="Obra Externa" CssClass="checkbox" />
                <br /><br />
                
                <asp:Button ID="btnBuscar" runat="server" Text="Entrar" CssClass="button" />
                <asp:GridView ID="GridView1" runat="server" CssClass="grid-view" BackColor="White" BorderColor="#004080" BorderStyle="Solid" BorderWidth="2px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
                    <FooterStyle BackColor="#004080" ForeColor="White" />
                    <HeaderStyle BackColor="#002040" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#0066cc" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
            </div>
            <div class="right-section">
            </div>
        </div>
    </form>
</body>
</html>
