<%@ include file="/WEB-INF/pages/header.jsp" %>
<%@ page session="false" %>
<body>
<h2>${appName}</h2>
<div style="font-size:0.8em; float:right">${appVersion}</div>

<!--
Your business pages here. 
 -->
<p style="text-indent: 4em; font-style: italic">${appName} runtime information (environment ${appEnv})</p>

<a href="${statsPageUrl}">Statistics</a> and configuration.<br>
<a href="${sysEnvPageUrl}">Java</a> and OS settings.<br>
Last <a href="${logPageUrl}">log</a> messages.<br>
Last log <a href="${logErrorPageUrl}">error</a> messages.<br>
Logger <a href="${logStatusPageUrl}">status</a> messages.<br>

<p> </p>
</body>
</html>