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
<title>MedAid · Benefits</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600;700&display=swap" rel="stylesheet">
<style>
  :root{--blue:#0ea5e9;--green:#10b981;--glass:rgba(255,255,255,.12);--glass-b:rgba(255,255,255,.28)}
  *{font-family:Inter,system-ui,-apple-system,Segoe UI,Roboto,Helvetica,Arial,sans-serif} body{min-height:100vh;color:#fff;background:linear-gradient(120deg,#0ea5e9 0%,#10b981 100%)}
  .nav-glass{backdrop-filter:blur(12px) saturate(160%);background:rgba(7,25,35,.35);border-bottom:1px solid var(--glass-b)}
  .glass-wrap{padding:2rem 1rem}.glass-card{backdrop-filter:blur(18px) saturate(140%);background:var(--glass);border:1px solid var(--glass-b);border-radius:1.25rem}
  .badge-plan{background:linear-gradient(90deg,#22c55e,#0ea5e9)}
</style></head>
<body>
<nav class="navbar navbar-expand-lg nav-glass sticky-top">
  <div class="container"><a class="navbar-brand fw-bold text-white" href="index.jsp">MedAid</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#nav"><span class="navbar-toggler-icon"></span></button>
    <div class="collapse navbar-collapse" id="nav">
      <ul class="navbar-nav ms-auto">
        <li class="nav-item"><a class="nav-link text-white" href="dashboard.jsp">Dashboard</a></li>
        <li class="nav-item"><a class="nav-link text-white" href="search.jsp">Search</a></li>
        <li class="nav-item"><a class="nav-link text-white" href="submit-claim.jsp">Submit Claim</a></li>
        <li class="nav-item"><a class="nav-link text-white" href="login.jsp">Login</a></li>
      </ul>
    </div>
  </div>
</nav>

<main class="glass-wrap">
  <div class="container col-xl-10">
    <div class="glass-card p-4 p-md-5 mb-4">
      <div class="d-flex align-items-center justify-content-between flex-wrap gap-2">
        <h2 class="mb-0">Plan Benefits</h2>
        <span class="badge badge-plan px-3 py-2">Standard Care</span>
      </div>
      <p class="text-white-50 mt-2 mb-0">A quick overview of what your plan covers.</p>
    </div>

    <div class="glass-card p-4 p-md-5">
      <div class="accordion" id="benefitsAcc">
        <div class="accordion-item bg-transparent text-white border-0 mb-3">
          <h2 class="accordion-header">
            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#b1">Outpatient Consultations</button>
          </h2>
          <div id="b1" class="accordion-collapse collapse" data-bs-parent="#benefitsAcc">
            <div class="accordion-body">
              Up to 80% coverage per visit, subject to plan limits. Co-pay: $15. Referral required for specialists.
            </div>
          </div>
        </div>

        <div class="accordion-item bg-transparent text-white border-0 mb-3">
          <h2 class="accordion-header">
            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#b2">Inpatient & Surgery</button>
          </h2>
          <div id="b2" class="accordion-collapse collapse" data-bs-parent="#benefitsAcc">
            <div class="accordion-body">
              Hospitalization covered up to plan annual maximum. Pre-authorization required. Private room differential not included.
            </div>
          </div>
        </div>

        <div class="accordion-item bg-transparent text-white border-0 mb-3">
          <h2 class="accordion-header">
            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#b3">Chronic Medication</button>
          </h2>
          <div id="b3" class="accordion-collapse collapse" data-bs-parent="#benefitsAcc">
            <div class="accordion-body">
              Registered chronic conditions covered at 100% of reference price when using network pharmacies.
            </div>
          </div>
        </div>

        <div class="accordion-item bg-transparent text-white border-0">
          <h2 class="accordion-header">
            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#b4">Maternity & Pediatrics</button>
          </h2>
          <div id="b4" class="accordion-collapse collapse" data-bs-parent="#benefitsAcc">
            <div class="accordion-body">
              Antenatal visits, delivery (normal/C-section), and newborn screenings covered per schedule of benefits.
            </div>
          </div>
        </div>
      </div>

      <div class="mt-4 d-flex gap-2">
        <a href="search.jsp" class="btn btn-light">Find a Provider</a>
        <a href="submit-claim.jsp" class="btn btn-success">Claim Now</a>
      </div>
    </div>
  </div>
</main>

<footer class="text-center py-4"><div class="container small">© 2025 MedAid</div></footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body></html>