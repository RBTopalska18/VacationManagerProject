﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Manager/ManagerMaster.Master" AutoEventWireup="true" CodeBehind="Employees.aspx.cs" Inherits="VacationManagerProject.Views.Manager.Manage_Employees" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">
 <div class="container-fluid">
     <div class="row">
         <div class="col">
             <h3 class="text-center">Manage Employees</h3>
         </div>
     </div>
     <div class="row">
         <div class="col-md-4">
             <div class="mb-3">
                 <label for ="" class="form-label text-success">Employee Name:</label>
                 <input type="text" placeholder="First Name" autocomplete="off" class="form-control" />
             </div>
             <div class="mb-3">
                 <label for ="" class="form-label text-success"></label>
                 <input type="text" placeholder="Last Name" autocomplete="off" class="form-control" />
             </div>
             <div class="mb-3">
                 <label for ="" class="form-label text-success">Role ID:</label>
                 <asp:GridView ID="GridView1" runat="server" class="form-control"></asp:GridView>
                 <asp:DropDownList ID="DropDownList1" runat="server" class="form-control"></asp:DropDownList>
             </div>
             <div class="row">
                 <div class="col d-grid"><asp:Button Text="Update" runat="server" class="btn-warning btn-block btn"/></div>
                 <div class="col d-grid"><asp:Button Text="Save" runat="server" class="btn-success btn-block btn"/></div>
                 <div class="col d-grid"><asp:Button Text="Delete" runat="server" class="btn-danger btn-block btn"/></div>

             </div>
         </div>
         <div class="col-md-8">
             <asp:GridView ID="GridView2" runat="server"></asp:GridView>
         
         </div>
     </div>


 </div>
    
</asp:Content>
