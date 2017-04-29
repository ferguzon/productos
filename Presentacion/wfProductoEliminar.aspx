<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wfProductoEliminar.aspx.cs" Inherits="Presentacion.wfProductoEliminar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
        <tr>
            <td style="width: 324px">Código del producto</td>
            <td>
                <asp:TextBox ID="txtCodigoProducto" runat="server" OnTextChanged="txtCodigoProducto_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvCodigoProducto" runat="server" ErrorMessage="El campo código de producto es requerido" Font-Bold="True" ForeColor="Red" ControlToValidate="txtCodigoProducto">*</asp:RequiredFieldValidator>
&nbsp;<asp:Button ID="btnBuscar" runat="server" OnClick="btnBuscar_Click" Text="Buscar" />
            </td>
        </tr>
        <tr>
            <td style="width: 324px">Descripción</td>
            <td>
                <asp:Label ID="lblDescripcion" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 324px">&nbsp;</td>
            <td>
                <asp:CustomValidator ID="cvErrores" runat="server" Font-Bold="True" ForeColor="Red"></asp:CustomValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 324px">&nbsp;</td>
            <td>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Bold="True" ForeColor="Red" />
            </td>
        </tr>
        <tr>
            <td style="width: 324px">&nbsp;</td>
            <td>
                <asp:Button ID="btnConfirmar" runat="server" Enabled="False" OnClick="btnConfirmar_Click" Text="Confirmar eliminación" />
                <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" />
            </td>
        </tr>
    </table>
</asp:Content>
