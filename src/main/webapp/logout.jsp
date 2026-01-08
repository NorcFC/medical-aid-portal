<%--
  Created by IntelliJ IDEA.
  User: ckpone
  Date: 10/9/25
  Time: 11:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html><html lang="en"><head>
<meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1">
<title>MedAid · Logout</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600;700&display=swap" rel="stylesheet">
<style>
  :root{--glass:rgba(255,255,255,.12);--glass-b:rgba(255,255,255,.28)}
  *{font-family:Inter,system-ui,-apple-system,Segoe UI,Roboto,Helvetica,Arial,sans-serif}
  body{min-height:100vh;color:#fff;background:linear-gradient(120deg,#0ea5e9 0%,#10b981 100%)}
  .glass-wrap{padding:2rem 1rem}.glass-card{backdrop-filter:blur(18px) saturate(140%);background:var(--glass);border:1px solid var(--glass-b);border-radius:1.25rem;max-width:560px;margin:0 auto}
</style></head>
<body>
<main class="glass-wrap">
  <div class="container">
    <div class="glass-card p-4 p-md-5 text-center">
      <h3 class="mb-2">You’ve been signed out</h3>
      <p class="text-white-50">Thanks for using MedAid. See you soon!</p>
      <a href="login.jsp" class="btn btn-success px-4">Sign in again</a>
      <a href="index.jsp" class="btn btn-outline-light px-4 ms-2">Home</a>
    </div>
  </div>
</main>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body></html>