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
        /**
        if (!IsPostBack)
        {
            string validateNum = CreateRandomNum(4);
            CreateImage(validateNum);
            Session["ValidateNum"] = validateNum;
        }**/
    }
    //生产随机数
    private string CreateRandomNum(int NumCount)
    {
        string allChar = "0,1,2,3,4,5,6,7,8,9,A,B,C,D,E,F,G,H,I,J,K,O,P,Q,R,S,T,U,W,X,Y,Z,a,b,c,d,e,f,g,h,i,j,k,m,n,o,p,q,s,t,u,w,x,y,z";
        string[] allCharArray = allChar.Split(',');//拆分成数组
        string randomNum = "";
        int temp = -1;                             //记录上次随机数的数值，尽量避免产生几个相同的随机数
        Random rand = new Random();
        for (int i = 0; i < NumCount; i++)
        {
            if (temp != -1)
            {
                rand = new Random(i * temp * ((int)DateTime.Now.Ticks));
            }
            int t = rand.Next(35);
            if (temp == t)
            {
                return CreateRandomNum(NumCount);
            }
            temp = t;
            randomNum += allCharArray[t];


        }
        return randomNum;
    }
    //生产图片
    private void CreateImage(string validateNum)
    {
        if (validateNum == null || validateNum.Trim() == string.Empty)
            return;
        //生成BitMap图像
        System.Drawing.Bitmap image = new System.Drawing.Bitmap(validateNum.Length * 12 + 12, 22);
        Graphics g = Graphics.FromImage(image);
        try
        {
            //生成随机生成器
            Random random = new Random();
            //清空图片背景
            g.Clear(Color.White);
            //画图片的背景噪音线
            for (int i = 0; i < 25; i++)
            {
                int x1 = random.Next(image.Width);
                int x2 = random.Next(image.Width);
                int y1 = random.Next(image.Height);
                int y2 = random.Next(image.Height);
                g.DrawLine(new Pen(Color.Silver), x1, x2, y1, y2);
            }
            Font font = new System.Drawing.Font("Arial", 12, (System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic));
            System.Drawing.Drawing2D.LinearGradientBrush brush = new System.Drawing.Drawing2D.LinearGradientBrush(new Rectangle(0, 0, image.Width, image.Height), Color.Blue, Color.DarkRed, 1.2f, true);
            g.DrawString(validateNum, font, brush, 2, 2);
            //画图片的前景噪音点
            for (int i = 0; i < 100; i++)
            {
                int x = random.Next(image.Width);
                int y = random.Next(image.Height);
                image.SetPixel(x, y, Color.FromArgb(random.Next()));

            }
            //画图片的边框线
            g.DrawRectangle(new Pen(Color.Silver), 0, 0, image.Width - 1, image.Height - 1);
            System.IO.MemoryStream ms = new System.IO.MemoryStream();
            //将图像保存到指定流
            image.Save(ms, System.Drawing.Imaging.ImageFormat.Gif);
            Response.ClearContent();
            Response.ContentType = "image/Gif";
            Response.BinaryWrite(ms.ToArray());
        }
        finally
        {
            g.Dispose();
            image.Dispose();
        }
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
                Response.Write("<script language='javascript'>alert('学号或密码有误！！');localtion='Login.aspx'</script>");
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