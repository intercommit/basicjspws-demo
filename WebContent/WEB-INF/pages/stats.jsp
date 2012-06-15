<%@ include file="/WEB-INF/pages/header.jsp" %> 
<%@ page session="false" %>
<body>
<p style="float:right">Back to <a href="${indexPageUrl}">index</a> page.</p>
<p>
Home dir: ${appHomeDir}<br>
Version : ${appVersion}<br>
</p>
<p>
Requested URL: ${requestedUrl} <br>
</p>
<p>
Web statistics
</p>
<pre>
${appStatistics}
</pre>
<p>
Back to <a href="${indexPageUrl}">index</a> page.
</p>
</body>
</html>