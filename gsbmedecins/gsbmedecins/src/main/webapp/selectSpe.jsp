
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="entete.jsp"/>
<div id="contenu">
    <h2>Recherche des médecins par spécialité</h2>
    <h3>Spécialité à sélectionner : </h3>
    <form action="Control?action=listeMedecinsSpe" method="post">
        <div class="corpsForm">
            <p>
                <label for="lstSpes" accesskey="n">Spécialité : </label>
                <select id="lstSpes" name="choixSpe">
                    <option value="-1">Choisir une spécialité...</option>
                    <c:forEach var="spe" items="${listSpes}">
                        <option value="${spe.libelle}">${spe.libelle}</option>
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