<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<script type="text/javascript">
    /* Define a Object Literal */

    var StudentDetails = {
        StudentName: "Jaguar",
        DOB: "23/06/1987",
        Skills: "Front End Development",
        Unwanted: "To Be deleted",

        /* Nested Object Literal*/
        Address: {
            State: "Maharashtra",
            City: "Mumbai",
            Country: "India",
            Pincode: "400071"
        }
    };


    /* Adding properties to Object Literal*/

    StudentDetails.eyecolor = "Brown";
    StudentDetails.mothername = "Hema";


</script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
    <script type="text/javascript">

        /*  Display value of Object literal*/
        Object.keys(StudentDetails).forEach(function (key) {
            var value = StudentDetails[key];
            alert(value);
        });


        /*  Display value of Nested Object literal*/
        Object.keys(StudentDetails.Address).forEach(function (keyAdd)
        {
            var nestedValue = StudentDetails.Address[keyAdd];
            alert(nestedValue);
        });

        /* Delete a property*/
        delete StudentDetails.Unwanted;


        /*  Display value of Object literal after deleting property*/
        Object.keys(StudentDetails).forEach(function (key) {
            var value = StudentDetails[key];
            alert(value);
        });
    </script>
</body>
</html>
