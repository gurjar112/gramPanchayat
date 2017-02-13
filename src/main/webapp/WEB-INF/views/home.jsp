<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
<script src="https://code.jquery.com/jquery-1.11.2.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
    $(document).ready(function(){
        $("#myModal").modal('show');
    });
</script>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
<div id="myModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Choose your location</h4>
            </div>
            <div class="modal-body">
                
                <form:form action="start" method="post" commandName="location">
                    <div class="form-group">
                        <form:input path="district" class="form-control" placeholder="District" />
                    </div>
                    <div class="form-group">
                        <form:input path="tehsil" class="form-control" placeholder="Tehsil" />
                    </div>
                    <div class="form-group">
                        <form:input type="text" path="village" class="form-control" placeholder="Village" />
                    </div>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </form:form>
            </div>
        </div>
    </div>
</div>
</body>
</html>
