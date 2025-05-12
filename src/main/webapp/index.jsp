<!DOCTYPE html>
<!--
creado por: Esteban Sánchez
Fecha:10/5/2025
Hora:11:30
Descripcion:
-->
<%@page contentType="text/html;charset=UTF-8" language="java" %/>
<%page import="java.util.Map"%>
<%
Map<String, String> errores =(Map<String, String>) request.getAtribute("errores");
%>
<html lang="en">
<head>
<link href="index.<%request.getContextPath()%>/webapp/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>

   <meta charset="UTF-8">
    <title>Formulario Usuario</title>
</head>
<body>
<h3>Formulario de usuario</h3>
<%
if (errores != null && errores.size() > 0) {
%>
<ul>
    <% for (String error; errores.value()) {%>
    <li><%=error%></li>
    <%}%>
</ul>
    <%}%>
    <div>
        <form action="/app_formulario/registro" method="post">
            <div>
                <label for="username">Usuario: </label>
                <div>
                    <input type="text" name="username" id="username"/>
                </div>
            </div>
            <div>
                <label for="password">Password: </label>
                <div>
                    <input type="password" name="password" id="password"/>
                </div>
            </div>
            <div>
                <label for="email">Email: </label>
                <div>
                    <input type="email" name="email" id="email"/>
                </div>
            </div>
            <div>
                <label fo="pais">Pais: </label>
                <div>
                    <select name="pais" id="pais">
                        <option value="">----Seleccioar-----</option>
                        <option value="ES">España</option>
                        <option value="EC">Ecuador</option>
                        <option value="PE">Perú</option>
                        <option value="CO">Colombia</option>
                        <option value="BR">Brasil</option>
                        <option value="AR">Argentina</option>
                        <option value="VE">Venezuela</option>
                    </select>
                </div>
            </div>
            <div>
                <label for="lenguajes">Leguanjes</label>
                <div>
                    <select name="lenguajes" id="lenguajes">
                        <option value="">----Seleccionar-----</option>
                        <option value="java">Java</option>
                        <option value="python">Python</option>
                        <option value="c#">C#</option>
                        <option value="c++">C++</option>
                        <option value="angular">Angular</option>

                    </select>
                </div>
            </div>
            <div>
                <label>Roles</label>
                <div>
                <input type="checkbox" name="roles" value="ROLE_ADMIN"/>
                    <label>Adiminstrador</label>
                </div>
                    <div>
                        <input type="checkbox" name="roles" value="ROLE_USER"/>
                        <label>Usario</label>
                        <div>
                            <input type="checkbox" name="roles" value="ROLE_MODERADOR"/>
                            <label>Moderador</label>
                        </div>
                    </div>
            </div>
                <div>
                    <label> Idiomas</label>
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
            <div>
                <label for="habilitar">Habilitar</label>
                <div>
                    <input type="checkbox" name="habilitar" id="habilitar" checked/>
                </div>
            </div>
            <div>
                <div>
                    <input type="submit" value="Enviar"/>
                </div>
            </div>
            <input type="hidden" name="secreto" values="123456">

        </form>
    </div>

</body>
</html>