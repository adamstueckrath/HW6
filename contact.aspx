<%@ Page Title="Contact" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="contact.aspx.vb" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <br />
  <p>Your Email Address:
  <br />
  <asp:TextBox ID="senderAddress" runat="server" BorderStyle="Inset" Height="23px" Width="233px"></asp:TextBox>
  </p>
&nbsp;<p>&nbsp; Your Message:
  <br />
  &nbsp;<asp:TextBox ID="senderMessage" runat="server" BorderStyle="Inset" Height="163px" Width="367px" TextMode="MultiLine" style="margin-left: 0px"></asp:TextBox>
  <br />
  <br />
  &nbsp;<asp:Button ID="sendMail" runat="server" BorderStyle="Outset" Text="Send Message" Width="133px" />
   </p>
   <br />
   <asp:Label ID="confirmSent" runat="server"></asp:Label>
</asp:Content>

