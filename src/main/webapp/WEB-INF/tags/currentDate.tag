<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
<jsp:useBean id="now" class="java.util.Date" />
<fmt:formatDate value="${now}" type="both" dateStyle="long" pattern="yyyy-MM-dd" />