<%--
    Document   : reg.html
    Created on : Jan 2, 2017, 12:21:16 PM
    Author     : Kassie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/themes/icon.css">
    <script type="text/javascript" src="<%=request.getContextPath()%>/jquery.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/jquery.easyui.min.js"></script>
 <%--         <script>
 $(document).ready(function () {

    $('#myform').validate({
        rules: {
            nme: {
                required: true,
                name: true
            },
            ege: {
                required: true,
                number: true
                
            }
        },
    message:{
            nme:{
               required: 'please enter your name',
               name: 'please enter a valid name'
            },
            ege: {
                required: 'please enter your age',
                number: 'please enter a valid age'
                
            }
        } 
    });

}); 


</script>   --%> <script type="text/javascript">
 $.extend($.fn.validatebox.defaults.rules, {
     isNumber: {
         validator: function (value) {
             return /^-?\d+\.?\d*$/.test(value);
         },
         message: 'Please enter a valid number!'
     },
     isName: {
         validator: function (value) {
             return /^[A-Za-z ]{3,50}$/.test(value);
         },
         message: 'Please enter a valid name!'
     }
 });
 function validate_form()
    {
       $('#ff').form('submit', {
        onSubmit:function(){
		var f = this;
		var opts = $.data(this, 'form').options;
		if($(this).form('validate') == false){
            return false;
            }
            document.form1.action="reg.jsp";
            document.form1.submit();


            }
         });
    }



</script>
        <title>JSP Page</title>
    </head>
    <body>
    <form id="ff" method="post" name="form1" >


<li>Name: <input class="easyui-textbox" type="text" name="nme" id="nme" data-options="required:true, validType:'isName'"/></li><br>
<li>Age : <input class="easyui-textbox" type="text" name="ege" id="ege" data-options="required:true, validType:'isNumber'"/></li><br>
<li>Sex : <input class="easyui-textbox" type="text" name="sx" id="sx" data-options="required:true"/></li><br>
<li>Present Address : <input class="easyui-textbox" type="text" name="preadd" data-options="required:true" /></li><br>
<li>Permanent Address : <input class="easyui-textbox" type="text" name="peradd" data-options="required:true" /></li>
<input type="button" name="sub" value="Submit" onclick="return validate_form()"/>

</form>   





    </body>
</html>
