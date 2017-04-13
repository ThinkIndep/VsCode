using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Configuration;
using System.Data;


using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;

using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Drawing;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
   
    
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        //数据库连接字符串，注意这个写法（localdb）后面必须是两个斜杠，因为这中间有个转义的过程

        //Initial Catalog=要连接的数据库名

        //Intergrated Security=true  开启windows身份验证

        string ConnectString = "Server=(localdb)\\Projects;Initial Catalog=StuManager;Integrated Security=true";

        SqlConnection con = null;

        SqlCommand cmd = null;

        SqlDataReader str = null;

        try
        {
            

            con = new SqlConnection(ConnectString);       //连接到数据库

            cmd = con.CreateCommand();



            cmd.CommandText = "select * from StuInfo where StuID="+txtUserID.Text+" and StuPassword="+txtPwd.Text;  //T-SQL语句    

            con.Open();                                  //创建连接后需要用Open打开连接，结束后要关闭连接，及时释放资源

            str = cmd.ExecuteReader();

            if (str.Read())
            {
                Session["userName"] = txtUserID.Text;
                Session["password"] = txtPwd.Text;
                //lblMessage.Text = "登陆成功！";  
                Response.Redirect("Success.aspx");
                //Response.Write("<script>alert('登录成功欢迎您');location.href='../secure/report/test2.aspx';</script>");  
            }
            else
            {
                //lblMessage.Text = "无法登陆，用户名或密码错误！";
                //Response.Redirect("login.aspx");  
                Response.Write("<script language='javascript'>alert('学号或密码有误！！');localtion='login.aspx'</script>");
            }
            string vCode = Session["ValidateNum"].ToString();
            if (!(txtCaptcha.Text.Trim().ToUpper() == vCode.ToUpper()))
            {
                Response.Write("<script language='javascript'>alert('验证码！！');localtion='login.aspx'</script>");
            }  


        }


        catch (Exception ms)
        {

            Console.WriteLine(ms.Message);

        }

        finally
        {

            str.Close();

            cmd.Clone();

            con.Close();

        }
        Response.Write("<script language='javascript'>alert('登录成功！！');localtion='Reg.aspx'</script>");
    }
}