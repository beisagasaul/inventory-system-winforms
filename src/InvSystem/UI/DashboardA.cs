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
    public partial class DashboardA : Form
    {
        public DashboardA()
        {
            InitializeComponent();
            this.BackColor = Color.FromArgb(15, 23, 42);//DASHBOARD
            pnlPrincipal.BackColor = Color.FromArgb(241, 245, 249);//PRINCIPAL
            pnl.BackColor = Color.FromArgb(248, 250, 252);//PANEL DE ARRIBA
            //Producto
            btnProduct.BackColor = Color.FromArgb(15, 23, 42);
            btnProduct.FlatStyle = FlatStyle.Flat;
            btnProduct.FlatAppearance.BorderSize = 0;

            //UnidadesMedida
            btnUnidadMedidad.BackColor = Color.FromArgb(15, 23, 42);
            btnUnidadMedidad.FlatStyle = FlatStyle.Flat;
            btnUnidadMedidad.FlatAppearance.BorderSize = 0;

            //Movimiento Stock
            btnMovStock.BackColor = Color.FromArgb(15, 23, 42);
            btnMovStock.FlatStyle = FlatStyle.Flat;
            btnMovStock.FlatAppearance.BorderSize = 0;
            //Movimiento Compras
            btnCompras.BackColor = Color.FromArgb(15, 23, 42);
            btnCompras.FlatStyle = FlatStyle.Flat;
            btnCompras.FlatAppearance.BorderSize = 0;

            //Movimiento Proveeedores
            btnProv.BackColor = Color.FromArgb(15, 23, 42);
            btnProv.FlatStyle = FlatStyle.Flat;
            btnProv.FlatAppearance.BorderSize = 0;

            //Movimiento Ventas
            btnClientes.BackColor = Color.FromArgb(15, 23, 42);
            btnClientes.FlatStyle = FlatStyle.Flat;
            btnClientes.FlatAppearance.BorderSize = 0;

            //Movimiento Clientes
            btnClient.BackColor = Color.FromArgb(15, 23, 42);
            btnClient.FlatStyle = FlatStyle.Flat;
            btnClient.FlatAppearance.BorderSize = 0;

            //Movimiento Uusarios
            btnUusarios.BackColor = Color.FromArgb(15, 23, 42);
            btnUusarios.FlatStyle = FlatStyle.Flat;
            btnUusarios.FlatAppearance.BorderSize = 0;

            //Movimiento Roles
            btnRoles.BackColor = Color.FromArgb(15, 23, 42);
            btnRoles.FlatStyle = FlatStyle.Flat;
            btnRoles.FlatAppearance.BorderSize = 0;
            //Movimiento Asignacion Roles
            btnARoles.BackColor = Color.FromArgb(15, 23, 42);
            btnARoles.FlatStyle = FlatStyle.Flat;
            btnARoles.FlatAppearance.BorderSize = 0;
            //Movimiento Empleados
            btnEmpleados.BackColor = Color.FromArgb(15, 23, 42);
            btnEmpleados.FlatStyle = FlatStyle.Flat;
            btnEmpleados.FlatAppearance.BorderSize = 0;
            //Reportes
            btnReportes.BackColor = Color.FromArgb(15, 23, 42);
            btnReportes.FlatStyle = FlatStyle.Flat;
            btnReportes.FlatAppearance.BorderSize = 0;

            //Reportes
            btnCerrarSesion.BackColor = Color.FromArgb(15, 23, 42);
            btnCerrarSesion.FlatStyle = FlatStyle.Flat;
            btnCerrarSesion.FlatAppearance.BorderSize = 0;






        }

        private void DashboardA_Load(object sender, EventArgs e)
        {

        }

        private void btnProduct_Click(object sender, EventArgs e)
        {
         
            new FormProduct().ShowDialog();
        }

        private void pnlPrincipal_Paint(object sender, PaintEventArgs e)
        {

        }

       

        private void label6_Click(object sender, EventArgs e)
        {

        }

        private void button12_Click(object sender, EventArgs e)
        {

        }

        private void btnRoles_Click(object sender, EventArgs e)
        {

        }

        private void btnCerrarSesion_Click(object sender, EventArgs e)
        {
            DialogResult resultado = MessageBox.Show("¿Está seguro de que desea Cerrar Sesión?", "Confirmar",
                                                   MessageBoxButtons.YesNo,
                                                   MessageBoxIcon.Question);
            if (resultado == DialogResult.Yes)
            {
                this.Close();
            }

        }
    }
}
