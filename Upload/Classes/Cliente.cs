using System;
using System.Data;
using System.Data.SqlClient;


namespace Upload.Classes
{
    public class Cliente
    {
        public int Id { get; set; }
        public string Nome { get; set; }
        public string Email { get; set; }
        public int Status { get; set; }
        public DateTime DataCadastro { get; set; }
        public DateTime DataAlteracao { get; set; }


        public void InsertCliente()
        {
            SqlConnection conexao = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            try
            {
                conexao.Open();
                SqlCommand cmd = new SqlCommand("Cadastros.dbo.Cadastrar", conexao);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@nome", this.Nome);
                cmd.Parameters.AddWithValue("@email", this.Email);
                cmd.Parameters.AddWithValue("@statusCliente", this.Status);
                int resultado = cmd.ExecuteNonQuery();
            }
            catch
            {
                throw new Exception("Erro ao inserir cliente, verifique se preencheu todos os campos");
            }
        }

        public void AlterarCliente()
        {
            SqlConnection conexao = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            try
            {
                conexao.Open();
                SqlCommand cmd = new SqlCommand("Cadastros.dbo.AlterarCliente", conexao);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Id", this.Id);
                cmd.Parameters.AddWithValue("@nome", this.Nome);
                cmd.Parameters.AddWithValue("@statusCliente", this.Status);
                cmd.Parameters.AddWithValue("@dataAlteracao", DateTime.Now);
                cmd.Parameters.AddWithValue("@email", this.Email);
                cmd.ExecuteNonQuery();
            }
            catch
            {
                throw new Exception("Erro ao alterar cliente, verifique se preencheu todos os campos");
            }
        }

        public DataSet GetCliente()
        {
            SqlConnection conexao = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            try
            {
                conexao.Open();
                SqlDataAdapter cmd = new SqlDataAdapter("Cadastros.dbo.CarregarClientes", conexao);
                cmd.SelectCommand.CommandType = System.Data.CommandType.StoredProcedure;
                DataSet ds = new DataSet();
                cmd.Fill(ds, "Cadastro");
                return ds;
            }
            catch
            {
                throw new Exception("Erro ao listar clientes");
            }
        }
    }
}