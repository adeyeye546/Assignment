<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RegisterForm.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FontAwesome Styles-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!-- Morris Chart Styles-->
    <link href="assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
    <!-- Custom Styles-->
    <link href="assets/css/custom-styles.css" rel="stylesheet" />
    <!-- Google Fonts-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="assets/js/Lightweight-Chart/cssCharts.css"> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"> 
    <div class="container">
        <div class="row"  style="width:50%; z-index:-1000; margin:200px;margin-top:70px; background:white;border:2px solid black; box-shadow:gray; padding:30px">
            <div class="form-group  col-sm-12">
        <label>First Name: </label>
        <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" />
          <%--<asp:RequiredFieldValidator ID="rqFirstName" runat=server ControlToValidate=TextBox1 ValidationGroup="valForm" CssClass="bg-error" ErrorMessage="First Name is required." Display="Dynamic"> *
        </asp:RequiredFieldValidator>--%>
    </div>
    <div class="form-group  col-sm-12">
        <label>Last Name: </label>
        <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" />
        <%--<asp:RequiredFieldValidator ID="rqLastName" runat=server ControlToValidate=TextBox2 ValidationGroup="valForm" CssClass="bg-error" ErrorMessage="Last Name is required." Display="Dynamic"> *
        </asp:RequiredFieldValidator>--%>
    </div>
        <div class="form-group  col-sm-12">
            <label>Gender: </label>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                <asp:ListItem>Female</asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Others</asp:ListItem>
            </asp:RadioButtonList>
            </div>
<%--    <div class="form-group  col-sm-12">
        <label>Gender: </label>
        <div class="btn-group" data-toggle="buttons">
            <label class="btn btn-primary">
                <input type="radio" name="options" ID="option1">
                Male
            </label>
            <label class="btn btn-primary">
                <input type="radio" name="options" id="option2">
                Female
            </label>
            <label class="btn btn-primary">
                <input type="radio" name="options" id="option3">
                Others
            </label>
        </div>
    </div>--%>
    <div class="form-group  col-sm-12">
        <label>Address: </label>
        <asp:TextBox ID="TextBox3" CssClass="form-control" TextMode="MultiLine" runat="server" />
        <%--<asp:RequiredFieldValidator ID="rqAddress" runat=server ControlToValidate=TextBox3 ValidationGroup="valForm" CssClass="bg-error" ErrorMessage="Address is required." Display="Dynamic"> *
        </asp:RequiredFieldValidator>--%>
    </div>
    <div class="form-group  col-sm-12">
        <label>Phone Number: </label>
        <asp:TextBox ID="TextBox4" CssClass="form-control" TextMode="Number" runat="server" />
        <%--<asp:RequiredFieldValidator ID="rqPhoneNumber" runat=server ControlToValidate=TextBox4 ValidationGroup="valForm" CssClass="bg-error" ErrorMessage="Phone Number is required." Display="Dynamic"> *
        </asp:RequiredFieldValidator>--%>
    </div>
    <div class="form-group  col-sm-12">
        <label>Email: </label>
        <asp:TextBox ID="TextBox5" CssClass="form-control" TextMode="Email" runat="server" />
       <%-- <asp:RequiredFieldValidator ID="rqEmail" runat=server ControlToValidate=TextBox5 ValidationGroup="valForm" CssClass="bg-error" ErrorMessage="Email is required." Display="Dynamic"> *
        </asp:RequiredFieldValidator>--%>
    </div>
    <div class="form-group  col-sm-12">
        <label>City: </label>
        <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server" />
        <%--<asp:RequiredFieldValidator ID="rqCity" runat=server ControlToValidate=TextBox6 ValidationGroup="valForm" CssClass="bg-error" ErrorMessage="City is required." Display="Dynamic"> *
        </asp:RequiredFieldValidator>--%>
    </div>
    
    <div class="form-group  col-sm-6">
       <asp:Button ID="Button1" CssClass="btn btn-primary btn-large" Text="Save" OnClick="Button1_Click" runat="server" /><asp:Button ID="Button2" CssClass="btn btn-primary btn-large" Text="Update" OnClick="Button2_Click" runat="server" /><asp:Button ID="Button3" CssClass="btn btn-primary btn-large" Text="Delete" OnClick="Button3_Click" runat="server" />
        <asp:Label ID="Label1" Text="" runat="server" /> <asp:Label ID="Label2" Text="" runat="server" /><asp:Label ID="Label3" Text="" runat="server" />
       </div>
        <%--<div class="form-group  col-sm-6">
       <asp:Button ID="Button2" CssClass="btn btn-primary btn-large" Text="Update" OnClick="Button2_Click" runat="server" />
            <asp:Label ID="Label2" Text="" runat="server" />
       </div>--%>
        </div>
    </div>
    
    
     
</asp:Content>

