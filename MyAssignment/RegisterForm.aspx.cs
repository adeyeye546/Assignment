using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string firstname = TextBox1.Text;
        string lastname = TextBox2.Text;
        string gender = RadioButtonList1.Text;
        string address = TextBox3.Text;
        string phonenumber = TextBox4.Text;
        string email = TextBox5.Text;
        string city = TextBox6.Text;

        String query = "insert into newregisters(FirstName, LastName, Gender, Address, PhoneNumber, Email, City) values ('" + firstname + "', '" + lastname + "','" + gender + "','" + address + "','" + phonenumber + "','" + email + "','" + city + "')";
        String mycon = "Data Source=DESKTOP-K54L4KP; Initial Catalog=RegistrationForm; Integrated Security=true;";
        SqlConnection con = new SqlConnection(mycon);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = query;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        Label1.Text = " Registration Successful";
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";



    }



    protected void Button2_Click(object sender, EventArgs e)
    {
        //        string firstname = TextBox1.Text;
        //        string lastname = TextBox2.Text;
        //        string gender = RadioButtonList1.Text;
        //        string address = TextBox3.Text;
        //        string phonenumber = TextBox4.Text;
        //        string email = TextBox5.Text;
        //        string city = TextBox6.Text; 

        //String mycon = "Data Source=DESKTOP-K54L4KP; Initial Catalog=RegistrationForm; Integrated Security=true;";
        //        SqlConnection con = new SqlConnection(mycon);


        //        String query = "UPDATE newregisters set FirstName = @firstname, LastName = @lastname, Gender = @gender, Address = @address, PhoneNumber = @phonenumber, Email = @email, City = @city  where first = @first";

        //        SqlCommand cmd = new SqlCommand(query, con);
        //        cmd.Connection.Open();
        //        string first = TextBox1.Text;

        //        cmd.Parameters.AddWithValue("@first", first);
        //        cmd.Parameters.AddWithValue("@firstname", firstname);
        //        cmd.Parameters.AddWithValue("@lastname", lastname);
        //        cmd.Parameters.AddWithValue("@gender", gender);
        //        cmd.Parameters.AddWithValue("@address", address);
        //        cmd.Parameters.AddWithValue("@phonenumber", phonenumber);
        //        cmd.Parameters.AddWithValue("@email", email);
        //        cmd.Parameters.AddWithValue("@city", city);

        //        cmd.ExecuteNonQuery();
        //        cmd.Connection.Close();
        //        Label2.Text = " Update was Successful";
        //        //TextBox1.Text = "";
        //        //TextBox2.Text = "";
        //        //TextBox3.Text = "";
        //        //TextBox4.Text = "";
        //        //TextBox5.Text = "";
        //        //TextBox6.Text = "";
        string firstname = TextBox1.Text;
        string lastname = TextBox2.Text;
        string gender = RadioButtonList1.Text;
        string address = TextBox3.Text;
        string phonenumber = TextBox4.Text;
        string email = TextBox5.Text;
        string city = TextBox6.Text;


        String query = "update newregisters set firstname ='" + TextBox2.Text + "' where firstname='"+TextBox1.Text+"'";
        String mycon = "Data Source=DESKTOP-K54L4KP; Initial Catalog=RegistrationForm; Integrated Security=true;";
        SqlConnection con = new SqlConnection(mycon);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = query;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        cmd.Connection.Close();
        Label2.Text = " Update Successful";

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        string firstname = TextBox1.Text;
        string lastname = TextBox2.Text;
        string gender = RadioButtonList1.Text;
        string address = TextBox3.Text;
        string phonenumber = TextBox4.Text;
        string email = TextBox5.Text;
        string city = TextBox6.Text;

        
        String query = "delete from newregisters where firstname ='"+TextBox1.Text+"'";
        String mycon = "Data Source=DESKTOP-K54L4KP; Initial Catalog=RegistrationForm; Integrated Security=true;";
        SqlConnection con = new SqlConnection(mycon);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = query;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        cmd.Connection.Close();
        Label3.Text = " Delete Successful";
       
    }
}
 
