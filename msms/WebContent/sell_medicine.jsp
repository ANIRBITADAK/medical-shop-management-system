<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<%@page import="java.util.*" %>
<% 
ArrayList<String> med = new ArrayList<String>();
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/medicines", "root", "abanadak");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select med_name from med");
	
	while(rs.next())
	{
		String med_name=rs.getString("med_name");
		med.add(med_name);
	}
}catch(Exception e)
{	
	e.printStackTrace();
	
}

%>

<html>
<head>
    <title>Sell Medicine</title>

    <style>
        table {
            width: 70%;
            font: 17px Calibri;
        }
        table, th, td {
            border: solid 1px #DDD;
            padding: 2px 3px;
            text-align: center;
        }
    </style>
</head>
<body onload="createTable()">

<input type="text" placeholder="Customer Name">
<input type="number" placeholder="Mobile Number">
<input type="text" placeholder="Address">
    
    <p align="right">
        <input type="button" id="addRow" value="Add New Medicine" onclick="addRow()" />
    </p>

    <!--THE CONTAINER WHERE WE'll ADD THE DYNAMIC TABLE-->
    <div id="cont"></div>
    
    <input type="submit" value="submit" onClick="">
    


</body>

<script>

	
    // ARRAY FOR HEADER.
    var arrHead = new Array();
    arrHead = ['', 'Medicine Name', 'Quantity', 'Unit Price','Batch-No','Expiry Date','Total'];      // SIMPLY ADD OR REMOVE VALUES IN THE ARRAY FOR TABLE HEADERS.

    var medArray = [];
	<%for(int i=0;i<med.size();i++){%>
    medArray.push('<%= med.get(i)%>');
	<%}%>
	
    // FIRST CREATE A TABLE STRUCTURE BY ADDING A FEW HEADERS AND
    // ADD THE TABLE TO YOUR WEB PAGE.
    function createTable() {
        var MedTable = document.createElement('table');
        MedTable.setAttribute('id', 'MedTable');            // SET THE TABLE ID.

        var tr = MedTable.insertRow(-1);

        for (var h = 0; h < arrHead.length; h++) {
            var th = document.createElement('th');          // TABLE HEADER.
            th.innerHTML = arrHead[h];
            tr.appendChild(th);
        }

        var div = document.getElementById('cont');
        div.appendChild(MedTable);    // ADD THE TABLE TO YOUR WEB PAGE.
    }

    // ADD A NEW ROW TO THE TABLE.s
    function addRow() {
        var MedTab = document.getElementById('MedTable');

        var rowCnt = MedTab.rows.length;        // GET TABLE ROW COUNT.
        var tr = MedTab.insertRow(rowCnt);      // TABLE ROW.
        tr = MedTab.insertRow(rowCnt);

        for (var c = 0; c < arrHead.length; c++) {
            var td = document.createElement('td');          // TABLE DEFINITION.
            td = tr.insertCell(c);

            if (c == 0) {           // FIRST COLUMN.
                // ADD A BUTTON.
                var button = document.createElement('input');

                // SET INPUT ATTRIBUTE.
                button.setAttribute('type', 'button');
                button.setAttribute('value', 'Remove');

                // ADD THE BUTTON's 'onclick' EVENT.
                button.setAttribute('onclick', 'removeRow(this)');

                td.appendChild(button);
            }
            else if(c==1)
            	{
            	 var ele = document.createElement('select');
            
            	 for(var i = 0; i < medArray.length; i++)
                 {
                     var option = document.createElement("OPTION");
                     option.text = medArray[i];
                     option.value=medArray[i];
                     ele.add(option);
                 }
            	
            	 td.appendChild(ele);
            	}
            else {
                // CREATE AND ADD TEXTBOX IN EACH CELL.
                var ele = document.createElement('input');
                ele.setAttribute('type', 'text');
                ele.setAttribute('value', '');

                td.appendChild(ele);
            }
        }
    }

    // DELETE TABLE ROW.
    function removeRow(oButton) {
        var MedTab = document.getElementById('MedTable');
        MedTab.deleteRow(oButton.parentNode.parentNode.rowIndex);       // BUTTON -> TD -> TR.
    }


</script>
</html>