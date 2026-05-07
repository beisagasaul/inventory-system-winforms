
namespace UI
{
    partial class DashboardA
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(DashboardA));
            this.label1 = new System.Windows.Forms.Label();
            this.lblTitule = new System.Windows.Forms.Label();
            this.pnlPrincipal = new System.Windows.Forms.Panel();
            this.pnl = new System.Windows.Forms.Panel();
            this.box = new System.Windows.Forms.PictureBox();
            this.label2 = new System.Windows.Forms.Label();
            this.btnProduct = new System.Windows.Forms.Button();
            this.btnUnidadMedidad = new System.Windows.Forms.Button();
            this.btnMovStock = new System.Windows.Forms.Button();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.btnProv = new System.Windows.Forms.Button();
            this.btnCompras = new System.Windows.Forms.Button();
            this.label5 = new System.Windows.Forms.Label();
            this.btnClient = new System.Windows.Forms.Button();
            this.btnClientes = new System.Windows.Forms.Button();
            this.label6 = new System.Windows.Forms.Label();
            this.btnEmpleados = new System.Windows.Forms.Button();
            this.btnARoles = new System.Windows.Forms.Button();
            this.btnRoles = new System.Windows.Forms.Button();
            this.btnUusarios = new System.Windows.Forms.Button();
            this.btnReportes = new System.Windows.Forms.Button();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.btnCerrarSesion = new System.Windows.Forms.Button();
            this.pnlPrincipal.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.box)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Segoe UI", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.SystemColors.AppWorkspace;
            this.label1.Location = new System.Drawing.Point(128, 81);
            this.label1.Margin = new System.Windows.Forms.Padding(5, 0, 5, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(198, 25);
            this.label1.TabIndex = 6;
            this.label1.Text = "Sistema de Inventario \r\n";
            // 
            // lblTitule
            // 
            this.lblTitule.AutoSize = true;
            this.lblTitule.Font = new System.Drawing.Font("Segoe UI", 16.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblTitule.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.lblTitule.Location = new System.Drawing.Point(126, 32);
            this.lblTitule.Margin = new System.Windows.Forms.Padding(5, 0, 5, 0);
            this.lblTitule.Name = "lblTitule";
            this.lblTitule.Size = new System.Drawing.Size(175, 38);
            this.lblTitule.TabIndex = 5;
            this.lblTitule.Text = "INVENTORY\r\n";
            // 
            // pnlPrincipal
            // 
            this.pnlPrincipal.BackColor = System.Drawing.SystemColors.AppWorkspace;
            this.pnlPrincipal.Controls.Add(this.pnl);
            this.pnlPrincipal.Dock = System.Windows.Forms.DockStyle.Right;
            this.pnlPrincipal.Location = new System.Drawing.Point(277, 0);
            this.pnlPrincipal.Name = "pnlPrincipal";
            this.pnlPrincipal.Size = new System.Drawing.Size(1665, 1086);
            this.pnlPrincipal.TabIndex = 7;
            this.pnlPrincipal.Paint += new System.Windows.Forms.PaintEventHandler(this.pnlPrincipal_Paint);
            // 
            // pnl
            // 
            this.pnl.BackColor = System.Drawing.SystemColors.Control;
            this.pnl.Dock = System.Windows.Forms.DockStyle.Top;
            this.pnl.Location = new System.Drawing.Point(0, 0);
            this.pnl.Name = "pnl";
            this.pnl.Size = new System.Drawing.Size(1665, 49);
            this.pnl.TabIndex = 0;
            // 
            // box
            // 
            this.box.ErrorImage = null;
            this.box.Image = ((System.Drawing.Image)(resources.GetObject("box.Image")));
            this.box.InitialImage = null;
            this.box.Location = new System.Drawing.Point(12, 21);
            this.box.Name = "box";
            this.box.Size = new System.Drawing.Size(95, 85);
            this.box.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.box.TabIndex = 1;
            this.box.TabStop = false;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.ForeColor = System.Drawing.SystemColors.AppWorkspace;
            this.label2.Location = new System.Drawing.Point(20, 195);
            this.label2.Margin = new System.Windows.Forms.Padding(5, 0, 5, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(105, 28);
            this.label2.TabIndex = 8;
            this.label2.Text = "Inventario \r\n";
            // 
            // btnProduct
            // 
            this.btnProduct.BackColor = System.Drawing.SystemColors.ControlText;
            this.btnProduct.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.btnProduct.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnProduct.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.btnProduct.Image = ((System.Drawing.Image)(resources.GetObject("btnProduct.Image")));
            this.btnProduct.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnProduct.Location = new System.Drawing.Point(12, 224);
            this.btnProduct.Name = "btnProduct";
            this.btnProduct.Size = new System.Drawing.Size(361, 55);
            this.btnProduct.TabIndex = 1;
            this.btnProduct.Text = "Producto                    ";
            this.btnProduct.UseVisualStyleBackColor = false;
            this.btnProduct.Click += new System.EventHandler(this.btnProduct_Click);
            // 
            // btnUnidadMedidad
            // 
            this.btnUnidadMedidad.BackColor = System.Drawing.SystemColors.ControlText;
            this.btnUnidadMedidad.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnUnidadMedidad.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.btnUnidadMedidad.Image = ((System.Drawing.Image)(resources.GetObject("btnUnidadMedidad.Image")));
            this.btnUnidadMedidad.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnUnidadMedidad.Location = new System.Drawing.Point(12, 275);
            this.btnUnidadMedidad.Name = "btnUnidadMedidad";
            this.btnUnidadMedidad.Size = new System.Drawing.Size(361, 55);
            this.btnUnidadMedidad.TabIndex = 9;
            this.btnUnidadMedidad.Text = "Unidades de Medidas";
            this.btnUnidadMedidad.UseVisualStyleBackColor = false;
            // 
            // btnMovStock
            // 
            this.btnMovStock.BackColor = System.Drawing.SystemColors.ControlText;
            this.btnMovStock.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnMovStock.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.btnMovStock.Image = ((System.Drawing.Image)(resources.GetObject("btnMovStock.Image")));
            this.btnMovStock.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnMovStock.Location = new System.Drawing.Point(12, 326);
            this.btnMovStock.Name = "btnMovStock";
            this.btnMovStock.Size = new System.Drawing.Size(361, 55);
            this.btnMovStock.TabIndex = 10;
            this.btnMovStock.Text = "Movimientos de Stock";
            this.btnMovStock.UseVisualStyleBackColor = false;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.ForeColor = System.Drawing.SystemColors.AppWorkspace;
            this.label3.Location = new System.Drawing.Point(20, 384);
            this.label3.Margin = new System.Windows.Forms.Padding(5, 0, 5, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(95, 28);
            this.label3.TabIndex = 11;
            this.label3.Text = "Compras \r\n";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.ForeColor = System.Drawing.SystemColors.AppWorkspace;
            this.label4.Location = new System.Drawing.Point(20, 521);
            this.label4.Margin = new System.Windows.Forms.Padding(5, 0, 5, 0);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(69, 28);
            this.label4.TabIndex = 15;
            this.label4.Text = "Ventas\r\n";
            // 
            // btnProv
            // 
            this.btnProv.BackColor = System.Drawing.SystemColors.ControlText;
            this.btnProv.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnProv.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.btnProv.Image = ((System.Drawing.Image)(resources.GetObject("btnProv.Image")));
            this.btnProv.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnProv.Location = new System.Drawing.Point(12, 466);
            this.btnProv.Name = "btnProv";
            this.btnProv.Size = new System.Drawing.Size(361, 55);
            this.btnProv.TabIndex = 13;
            this.btnProv.Text = "Proveedores              \r        \n";
            this.btnProv.UseVisualStyleBackColor = false;
            // 
            // btnCompras
            // 
            this.btnCompras.BackColor = System.Drawing.SystemColors.ControlText;
            this.btnCompras.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnCompras.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.btnCompras.Image = ((System.Drawing.Image)(resources.GetObject("btnCompras.Image")));
            this.btnCompras.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnCompras.Location = new System.Drawing.Point(12, 415);
            this.btnCompras.Name = "btnCompras";
            this.btnCompras.Size = new System.Drawing.Size(361, 55);
            this.btnCompras.TabIndex = 12;
            this.btnCompras.Text = "Compras                   ";
            this.btnCompras.UseVisualStyleBackColor = false;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.ForeColor = System.Drawing.SystemColors.AppWorkspace;
            this.label5.Location = new System.Drawing.Point(20, 660);
            this.label5.Margin = new System.Windows.Forms.Padding(5, 0, 5, 0);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(158, 28);
            this.label5.TabIndex = 19;
            this.label5.Text = "Usuarios y Roles \r\n";
            // 
            // btnClient
            // 
            this.btnClient.BackColor = System.Drawing.SystemColors.ControlText;
            this.btnClient.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnClient.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.btnClient.Image = ((System.Drawing.Image)(resources.GetObject("btnClient.Image")));
            this.btnClient.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnClient.Location = new System.Drawing.Point(12, 602);
            this.btnClient.Name = "btnClient";
            this.btnClient.Size = new System.Drawing.Size(361, 55);
            this.btnClient.TabIndex = 17;
            this.btnClient.Text = "Clientes                    ";
            this.btnClient.UseVisualStyleBackColor = false;
            // 
            // btnClientes
            // 
            this.btnClientes.BackColor = System.Drawing.SystemColors.ControlText;
            this.btnClientes.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnClientes.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.btnClientes.Image = ((System.Drawing.Image)(resources.GetObject("btnClientes.Image")));
            this.btnClientes.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnClientes.Location = new System.Drawing.Point(12, 551);
            this.btnClientes.Name = "btnClientes";
            this.btnClientes.Size = new System.Drawing.Size(361, 55);
            this.btnClientes.TabIndex = 16;
            this.btnClientes.Text = "Ventas                     ";
            this.btnClientes.UseVisualStyleBackColor = false;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.ForeColor = System.Drawing.SystemColors.AppWorkspace;
            this.label6.Location = new System.Drawing.Point(20, 900);
            this.label6.Margin = new System.Windows.Forms.Padding(5, 0, 5, 0);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(89, 28);
            this.label6.TabIndex = 23;
            this.label6.Text = "Reportes";
            this.label6.Click += new System.EventHandler(this.label6_Click);
            // 
            // btnEmpleados
            // 
            this.btnEmpleados.BackColor = System.Drawing.SystemColors.ControlText;
            this.btnEmpleados.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnEmpleados.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.btnEmpleados.Image = ((System.Drawing.Image)(resources.GetObject("btnEmpleados.Image")));
            this.btnEmpleados.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnEmpleados.Location = new System.Drawing.Point(12, 842);
            this.btnEmpleados.Name = "btnEmpleados";
            this.btnEmpleados.Size = new System.Drawing.Size(361, 55);
            this.btnEmpleados.TabIndex = 22;
            this.btnEmpleados.Text = "Empleados              ";
            this.btnEmpleados.UseVisualStyleBackColor = false;
            // 
            // btnARoles
            // 
            this.btnARoles.BackColor = System.Drawing.SystemColors.ControlText;
            this.btnARoles.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnARoles.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.btnARoles.Image = ((System.Drawing.Image)(resources.GetObject("btnARoles.Image")));
            this.btnARoles.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnARoles.Location = new System.Drawing.Point(12, 791);
            this.btnARoles.Name = "btnARoles";
            this.btnARoles.Size = new System.Drawing.Size(361, 55);
            this.btnARoles.TabIndex = 21;
            this.btnARoles.Text = "Asignación de Roles";
            this.btnARoles.UseVisualStyleBackColor = false;
            // 
            // btnRoles
            // 
            this.btnRoles.BackColor = System.Drawing.SystemColors.ControlText;
            this.btnRoles.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnRoles.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.btnRoles.Image = ((System.Drawing.Image)(resources.GetObject("btnRoles.Image")));
            this.btnRoles.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnRoles.Location = new System.Drawing.Point(12, 739);
            this.btnRoles.Name = "btnRoles";
            this.btnRoles.Size = new System.Drawing.Size(361, 55);
            this.btnRoles.TabIndex = 20;
            this.btnRoles.Text = "Roles                      ";
            this.btnRoles.UseVisualStyleBackColor = false;
            this.btnRoles.Click += new System.EventHandler(this.btnRoles_Click);
            // 
            // btnUusarios
            // 
            this.btnUusarios.BackColor = System.Drawing.SystemColors.ControlText;
            this.btnUusarios.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnUusarios.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.btnUusarios.Image = ((System.Drawing.Image)(resources.GetObject("btnUusarios.Image")));
            this.btnUusarios.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnUusarios.Location = new System.Drawing.Point(12, 692);
            this.btnUusarios.Name = "btnUusarios";
            this.btnUusarios.Size = new System.Drawing.Size(361, 55);
            this.btnUusarios.TabIndex = 24;
            this.btnUusarios.Text = "Usuarios                  ";
            this.btnUusarios.UseVisualStyleBackColor = false;
            // 
            // btnReportes
            // 
            this.btnReportes.BackColor = System.Drawing.SystemColors.ControlText;
            this.btnReportes.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnReportes.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.btnReportes.Image = ((System.Drawing.Image)(resources.GetObject("btnReportes.Image")));
            this.btnReportes.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnReportes.Location = new System.Drawing.Point(12, 931);
            this.btnReportes.Name = "btnReportes";
            this.btnReportes.Size = new System.Drawing.Size(361, 55);
            this.btnReportes.TabIndex = 25;
            this.btnReportes.Text = "Reportes                  ";
            this.btnReportes.UseVisualStyleBackColor = false;
            this.btnReportes.Click += new System.EventHandler(this.button12_Click);
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = ((System.Drawing.Image)(resources.GetObject("pictureBox1.Image")));
            this.pictureBox1.Location = new System.Drawing.Point(12, 112);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(318, 74);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.pictureBox1.TabIndex = 27;
            this.pictureBox1.TabStop = false;
            // 
            // btnCerrarSesion
            // 
            this.btnCerrarSesion.BackColor = System.Drawing.SystemColors.ControlText;
            this.btnCerrarSesion.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnCerrarSesion.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.btnCerrarSesion.Image = ((System.Drawing.Image)(resources.GetObject("btnCerrarSesion.Image")));
            this.btnCerrarSesion.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnCerrarSesion.Location = new System.Drawing.Point(12, 992);
            this.btnCerrarSesion.Name = "btnCerrarSesion";
            this.btnCerrarSesion.Size = new System.Drawing.Size(318, 55);
            this.btnCerrarSesion.TabIndex = 40;
            this.btnCerrarSesion.Text = "Cerrar Seción              ";
            this.btnCerrarSesion.UseVisualStyleBackColor = false;
            this.btnCerrarSesion.Click += new System.EventHandler(this.btnCerrarSesion_Click);
            // 
            // DashboardA
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.ClientSize = new System.Drawing.Size(1942, 1086);
            this.Controls.Add(this.btnCerrarSesion);
            this.Controls.Add(this.pictureBox1);
            this.Controls.Add(this.btnReportes);
            this.Controls.Add(this.btnUusarios);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.btnEmpleados);
            this.Controls.Add(this.btnARoles);
            this.Controls.Add(this.btnRoles);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.btnClient);
            this.Controls.Add(this.btnClientes);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.btnProv);
            this.Controls.Add(this.btnCompras);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.btnMovStock);
            this.Controls.Add(this.btnUnidadMedidad);
            this.Controls.Add(this.btnProduct);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.box);
            this.Controls.Add(this.pnlPrincipal);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.lblTitule);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "DashboardA";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "DashboardA";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.Load += new System.EventHandler(this.DashboardA_Load);
            this.pnlPrincipal.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.box)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label lblTitule;
        private System.Windows.Forms.Panel pnlPrincipal;
        private System.Windows.Forms.Panel pnl;
        private System.Windows.Forms.PictureBox box;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Button btnProduct;
        private System.Windows.Forms.Button btnUnidadMedidad;
        private System.Windows.Forms.Button btnMovStock;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Button btnProv;
        private System.Windows.Forms.Button btnCompras;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Button btnClient;
        private System.Windows.Forms.Button btnClientes;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Button btnEmpleados;
        private System.Windows.Forms.Button btnARoles;
        private System.Windows.Forms.Button btnRoles;
        private System.Windows.Forms.Button btnUusarios;
        private System.Windows.Forms.Button btnReportes;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Button btnCerrarSesion;
    }
}