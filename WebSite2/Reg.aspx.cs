using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class Reg : System.Web.UI.Page
{

    public string strConnection;
    SqlConnection conn;
    protected void Page_Load(object sender, EventArgs e)
    {
        //判断是否第一次进入页面，如果是，则绑定数据库；如果不是，则无需绑定。  
        if (!this.IsPostBack)
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
                //绑定学院
                cmd.CommandText = "select* from dbo.ColleInfo"; //T-SQL语句    

                con.Open();                                  //创建连接后需要用Open打开连接，结束后要关闭连接，及时释放资源

                str = cmd.ExecuteReader();
               
                this.ddlCollege.DataSource = str;
                this.ddlCollege.DataTextField = "colleName";//文本内容  
                this.ddlCollege.DataValueField = "colleID"; //数据源字段  
                this.ddlCollege.DataBind();
                str.Close();

                //绑定专业
                cmd.CommandText = "select* from dbo.MajorInfo where colleID=" + this.ddlCollege.SelectedValue;   //T-SQL语句    

               // con.Open();                                  //创建连接后需要用Open打开连接，结束后要关闭连接，及时释放资源

                str = cmd.ExecuteReader();

                this.ddlMajor.DataSource = str;
                this.ddlMajor.DataTextField = "majorName";//文本内容  
                this.ddlMajor.DataValueField = "majorID"; //数据源字段  
                this.ddlMajor.DataBind();
              //  str.Close();
              
              
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
        }  
    }
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void btnTest_Click(object sender, EventArgs e)
    {
        
    }
    protected void txtSecPwd_Disposed(object sender, EventArgs e)
    {
    }

    protected void btnRegister_Click(object sender, EventArgs e)
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

           // string sqltest = "select * from ureg where UserID='" + this.txtUserID.Text + "'";

            //cmd.CommandText = "select StuID from dbo.StuInfo"; //T-SQL语句    
            cmd.CommandText = "insert into dbo.StuInfo "
                    + "(StuID,StuName,StuGender,StuNation,StuCollege,StuMajor,StuPassword,StuInterest,StuPhone,StuEmail)"
                    + "values( '" + txtUserID.Text + "', N'" + txtLoginName.Text + "',N'" + ddlSex.Text
                    + "',N'" + ddlNationality.Text + "',   N'" + ddlCollege.SelectedItem.Text.ToString() + "',   N'" + ddlMajor.SelectedItem.Text.ToString()
                    + "', '" + txtPwd.Text + "', N'" + txtInterest.Text + "', '" + txtPhone.Text + "', '" + txtEmail.Text + "' )"; //T-SQL语句   

            con.Open();                                  //创建连接后需要用Open打开连接，结束后要关闭连接，及时释放资源

            str = cmd.ExecuteReader();
            /**
             * 
                        while (str.Read())
                        {

                           // Console.WriteLine(str[0]);
                            Response.Write("<script language='javascript'>alert('rtrdfg');localtion='Reg.aspx'</script>");
               

                        }
             * */
            Response.Write("<script language='javascript'>alert('注册成功！！');localtion='login.aspx'</script>");
          
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



        //Response.Redirect("SuccessReg.aspx");
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        txtUserID.Text = "";
        txtLoginName.Text = "";
        txtPwd.Text = "";
        txtSecPwd.Text = "";
        txtPhone.Text = "";
        txtInterest.Text = "";
        
        txtEmail.Text = "";

        txtUserID.Focus();
 
    }
    
    protected void ddlCollege_SelectedIndexChanged(object sender, EventArgs e)
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
            string colleID = this.ddlCollege.SelectedValue;

            con = new SqlConnection(ConnectString);       //连接到数据库

            cmd = con.CreateCommand();


            //绑定专业
            cmd.CommandText = "select * from dbo.MajorInfo where colleID=" + colleID;  //T-SQL语句    

            con.Open();                                  //创建连接后需要用Open打开连接，结束后要关闭连接，及时释放资源

            str = cmd.ExecuteReader();

            this.ddlMajor.DataSource = str;
            this.ddlMajor.DataTextField = "majorName";//文本内容  
            this.ddlMajor.DataValueField = "majorID"; //数据源字段  
            this.ddlMajor.DataBind();
            str.Close();


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
    } 
     
}