<%--
  Created by IntelliJ IDEA.
  User: ckpone
  Date: 10/9/25
  Time: 11:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html><html lang="en"><head>
<meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1">
<title>MedAid · Submit Claim</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600;700&display=swap" rel="stylesheet">
<style>
  :root{--glass:rgba(255,255,255,.12);--glass-b:rgba(255,255,255,.28)}
  *{font-family:Inter,system-ui,-apple-system,Segoe UI,Roboto,Helvetica,Arial,sans-serif}
  body{min-height:100vh;color:#fff;background:linear-gradient(120deg,#0ea5e9 0%,#10b981 100%)}
  .nav-glass{backdrop-filter:blur(12px) saturate(160%);background:rgba(7,25,35,.35);border-bottom:1px solid var(--glass-b)}
  .glass-wrap{padding:2rem 1rem}.glass-card{backdrop-filter:blur(18px) saturate(140%);background:var(--glass);border:1px solid var(--glass-b);border-radius:1.25rem}
</style></head>
<body>
<nav class="navbar navbar-expand-lg nav-glass sticky-top">
  <div class="container"><a class="navbar-brand fw-bold text-white" href="index.jsp">MedAid</a></div>
</nav>

<main class="glass-wrap">
  <div class="container col-xl-10">
    <div class="glass-card p-4 p-md-5">
      <h3 class="mb-3">Submit a Claim</h3>
      <form action="dashboard.jsp" method="post" enctype="multipart/form-data">
        <div class="row g-3">
          <div class="col-md-4">
            <label class="form-label">Member ID</label>
            <input class="form-control" name="memberId" required>
          </div>
          <div class="col-md-4">
            <label class="form-label">Provider</label>
            <input class="form-control" name="provider" placeholder="Clinic / Pharmacy" required>
          </div>
          <div class="col-md-4">
            <label class="form-label">Visit Date</label>
            <input class="form-control" type="date" name="date" required>
          </div>
          <div class="col-md-4">
            <label class="form-label">Amount</label>
            <input class="form-control" type="number" min="0" step="0.01" name="amount" required>
          </div>
          <div class="col-md-8">
            <label class="form-label">Description</label>
            <input class="form-control" name="desc" placeholder="e.g. consultation + medication">
          </div>
          <div class="col-md-6">
            <label class="form-label">Receipt / Invoice (PDF/JPG/PNG)</label>
            <input class="form-control" type="file" name="receipt" accept=".pdf,.jpg,.jpeg,.png" required>
          </div>
          <div class="col-md-6">
            <label class="form-label">Notes</label>
            <textarea class="form-control" rows="2" name="notes"></textarea>
          </div>
        </div>
        <div class="d-flex gap-2 mt-4">
          <button class="btn btn-success px-4">Submit Claim</button>
          <a class="btn btn-outline-light px-4" href="dashboard.jsp">Cancel</a>
        </div>
      </form>
    </div>
  </div>
</main>

<footer class="text-center py-4"><div class="container small">© 2025 MedAid</div></footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body></html>