<%--
  Created by IntelliJ IDEA.
  User: ckpone
  Date: 10/9/25
  Time: 11:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html><html lang="en"><head>
<meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1">
<title>MedAid · Dashboard</title>
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
  <div class="container"><a class="navbar-brand fw-bold text-white" href="index.jsp">MedAid</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#nav"><span class="navbar-toggler-icon"></span></button>
    <div class="collapse navbar-collapse" id="nav">
      <ul class="navbar-nav ms-auto">
        <li class="nav-item"><a class="nav-link text-white" href="benefits.jsp">Benefits</a></li>
        <li class="nav-item"><a class="nav-link text-white" href="search.jsp">Search</a></li>
        <li class="nav-item"><a class="nav-link text-white" href="submit-claim.jsp">Submit Claim</a></li>
        <li class="nav-item"><a class="nav-link text-white" href="logout.jsp">Logout</a></li>
      </ul>
    </div>
  </div>
</nav>

<main class="glass-wrap">
  <div class="container col-xl-10">
    <div class="row g-3 mb-3">
      <div class="col-md-4"><div class="stat">
        <div class="small text-white-50">Total Claims</div><div class="h3 mb-0">42</div></div></div>
      <div class="col-md-4"><div class="stat">
        <div class="small text-white-50">Pending</div><div class="h3 mb-0">5</div></div></div>
      <div class="col-md-4"><div class="stat">
        <div class="small text-white-50">Approved</div><div class="h3 mb-0">35</div></div></div>
    </div>

    <div class="glass-card p-4 p-md-5 mb-4">
      <h4 class="mb-3">Quick Actions</h4>
      <div class="d-flex flex-wrap gap-2">
        <a href="submit-claim.jsp" class="btn btn-success">New Claim</a>
        <a href="search.jsp" class="btn btn-light">Find Provider</a>
        <a href="benefits.jsp" class="btn btn-info text-white">View Benefits</a>
      </div>
    </div>

    <div class="glass-card p-4 p-md-5">
      <div class="d-flex align-items-center justify-content-between mb-3">
        <h4 class="mb-0">Recent Claims</h4>
        <form class="d-flex" action="search.jsp" method="get">
          <input class="form-control form-control-sm me-2" name="q" placeholder="Search claim # or provider">
          <button class="btn btn-outline-light btn-sm">Search</button>
        </form>
      </div>
      <div class="table-responsive">
        <table class="table align-middle">
          <thead><tr><th>#</th><th>Date</th><th>Provider</th><th>Amount</th><th>Status</th><th></th></tr></thead>
          <tbody>
          <tr><td>CLM-1042</td><td>2025-10-12</td><td>Gaborone Clinic</td><td>$120.00</td><td><span class="badge bg-success">Approved</span></td><td><a href="#" class="btn btn-sm btn-outline-light">View</a></td></tr>
          <tr><td>CLM-1041</td><td>2025-10-09</td><td>MedX Pharmacy</td><td>$38.50</td><td><span class="badge bg-warning text-dark">Pending</span></td><td><a href="#" class="btn btn-sm btn-outline-light">View</a></td></tr>
          <tr><td>CLM-1040</td><td>2025-10-05</td><td>Princess Marina</td><td>$640.00</td><td><span class="badge bg-danger">Rejected</span></td><td><a href="#" class="btn btn-sm btn-outline-light">View</a></td></tr>
          </tbody>
        </table>
      </div>
    </div>
  </div>
</main>

<footer class="text-center py-4"><div class="container small">© 2025 MedAid</div></footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body></html>