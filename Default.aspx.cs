using System;
using System.Collections.Generic;
using System.IO;

using System.Web.UI;
using System.Windows.Forms;

namespace Assignment2
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string filedata;
          
            TextReader tr = new StreamReader(Server.MapPath("Users.txt"));
            filedata = tr.ReadLine();
            //filedata += tr.ReadToEnd();
            tr.Close();

            String[] singledata = filedata.Split(',');
            lblName.Text = singledata[0];
            lblAddress.Text = singledata[1];
            lblDes.Text = singledata[2];
            lblDOB.Text = singledata[3];

        }

        protected void saveInFile(object sender, EventArgs e)
        {

            string name = "";
            string address = "";
            string designation = "";
            string dob = "";


            name = txtName.Text.Trim();
            address = txtAddress.Text.Trim();
            designation = txtDesignation.Text.Trim();
            dob = txtDob.Text.Trim();

            string userdata = name + "," + address + "," + designation + "," + dob + Environment.NewLine;


           // TextReader tw = new StreamWriter(Server.MapPath("Users.txt"));
           // tw.WriteLine(userdata);
           // tw.Close();

           File.AppendAllText(Server.MapPath("Users.txt"), userdata);


            string filedata;
            
            TextReader tr = new StreamReader(Server.MapPath("Users.txt"));
            filedata = tr.ReadLine();
            //filedata += tr.ReadToEnd();
            tr.Close();

            String[] singledata = filedata.Split(',');
            lblName.Text = singledata[0];
            lblAddress.Text = singledata[1];
            lblDes.Text = singledata[2];
            lblDOB.Text = singledata[3];
            





        }
    }
}