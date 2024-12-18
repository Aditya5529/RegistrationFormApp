<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="YourNamespace.register" %>


<!DOCTYPE html>
<html>
<head>
    <title>Registration Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .form-container {
            background-color: #ffffff;
            padding: 20px 40px;
            border-radius: 8px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
        }
        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }
        label {
            font-weight: bold;
            color: #555;
        }
        input[type="text"],
        input[type="date"],
        input[type="email"] {
            width: 100%;
            padding: 10px;
            margin: 8px 0 20px 0;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 1em;
        }
        input[type="submit"] {
            width: 100%;
            padding: 12px;
            border: none;
            border-radius: 4px;
            background-color: #28a745;
            color: #fff;
            font-size: 1em;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        input[type="submit"]:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Register Here</h2>
        <form id="registrationForm" runat="server">
            <label for="name">Name:</label>
            <asp:TextBox ID="txtName" runat="server" required="true"></asp:TextBox>

            <label for="dob">Date of Birth:</label>
            <asp:TextBox ID="txtDob" runat="server" TextMode="Date" required="true"></asp:TextBox>

            <label for="email">Email:</label>
            <asp:TextBox ID="txtEmail" runat="server" required="true"></asp:TextBox>

            <label for="contact">Contact:</label>
            <asp:TextBox ID="txtContact" runat="server" required="true"></asp:TextBox>

            <asp:Button ID="btnSubmit" Text="Register" runat="server" OnClick="RegisterUser" />
        </form>
    </div>
</body>
</html>


