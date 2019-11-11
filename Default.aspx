<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Assignment2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

  <h1>Assignment 2</h1>
   
    <div class="container">
            <div class="form-group">
             <asp:Label runat="server" class="lead text-danger">Name</asp:Label>
             <asp:TextBox  class="form-control" ID="txtName" runat="server"/>
            </div>

            <div class="form-group">
             <asp:Label runat="server" class="lead text-danger">Address</asp:Label>
             <asp:TextBox  class="form-control" ID="txtAddress" runat="server"/>
            </div>

            <div class="form-group">
             <asp:Label runat="server" class="lead text-danger">Designation</asp:Label>
             <asp:TextBox  class="form-control" ID="txtDesignation" runat="server"/>
            </div>

            <div class="form-group">
             <asp:Label runat="server" class="lead text-danger">DOB</asp:Label>
             <asp:TextBox  class="form-control" ID="txtDob" runat="server"/>
            </div>
           <div>
           <asp:Button class="btn btn-block btn-danger" Text="Save" OnClick="saveInFile" runat="server" />
        </div>
      </div>
    <br />
     <table class="table table-condensed" border="1">
            <tr>
                <th>Name</th>
                <th>Address</th>
                <th>Designation</th>
                <th>Date of Birth:</th>
                
            </tr>
            <tr>
                <td><asp:Label ID="lblName" runat="server" /></td>
                <td><asp:Label ID="lblAddress" runat="server" /></td>
                <td><asp:Label ID="lblDes" runat="server" /></td>
                <td><asp:Label ID="lblDOB" runat="server" /></td>
            </tr>
           
        </table>
    


    <asp:Label ID="Label1" runat="server"></asp:Label>
</asp:Content>
