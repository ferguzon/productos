using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Presentacion
{
    public partial class wfProductoEliminar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtCodigoProducto_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {

            Negocio.productoNegocio dc = null;
            Entidad.Productos producto = null;

            try
            {

                dc = new Negocio.productoNegocio();
                producto = dc.obtenerProductoNegocio(int.Parse(txtCodigoProducto.Text));

                lblDescripcion.Text = producto.Descripcion;
                       
                btnConfirmar.Enabled = true;

            }
            catch (Exception)
            {

                cvErrores.IsValid = false;
                cvErrores.ErrorMessage = "No se encontró el producto buscado. Por favor verifique la información.";
            }

        }

        protected void btnConfirmar_Click(object sender, EventArgs e)
        {

            Negocio.productoNegocio dc = null;

            try
            {

                dc = new Negocio.productoNegocio();

                dc.eliminarProductoNegocio(int.Parse(txtCodigoProducto.Text));

            }
            catch (Exception)
            {

                cvErrores.IsValid = false;
                cvErrores.ErrorMessage = "Ocurrió un error al eliminar el producto.";
            }
            
        }
    }
}