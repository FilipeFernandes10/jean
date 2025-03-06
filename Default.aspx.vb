Imports System.Data.SqlClient
Imports System.Data

Partial Class _Default
    Inherits System.Web.UI.Page

    ' Executa no carregamento da página
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            CarregarDados()
        End If
    End Sub

    ' Método para carregar os dados
    Private Sub CarregarDados()
        ' Configuração da string de conexão (alterar conforme o ambiente)
        Dim connectionString As String = "Data Source=192.168.10.105,1433;Initial Catalog=MaisRitmoBD;User ID=filipe;Password=Equiregis2025;"

        ' Query para buscar os dados
        Dim query As String = "SELECT ref, design, epv1 FROM st WHERE epv1 = 0 AND vaiwww = 0"

        ' Estabelece a conexão e carrega os dados
        Try
            Using connection As New SqlConnection(connectionString)
                Using command As New SqlCommand(query, connection)
                    connection.Open()

                    ' Executa a query e lê os dados
                    Dim reader As SqlDataReader = command.ExecuteReader()

                    ' Verifica se há registros antes de associar ao GridView
                    If reader.HasRows Then
                        GridView1.DataSource = reader
                        GridView1.DataBind()
                    Else
                        lblMensagem.Text = "Nenhum dado encontrado."
                    End If

                    reader.Close()
                End Using
            End Using
        Catch ex As Exception
            ' Exibe mensagem de erro
            lblMensagem.Text = "Erro ao carregar os dados: " & ex.Message
        End Try
    End Sub

    ' Evento para o checkbox (caso seja necessário usar no futuro)
    Protected Sub chkInterna_CheckedChanged(sender As Object, e As EventArgs) Handles chkInterna.CheckedChanged
        ' Implementação futura
    End Sub

    Protected Sub btnBuscar_Click(sender As Object, e As EventArgs) Handles btnBuscar.Click

    End Sub
End Class
