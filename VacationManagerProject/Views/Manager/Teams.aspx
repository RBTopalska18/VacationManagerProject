<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Manager/ManagerMaster.Master" AutoEventWireup="true" CodeBehind="Teams.aspx.cs" Inherits="VacationManagerProject.Views.Manager.Teams" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">
    <div class="container-fluid">
     <div class="row">
         <div class="col">
             <h3 class="text-center">Manage Teams</h3>
         </div>
     </div>
     <div class="row">
         <div class="col-md-4">
             <div class="mb-3">
                 <label for ="" class="form-label text-success">Team Name:</label>
                 <input type="text" placeholder="First Name" autocomplete="off" class="form-control"  id="TNameCb"/>
             </div>
             <div class="mb-3">
                 <label for ="" class="form-label text-success">User ID:</label>
                 <asp:DropDownList ID="UserIdCb" runat="server" class="form-control" >
                     <asp:ListItem>1</asp:ListItem>
                     <asp:ListItem>2</asp:ListItem>
                     <asp:ListItem>3</asp:ListItem>
                     <asp:ListItem>4</asp:ListItem>
                     <asp:ListItem>5</asp:ListItem>
                     <asp:ListItem>6</asp:ListItem>
                 </asp:DropDownList>
                        
             </div>
             <div class="row">
                 <div class="col d-grid"><asp:Button Text="Update" runat="server" class="btn-warning btn-block btn" ID="UpdateBtn"/></div>
                 <div class="col d-grid"><asp:Button Text="Save" runat="server" class="btn-success btn-block btn" ID="SaveBtn"/></div>
                 <div class="col d-grid"><asp:Button Text="Delete" runat="server" class="btn-danger btn-block btn" ID="DeleteBtn"/></div>

             </div>
         </div>
         <div class="col-md-8">
             <asp:GridView ID="GridView2" runat="server"></asp:GridView>
         
         </div>
     </div>


 </div> 
</asp:Content>
