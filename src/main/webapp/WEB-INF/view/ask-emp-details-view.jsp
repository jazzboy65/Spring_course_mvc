<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>

<body>

<h2>Dear Employee, Please enter your details</h2>

<br>
<br>

<form:form action="showDetails" modelAttribute="employee">

    Name <form:input path="name"/>
    <form:errors path="name"/>
    <br><br>

    Surname <form:input path="surname"/>
    <form:errors path="surname"/>
    <br><br>

    Salary <form:input path="salary"/>
    <form:errors path="salary"/>
    <br><br>

    Department <form:select path="department">
    <form:options items="${employee.departments}"/>
    </form:select>
    <br><br>

    Which laptop do you want?
    <form:radiobuttons path="laptopBrand" items="${employee.laptopBrands}"/>
    <%--Hardcoded var:--%>
<%--     <form:radiobutton path="laptopBrand" value="Apple"/> Apple--%>
<%--     <form:radiobutton path="laptopBrand" value="HP"/> HP--%>
<%--     <form:radiobutton path="laptopBrand" value="Lenovo"/> Lenovo--%>

    <%--Hardcoded var:--%>
<%--    <form:option value="Information Technology" label="IT"/>--%>
<%--    <form:option value="Human Resources" label="HR"/>--%>
<%--    <form:option value="Sales" label="Sales"/>--%>
<%--    </form:select>--%>
<%--    <br><br>--%>
    <br><br>
    Foreign Language(s)
<%--    Hardcoded var--%>
<%--    EN <form:checkbox path="languages" value="English"/>--%>
<%--    DE <form:checkbox path="languages" value="Deutch"/>--%>
<%--    FR <form:checkbox path="languages" value="French"/>--%>
    <form:checkboxes path="languages" items="${employee.languageList}"/>
    <br><br>

    Phone number <form:input path="phoneNumber"/>
    <form:errors path="phoneNumber"/>
    <br><br>

    Email <form:input path="email"/>
    <form:errors path="email"/>
    <br><br>


    <br><br>
    <input type="submit" value="OK"/>

</form:form>

</body>

</html>