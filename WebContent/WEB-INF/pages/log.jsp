<%@ include file="/WEB-INF/pages/header.jsp" %> 
<%@ page session="false" %>
<body>
<p style="float:right">Back to <a href="${indexPageUrl}">index</a> page.</p>
<p>
${logTextInfo}
</p>
<pre>
${logText}
</pre>
</body>
</html>
