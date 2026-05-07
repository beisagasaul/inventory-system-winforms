using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace UI
{
    public partial class DashboardEmp : Form
    {
        public DashboardEmp()
        {
            InitializeComponent();
            this.BackColor = Color.FromArgb(12, 49, 29);//DASHBOARD

            //Producto
            btnProduct.BackColor = Color.FromArgb(12, 49, 29);
            btnProduct.FlatStyle = FlatStyle.Flat;
            btnProduct.FlatAppearance.BorderSize = 0;
            //Ventas

            btnVentas.BackColor = Color.FromArgb(12, 49, 29);
            btnVentas.FlatStyle = FlatStyle.Flat;
            btnVentas.FlatAppearance.BorderSize = 0;
            //Clientes
            btnClientes.BackColor = Color.FromArgb(12, 49, 29);
            btnClientes.FlatStyle = FlatStyle.Flat;
            btnClientes.FlatAppearance.BorderSize = 0;
            //Movimiento Reportes
            btnReportes.BackColor = Color.FromArgb(12, 49, 29);
            btnReportes.FlatStyle = FlatStyle.Flat;
            btnReportes.FlatAppearance.BorderSize = 0;
            //Cerrar

            btnCerrarSesion.BackColor = Color.FromArgb(12, 49, 29);
            btnCerrarSesion.FlatStyle = FlatStyle.Flat;
            btnCerrarSesion.FlatAppearance.BorderSize = 0;
        }

        private void DashboardEmp_Load(object sender, EventArgs e)
        {

        }

        private void label3_Click(object sender, EventArgs e)
        {

        }
    }
}
