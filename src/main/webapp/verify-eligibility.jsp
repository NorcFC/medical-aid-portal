<%--
  Created by IntelliJ IDEA.
  User: ckpone
  Date: 10/9/25
  Time: 11:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html><head><meta charset="UTF-8"><title>Eligibility</title></head>
<body class="shell">
<%@ include file="includes/header.jspf" %>

<div class="card">
  <h3>Eligibility Result (Mock)</h3>
  <p class="sub">Member <strong>${param.memberNo}</strong> is <strong>Eligible</strong> for today.</p>
  <div class="grid" style="grid-template-columns:1fr 1fr">
    <div class="kpi"><div class="sub">Chronic remaining</div><div class="v">P 4,120</div></div>
    <div class="kpi"><div class="sub">Acute remaining</div><div class="v">P 1,180</div></div>
  </div>
  <div style="margin-top:12px">
    <a class="btn" href="submit-claim.jsp?memberNo=${param.memberNo}">Create claim</a>
    <a class="btn secondary" href="provider-dashboard.jsp">Back</a>
  </div>
</div>

<%@ include file="includes/footer.jspf" %>
</body></html>