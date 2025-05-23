
<%--
  Created by IntelliJ IDEA.
  User: Esteban
  Date:12/5/2025
  Time: 9:30
  Descripción:
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.util.Map" %>
<%
    Map<String, String> errores = (Map<String, String>) request.getAttribute("errores");
%>
<html lang="en">
<head>
    <link href="<%=request.getContextPath()%>/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="bootstrap.min.css" rel="stylesheet"/>
    <title>Formulario de usuario</title>
</head>
<body>

<div>
    <form action="/proyectoFormulario/registro" method="post">
<h3>Formulario de Usuario</h3>
        <div>
            <label for="username">Usuario:</label>
            <div>
                <input type="text" name="username" id="username">
            </div>
        </div>
        <div>
            <%
                if(errores != null && errores.containsKey("username")){
                    out.print("<div style ='color:red;'>"+ errores.get("username")+ "</div>");
                }
            %>
        </div>


        <div>
            <label for="password">Password</label>
            <div>
                <input type="password" name="password" id="password">
            </div>
        </div>
        <div>
       <%
            if(errores != null && errores.containsKey("password")){
                out.print("<div style ='color:red;'>"+ errores.get("password")+ "</div>");
            }
        %>
        </div>
        <div>
            <label for="email">Email</label>
            <div>
                <input type="text" name="email" id="email">
            </div>
        </div>
        <div>
        <%
            if(errores != null && errores.containsKey("email")){
                out.print("<div style ='color:red;'>"+ errores.get("email")+ "</div>");
            }
        %>
        </div>

        <div>
            <label for="pais">País</label>
            <div>
                <select name="pais" id="pais">
                    <option value="">-----Seleccionar-----</option>
                    <option value="ES">España</option>
                    <option value="EC">Ecuador</option>
                    <option value="PE">Perú</option>
                    <option value="CO">Colombia</option>
                    <option value="BR">Brazil</option>
                    <option value="AR">Argentina</option>
                    <option value="VE">Venezuela</option>
                </select>
            </div>
        </div>
        <%
            if(errores != null && errores.containsKey("pais")){
                out.print("<div style ='color:red;'>"+ errores.get("pais")+ "</div>");
            }
        %>

        <div>
            <label for="lenguajes">Lenguajes</label>
            <div>
                <select name="lenguajes" id="lenguajes">
                    <option value="">-----Seleccionar-----</option>
                    <option value="Java">Java</option>
                    <option value="Python">Python</option>
                    <option value="C#">C#</option>
                    <option value="C++">C++</option>
                    <option value="Angular">Angular</option>
                </select>
            </div>
        </div>
        <div>

        <%
            if(errores != null && errores.containsKey("lenguajes")){
                out.print("<div style ='color:red;'>"+ errores.get("lenguajes")+ "</div>");
            }
        %>
        </div>

        <div>
            <label>Roles</label>
            <div>
                <input type="checkbox" name="roles" value="ROLE_ADMIN">
                <label>Administrador</label>
            </div>

            <div>
                <input type="checkbox" name="roles" value="ROLE_USER">
                <label>Usuario</label>
            </div>

            <div>
                <input type="checkbox" name="roles" value="ROLE_MODERADOR">
                <label>Moderador</label>
            </div>
        </div>
        <div>

        <%
            if(errores != null && errores.containsKey("roles")){
                out.print("<div style ='color:red;'>"+ errores.get("roles")+ "</div>");
            }
        %>
        </div>
        <div>
            <label>Idiomas</label>
            <div>
                <input type="radio" name="idioma" value="es">
                <label>Español</label>
            </div>
            <div>
                <input type="radio" name="idioma" value="en">
                <label>Ingles</label>
            </div>
            <div>
                <input type="radio" name="idioma" value="ru">
                <label>Ruso</label>
            </div>
        </div>
        <%
            if(errores != null && errores.containsKey("idioma")){
                out.print("<div style ='color:red;'>"+ errores.get("idioma")+ "</div>");
            }
        %>

        <div>
            <label for="habilitar">Habilitar</label>
            <div>
                <input type="checkbox" name="habilitar" id="habilitar" checked>
            </div>
        </div>

        <div>
            <div>
                <input type="submit" value="Enviar">
            </div>
        </div>

        <input type="hidden" name="secreto" value="123456">

    </form>
</div>

</body>
</html>
