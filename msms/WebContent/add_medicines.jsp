<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Medicines</title>
</head>
<body>
<form action="Add_medicine">
<input type="text" placeholder="Medicine Name" name="med_name"><br><br>
<input type="number" placeholder="Medicine Units(mg)" name="med_unit"><br><br>
<input type="number" placeholder="Price per unit" name="price_per_unit"><br><br>
<input type="text" placeholder="Description" name="desc"><br><br>
<input type="text" placeholder="Batch No." name="Batch_no"><br><br>
<input type="date" placeholder="Expiry Date(yyyy-mm-dd)" name="expiry_date"><br><br>
<input type="submit" value="Submit">
<input type="reset">
</form>
</body>
</html>