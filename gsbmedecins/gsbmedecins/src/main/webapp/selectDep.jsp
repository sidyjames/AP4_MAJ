<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="entete.jsp"/>
<div id="contenu">
    <h2>Recherche des médecins par département</h2>
    <h3>Département à sélectionner : </h3>
    <form action="Control?action=listeMedecinsDep" method="post">
        <div class="corpsForm">
            <p>
                <label for="lstDeps" accesskey="n">Département : </label>
                <select id="lstDeps" name="choixDep">
                    <option value="-1">Choisir un département...</option>
                    <c:forEach var="dep" items="${listDeps}">
                        <option value="${dep.num}">${dep.num}</option>
                    </c:forEach>
                </select>
            </p>
        </div>
        <div class="piedForm">
            <p>
                <input id="ok" type="submit" value="Valider" size="20" />
                <input id="annuler" type="reset" value="Effacer" size="20" />
            </p> 
        </div>

    </form>
<jsp:include page="pied.jsp"/>