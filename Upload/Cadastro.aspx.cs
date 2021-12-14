using System;
using System.Web.UI.WebControls;
using Upload.Classes;

namespace Upload
{
    public partial class Cadastro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GetClientes();
            ModificarGrid();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {
            if (!txtNome.Text.Equals("") || !txtEmail.Text.Equals(""))
            {
                try
                {
                    Cliente cliente = new Cliente();
                    cliente.Nome = txtNome.Text;
                    cliente.Email = txtEmail.Text;
                    cliente.Status = Convert.ToInt32(rbStatus.SelectedValue);
                    cliente.InsertCliente();
                    Response.Write("<script>alert('Cliente inserido com sucesso!')</script>");
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Erro ao inserir cliente, verifique se preencheu todos os campos')</script>");
            }
        }

        protected void MultiView1_ActiveViewChanged(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            this.MultiView1.ActiveViewIndex = 2;
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            this.MultiView1.ActiveViewIndex = 1;
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            this.MultiView1.ActiveViewIndex = 2;
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            this.MultiView1.ActiveViewIndex = 0;
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            this.MultiView1.ActiveViewIndex = 1;
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            this.MultiView1.ActiveViewIndex = 0;
        }

        protected void Wizard2_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {
            if (!textNome.Text.Equals("") || !TextEmail.Text.Equals("") || !txtId.Text.Equals(""))
            {
                try
                {
                    Cliente cliente = new Cliente();
                    cliente.Id = Convert.ToInt32(txtId.Text);
                    cliente.Nome = textNome.Text;
                    cliente.Status = Convert.ToInt32(RadioButtonList1.SelectedValue);
                    cliente.Email = TextEmail.Text;
                    cliente.AlterarCliente();
                    Response.Write("<script>alert('Cliente alterado com sucesso!')</script>");
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Erro ao inserir cliente, verifique se preencheu todos os campos')</script>");
            }
        }

        protected void GetClientes()
        {
            try
            {
                Cliente cliente = new Cliente();
                GridView1.DataSource = cliente.GetCliente();
                GridView1.DataBind();
            }
            catch (Exception e)
            {
                Response.Write("<script>alert('" + e.Message + "')</script>");
            }
        }

        protected void ModificarGrid()
        {
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                if (GridView1.Rows[i].Cells[5].Text.Equals("1"))
                {
                    GridView1.Rows[i].Cells[5].Text = "Ativo";
                }
                else
                {
                    GridView1.Rows[i].Cells[5].Text = "Inativo";
                }
            }
        }
    }
}