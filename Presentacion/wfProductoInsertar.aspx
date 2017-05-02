<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wfProductoInsertar.aspx.cs" Inherits="Presentacion.wfProductoInsertar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
        <tr>
            <td style="width: 220px">Descripción</td>
            <td>
                <asp:TextBox ID="txtDescripcion" runat="server" Width="217px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvDescripcion" runat="server" ErrorMessage="El campo descripción no puede estar vacío" Font-Bold="True" ForeColor="Red" ControlToValidate="txtDescripcion">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 22px; width: 220px">Existencia</td>
            <td style="height: 22px">
                <asp:TextBox ID="txtExistencia" runat="server" Width="220px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvExistencia" runat="server" ErrorMessage="El campo existencia no puede estar vacío" Font-Bold="True" ForeColor="Red" ControlToValidate="txtExistencia">*</asp:RequiredFieldValidator>
&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 220px; height: 27px">Precio</td>
            <td style="height: 27px">
                <asp:TextBox ID="txtPrecio" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvPrecio" runat="server" ErrorMessage="El campo precio no puede estar vacío" Font-Bold="True" ForeColor="Red" ControlToValidate="txtPrecio">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 220px">&nbsp;</td>
            <td>
                <asp:CustomValidator ID="cvErrores" runat="server" ErrorMessage="Ocurrió un error al guardar" Font-Bold="True" ForeColor="Red">*</asp:CustomValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 220px">&nbsp;</td>
            <td>
                <asp:ValidationSummary ID="vsErrores" runat="server" Font-Bold="True" ForeColor="Red" />
            </td>
        </tr>
        <tr>
            <td style="width: 220px">&nbsp;</td>
            <td>
                <asp:Button ID="btnConfirmar" runat="server" OnClick="btnConfirmar_Click" Text="Confirmar" />
                <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" OnClick="btnCancelar_Click" />
            &nbsp;<asp:Label ID="lblResultado" runat="server" Font-Bold="True" ForeColor="#0066CC"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
