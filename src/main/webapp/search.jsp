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
<title>MedAid · Search</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600;700&display=swap" rel="stylesheet">
<style>
  :root{--glass:rgba(255,255,255,.12);--glass-b:rgba(255,255,255,.28)}
  *{font-family:Inter,system-ui,-apple-system,Segoe UI,Roboto,Helvetica,Arial,sans-serif}
  body{min-height:100vh;color:#fff;background:linear-gradient(120deg,#0ea5e9 0%,#10b981 100%)}
  .nav-glass{backdrop-filter:blur(12px) saturate(160%);background:rgba(7,25,35,.35);border-bottom:1px solid var(--glass-b)}
  .glass-wrap{padding:2rem 1rem}.glass-card{backdrop-filter:blur(18px) saturate(140%);background:var(--glass);border:1px solid var(--glass-b);border-radius:1.25rem}
  table.table>:not(caption)>*>*{background:transparent;color:#fff;border-color:rgba(255,255,255,.25)}
</style></head>
<body>
<nav class="navbar navbar-expand-lg nav-glass sticky-top">
  <div class="container"><a class="navbar-brand fw-bold text-white" href="index.jsp">MedAid</a></div>
</nav>

<main class="glass-wrap">
  <div class="container col-xl-10">
    <div class="glass-card p-4 p-md-5 mb-4">
      <form class="row g-3" action="search.jsp" method="get">
        <div class="col-md-6">
          <label class="form-label">Keyword</label>
          <input class="form-control" name="q" placeholder="Provider name, claim #, etc.">
        </div>
        <div class="col-md-3">
          <label class="form-label">Type</label>
          <select class="form-select" name="type">
            <option value="providers">Providers</option>
            <option value="claims">Claims</option>
            <option value="benefits">Benefits</option>
          </select>
        </div>
        <div class="col-md-3 align-self-end">
          <button class="btn btn-success w-100">Search</button>
        </div>
      </form>
    </div>

    <div class="glass-card p-4 p-md-5">
      <h4 class="mb-3">Results</h4>
      <div class="table-responsive">
        <table class="table align-middle">
          <thead><tr><th>Name / #</th><th>Category</th><th>Location / Date</th><th>Status</th></tr></thead>
          <tbody>
          <tr><td>Gaborone Clinic</td><td>Provider</td><td>Main Mall</td><td><span class="badge bg-info">Network</span></td></tr>
          <tr><td>CLM-1041</td><td>Claim</td><td>2025-10-09</td><td><span class="badge bg-warning text-dark">Pending</span></td></tr>
          <tr><td>Chronic Medication</td><td>Benefit</td><td>—</td><td><span class="badge bg-success">Covered</span></td></tr>
          </tbody>
        </table>
      </div>
    </div>
  </div>
</main>

<footer class="text-center py-4"><div class="container small">© 2025 MedAid</div></footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body></html>