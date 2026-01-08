<%--
  Created by IntelliJ IDEA.
  User: ckpone
  Date: 10/9/25
  Time: 11:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html><html lang="en"><head>
<meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1">
<title>MedAid · Login</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600;700&display=swap" rel="stylesheet">
<style>
  :root{--glass:rgba(255,255,255,.12);--glass-b:rgba(255,255,255,.28)}
  *{font-family:Inter,system-ui,-apple-system,Segoe UI,Roboto,Helvetica,Arial,sans-serif}
  body{min-height:100vh;color:#fff;background:linear-gradient(120deg,#0ea5e9 0%,#10b981 100%)}
  .nav-glass{backdrop-filter:blur(12px) saturate(160%);background:rgba(7,25,35,.35);border-bottom:1px solid var(--glass-b)}
  .glass-wrap{padding:2rem 1rem}.glass-card{backdrop-filter:blur(18px) saturate(140%);background:var(--glass);border:1px solid var(--glass-b);border-radius:1.25rem;max-width:520px;margin:0 auto}
  label{color:#e6fbff}
</style></head>
<body>
<nav class="navbar navbar-expand-lg nav-glass"><div class="container"><a class="navbar-brand fw-bold text-white" href="index.jsp">MedAid</a></div></nav>
<main class="glass-wrap">
  <div class="container">
    <div class="glass-card p-4 p-md-5">
      <h3 class="mb-3">Sign in</h3>
      <form action="member-dashboard.jsp" method="post">
        <div class="mb-3">
          <label class="form-label">Email</label>
          <input class="form-control" type="email" name="email" required>
        </div>
        <div class="mb-3">
          <label class="form-label">Password</label>
          <input class="form-control" type="password" name="password" required>
        </div>
        <div class="d-flex justify-content-between align-items-center mb-3">
          <div class="form-check">
            <input class="form-check-input" type="checkbox" id="remember"><label class="form-check-label" for="remember">Remember me</label>
          </div>
          <a href="#" class="link-light">Forgot password?</a>
        </div>
        <button class="btn btn-success w-100 mb-2">Sign in as Member</button>
      </form>
      <div class="text-center text-white-50 my-2">or</div>
      <a class="btn btn-info text-white w-100 mb-2" href="provider-login.jsp">Provider Login</a>
      <a class="btn btn-outline-light w-100" href="member-login.jsp">Member Login</a>
    </div>
  </div>
</main>
<footer class="text-center py-4"><div class="container small">© 2025 MedAid</div></footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body></html>