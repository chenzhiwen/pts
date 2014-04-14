<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta name="description" content="Bootstrap Version2.0 horizontal form layout example from w3cschool.cc."> 
<link href="../../css/bootstrap.css" rel="stylesheet">
</head>
<body>
        <form role="form" class="form-horizontal" id="contactForm" onsubmit="send(); return false;">
            <label>Please fill the form</label>
            <br><br>
            <div class="form-group">
                <label for="name" class="col-lg-3 col-sm-3">My Label 2</label>
                <div class="col-lg-7 col-sm-7">
                    <input type="text" class="form-control" name="name" id="name" required="required" value="myName">
                </div>
            </div>

            <div class="form-group">
                <label for="email" class="col-lg-3 col-sm-3">My Label 3</label>
                <div class="col-lg-7 col-sm-7">
                    <input type="email" class="form-control" name="email" id="email" required="required">
              </div>
            </div>

            <div class="form-group">
                <label for="message" class="col-lg-3">My Label 4</label>
                <div class="col-lg-10 col-sm-10">
                     <textarea class="form-control" name="message" id="message" required="required"></textarea>
                </div>
            </div>

            <button type="submit" class="btn btn-primary" id="submit" style="margin-left: 20px">Send</button>
        </form>
</body>
</html>