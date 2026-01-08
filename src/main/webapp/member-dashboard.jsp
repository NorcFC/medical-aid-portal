<%--
  Created by IntelliJ IDEA.
  User: ckpone
  Date: 10/9/25
  Time: 11:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html><html lang="en"><head>
<meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1">
<title>MedAid · Member Dashboard</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600;700&display=swap" rel="stylesheet">
<style>
  :root{--glass:rgba(255,255,255,.12);--glass-b:rgba(255,255,255,.28)}
  *{font-family:Inter,system-ui,-apple-system,Segoe UI,Roboto,Helvetica,Arial,sans-serif}
  body{min-height:100vh;color:#fff;background:linear-gradient(120deg,#0ea5e9 0%,#10b981 100%)}
  .nav-glass{backdrop-filter:blur(12px) saturate(160%);background:rgba(7,25,35,.35);border-bottom:1px solid var(--glass-b)}
  .glass-wrap{padding:2rem 1rem}.glass-card{backdrop-filter:blur(18px) saturate(140%);background:var(--glass);border:1px solid var(--glass-b);border-radius:1.25rem}
  .stat{background:rgba(255,255,255,.09);border:1px solid var(--glass-b);border-radius:1rem;padding:1rem}
  table.table>:not(caption)>*>*{background:transparent;color:#fff;border-color:rgba(255,255,255,.25)}
</style></head>
<body>
<nav class="navbar navbar-expand-lg nav-glass sticky-top">
  <div class="container">
    <a class="navbar-brand fw-bold text-white" href="index.jsp">MedAid</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#nav"><span class="navbar-toggler-icon"></span></button>
    <div class="collapse navbar-collapse" id="nav">
      <ul class="navbar-nav ms-auto">
        <li class="nav-item"><a class="nav-link text-white" href="benefits.jsp">Benefits</a></li>
        <li class="nav-item"><a class="nav-link text-white" href="submit-claim.jsp">Submit Claim</a></li>
        <li class="nav-item"><a class="nav-link text-white" href="logout.jsp">Logout</a></li>
      </ul>
    </div>
  </div>
</nav>

<main class="glass-wrap">
  <div class="container col-xl-10">
    <div class="row g-3 mb-3">
      <div class="col-md-4"><div class="stat"><div class="small text-white-50">Welcome</div><div class="h4 mb-0">Member</div></div></div>
      <div class="col-md-4"><div class="stat"><div class="small text-white-50">Coverage</div><div class="h4 mb-0">Active</div></div></div>
      <div class="col-md-4"><div class="stat"><div class="small text-white-50">Next Review</div><div class="h4 mb-0">Nov 15, 2025</div></div></div>
    </div>

    <div class="glass-card p-4 p-md-5 mb-4">
      <h4 class="mb-3">Quick Links</h4>
      <div class="d-flex flex-wrap gap-2">
        <a class="btn btn-success" href="submit-claim.jsp">New Claim</a>
        <a class="btn btn-light" href="search.jsp">Find Provider</a>
        <a class="btn btn-info text-white" href="benefits.jsp">Your Benefits</a>
      </div>
    </div>

    <div class="glass-card p-4 p-md-5">
      <h4 class="mb-3">Your Recent Claims</h4>
      <div class="table-responsive">
        <table class="table">
          <thead><tr><th>#</th><th>Date</th><th>Provider</th><th>Amount</th><th>Status</th></tr></thead>
          <tbody>
          <tr><td>CLM-207</td><td>2025-10-18</td><td>City Clinic</td><td>$92.00</td><td><span class="badge bg-success">Approved</span></td></tr>
          <tr><td>CLM-206</td><td>2025-10-08</td><td>MedX Pharmacy</td><td>$25.30</td><td><span class="badge bg-warning text-dark">Pending</span></td></tr>
          <tr><td>CLM-205</td><td>2025-09-24</td><td>Princess Marina</td><td>$410.00</td><td><span class="badge bg-danger">Rejected</span></td></tr>
          </tbody>
        </table>
      </div>
    </div>
  </div>
</main>

<footer class="text-center py-4"><div class="container small">© 2025 MedAid</div></footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body></html>