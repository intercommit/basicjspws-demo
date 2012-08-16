<%@ include file="/WEB-INF/pages/header.jsp" %> 
<%@ page session="false" %>
<body>
<p style="float:right">Back to <a href="${indexPageUrl}">index</a> page.</p>
Operating system settings
<pre>
<c:out value="${systemEnv}"/>
</pre>
Java system properties
<pre>
<c:out value="${systemProps}"/>
</pre>
<p>
Back to <a href="${indexPageUrl}">index</a> page.
</p>
</body>
</html>