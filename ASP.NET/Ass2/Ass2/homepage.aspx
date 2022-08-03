<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="Ass2.homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            &nbsp;<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Product Details<br />
            <br />
            <br />
            Supplier ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;
            <asp:TextBox ID="Supplier_ID" runat="server" TextMode="Number"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Supplier_ID" Display="Dynamic" ErrorMessage="Supplier ID is required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            <br />
            <br />
            Supplier Name&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;
            <asp:TextBox ID="Supplier_Name" runat="server"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Supplier_Name" Display="Dynamic" ErrorMessage="Supplier name is required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            <br />
            <br />
            Product Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;
            <asp:TextBox ID="Product_Name" runat="server"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Product_Name" Display="Dynamic" ErrorMessage="Product name cannot be empty" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            <br />
            <br />
            Product Quantity&nbsp; :&nbsp;
            <asp:TextBox ID="Product_Quantity" runat="server" TextMode="Number"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Product_Quantity" Display="Dynamic" ErrorMessage="Product quantity cannot be zero, " ForeColor="#CC0000"></asp:RequiredFieldValidator>
            &nbsp;<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="Product_Quantity" Display="Dynamic" ErrorMessage="Quantity must be in between 1 and 100" ForeColor="#CC0000" MaximumValue="1000" MinimumValue="100"></asp:RangeValidator>
            <br />
            <br />
            Supply Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;
            <asp:TextBox ID="Supply_Date" runat="server" TextMode="Date"></asp:TextBox>

            <asp:RangeValidator ID="DateValidator" runat="server" ControlToValidate="Supply_Date" Display="Dynamic" ErrorMessage="Date must be current date" ForeColor="#CC0000" MaximumValue="<%# DateTime.Today.ToShortDateString() %>" MinimumValue="<%# DateTime.Today.ToShortDateString() %>"></asp:RangeValidator>

            <br />
            &nbsp;<br />
            Received By&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;
            <asp:DropDownList ID="Received_By" runat="server" Height="16px" Width="127px">
                <asp:ListItem>Kiran</asp:ListItem>
                <asp:ListItem>Yash</asp:ListItem>
                <asp:ListItem>Darshan</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Receiver's name is required" ControlToValidate="Received_By" Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            <br />
            <br />
            Receiver Email :&nbsp;&nbsp;&nbsp; :&nbsp;
            <asp:TextBox ID="Email" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" Display="Dynamic" ErrorMessage="Email is required " ControlToValidate="Email" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Email" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <br />
            <br />
            Receiver Phone&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;
            <asp:TextBox ID="Receiver_Phone" runat="server" TextMode="Phone"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Phone number is required" ControlToValidate="Receiver_Phone" Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            <br />
            <br />
            IsInvoiced&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Please select invoice status" ControlToValidate="IsInvoiced" Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            &nbsp;<asp:RadioButtonList ID="IsInvoiced" runat="server">
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="BtnSave" runat="server" Text="Save_Record" Width="119px" OnClick="BtnSave_Click" />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
