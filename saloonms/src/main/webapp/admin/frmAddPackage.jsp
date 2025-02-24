<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Package</title>

<%@ include file="../includes/conn.jsp" %>

<style>
    #user {
        padding: 18px;
    }
    label {
        color: white;
    }
</style>

</head>
<body>

    <div class="container px-lg-5 frm" style="margin-top: 50px">
        <div class="row mx-lg-n5 d-flex justify-content-center" style="margin-left: 200px">
            
            <div class="col-5 py-3 px-lg-5 border bg-dark">
                <form action="packdata.jsp" method="post" enctype="multipart/form-data">
                    <h2 class="text-center bg-warning"
                        style="width: 100%; padding: 15px; text-align: center; color: white">
                        Package Details</h2>
                    <br>
                    
                    <!-- Package Name -->
                    <div class="row">
                        <div class="col">
                            <div class="mb-3">
                                <label for="package_name" class="form-label">Package Name</label>
                                <input type="text" class="form-control" name="package_name"
                                    placeholder="Enter Package Name" required>
                            </div>
                        </div>
                    </div>
                    
                    <!-- Package Image -->
                    <div class="row">
                        <div class="col">
                            <div class="mb-3">
                                <label for="package_image" class="form-label">Package Picture</label> 
                                <input type="file" class="form-control" name="package_image" required>
                            </div>
                        </div>
                    </div>
                    
                    <!-- Package Rate -->
                    <div class="row">
                        <div class="col">
                            <div class="mb-3">
                                <label for="package_price" class="form-label">Package Price (₹)</label>
                                <input type="text" class="form-control" name="package_price"
                                    placeholder="Enter Package Price" required>
                            </div>
                        </div>
                    </div>
                    
                    <!-- Package Description -->
                    <div class="mb-3">
                        <label for="package_description" class="form-label">Package Description</label>
                        <textarea class="form-control" name="package_description"
                            placeholder="Enter Package Description" required></textarea>
                    </div>
                    
                    <!-- Submit Button -->
                    <div class="mb-3 text-center">
                        <input type="submit" value="Add Package"
                            style="width: 200px; font-size: 18px; color: white" class="btn btn-warning">
                    </div>
                </form>
            </div>
        </div>
    </div>

    <br><br>

</body>
</html>
