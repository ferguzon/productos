using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio
{
    public class productoNegocio
    {

        public void insertarProductoNegocio(Entidad.Productos producto)
        {

            // Este método recibe como parámetro un objeto de tipo Entidad.Producto
            // y lo pasa a la capa de datos para guardarlo en la base de datos

            Datos.productoDatos dc = null;

            try
            {

                dc = new Datos.productoDatos();

                dc.insertarProductoDatos(producto);

            }
            catch (Exception err)
            {

                throw err;
            }

        } // fin del método insertarProductoNegocio

        public void modificarProductoNegocio(Entidad.Productos producto)
        {

            // Este método recibe como parámetro un objeto de tipo Entidad.Producto
            // y lo pasa a la capa de datos para actualizarlo en la base de datos

            Datos.productoDatos dc = null;

            try
            {

                dc = new Datos.productoDatos();

                dc.modificarProductoDatos(producto);

            }
            catch (Exception err)
            {

                throw err;
            }

        } // fin del método modificarProductoNegocio

        public void eliminarProductoNegocio(int id)
        {

            // Este método recibe como parámetro el id de un producto y lo pasa
            // a la capa de datos para eliminar el producto en la base de datos

            Datos.productoDatos dc = null;

            try
            {

                dc = new Datos.productoDatos();

                dc.eliminarProductoDatos(id);

            }
            catch (Exception err)
            {

                throw err;
            }


        } // fin del método eliminarProductoNegocio

    } // fin de la clase productoNegocio
}
