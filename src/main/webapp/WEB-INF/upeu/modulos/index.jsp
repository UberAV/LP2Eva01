<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <script>
    $( function() {
      $( ".widget input[type=submit], .widget a, .widget button" ).button();
      $( "button, input, a" ).click( function( event ) {
        event.preventDefault();
      } );
    } );
    </script>        
    <h1>!Hola Estudiantes!</h1>
    
  Mensaje: Buenas Estudiantes Soy el Coordinador de la Facultad de Ingenieria de Sistemas 
   
   <h4></h4>
    <br/>
    
    <c:if test="${!empty ListaPersona}">
    <table class="table">
      <thead class="thead-dark">
        <tr>
          <th scope="col">Nombre</th>
          <th scope="col">Apellidos</th>
          <th scope="col">DNI</th>
        </tr>
      </thead>
      <tbody>
          <c:forEach items="${ListaPersona}" var="dato">
                <tr>
                  <td>${dato.nombre}</td>
                  <td>${dato.apellidos}</td>
                  <td>${dato.dni}</td>
                </tr>
        </c:forEach> 
      </tbody>
    </table>   
    </c:if>