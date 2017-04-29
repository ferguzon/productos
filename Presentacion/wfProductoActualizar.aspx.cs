using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Presentacion
{
    public partial class wfProductoActualizar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnConfirmar_Click(object sender, EventArgs e)
        {

            Negocio.productoNegocio dc = null;
            Entidad.Productos producto = null;

            try
            {

                // Actualizamos la información del producto

                dc = new Negocio.productoNegocio();
                producto = new Entidad.Productos();

                producto.Descripcion = txtDescripcion.Text;
                producto.Existencia = int.Parse(txtExistencia.Text);
                producto.PrecioUnitario = decimal.Parse(txtPrecioUnitario.Text);

                dc.modificarProductoNegocio(producto);

            }
            catch (Exception)
            {

                cvErrores.IsValid = false;
                cvErrores.ErrorMessage = "Ocurrió un error al intentar actualizar la información.";
        
            }

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {

            Negocio.productoNegocio dc = null;
            Entidad.Productos producto = null;

            try
            {

                // Se recupera la información del producto con base en
                // el id del mismo

                dc = new Negocio.productoNegocio();
                producto = dc.obtenerProductoNegocio(int.Parse(txtCodigoProducto.Text));

                txtDescripcion.Text = producto.Descripcion;
                txtExistencia.Text = producto.Existencia.ToString();
                txtPrecioUnitario.Text = producto.PrecioUnitario.ToString();


            }
            catch (Exception)
            {

                cvErrores.IsValid = false;
                cvErrores.ErrorMessage = "Ocurrió un error al recuperar los datos. Por favor verifique.";

            }

        }
    }
}