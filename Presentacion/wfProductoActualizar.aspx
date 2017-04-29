<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wfProductoActualizar.aspx.cs" Inherits="Presentacion.wfProductoActualizar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
    <tr>
        <td style="width: 206px">Código del producto</td>
        <td>
            <asp:TextBox ID="txtCodigoProducto" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvCodigo" runat="server" ErrorMessage="El campo código no puede estar vació" Font-Bold="True" ForeColor="Red" ControlToValidate="txtCodigoProducto">*</asp:RequiredFieldValidator>
&nbsp;<asp:Button ID="btnBuscar" runat="server" OnClick="btnBuscar_Click" Text="Buscar" />
        </td>
    </tr>
    <tr>
        <td style="width: 206px">Descripción</td>
        <td>
            <asp:TextBox ID="txtDescripcion" runat="server" Width="262px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 206px">Existencia</td>
        <td>
            <asp:TextBox ID="txtExistencia" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 206px">Precio unitario</td>
        <td>
            <asp:TextBox ID="txtPrecioUnitario" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 206px">&nbsp;</td>
        <td>
            <asp:CustomValidator ID="cvErrores" runat="server" ErrorMessage="Ocurrió un error" Font-Bold="True" ForeColor="Red"></asp:CustomValidator>
        </td>
    </tr>
    <tr>
        <td style="width: 206px">&nbsp;</td>
        <td>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Bold="True" ForeColor="Red" />
        </td>
    </tr>
    <tr>
        <td style="width: 206px">&nbsp;</td>
        <td>
            <asp:Button ID="btnConfirmar" runat="server" OnClick="btnConfirmar_Click" Text="Confirmar" />
            <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" />
        </td>
    </tr>
    <tr>
        <td style="width: 206px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
