<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html><html lang="en"><head>
<meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1">
<title>MedAid · Home</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600;700&display=swap" rel="stylesheet">
<style>
    :root{
        --blue:#0ea5e9; --green:#10b981; --ink:#0b1220; --glass:rgba(255,255,255,.12); --glass-b:rgba(255,255,255,.28);
    }
    *{font-family:Inter,system-ui,-apple-system,Segoe UI,Roboto,Helvetica,Arial,sans-serif}
    body{
        min-height:100vh; color:#fff;
        background:
                radial-gradient(1400px 900px at 10% 10%, rgba(14,165,233,.25), transparent 70%),
                radial-gradient(1100px 800px at 90% 20%, rgba(16,185,129,.25), transparent 70%),
                linear-gradient(120deg, #0ea5e9 0%, #10b981 100%);
        background-attachment:fixed;
    }
    .nav-glass{backdrop-filter:blur(12px) saturate(160%);background:rgba(7,25,35,.35);border-bottom:1px solid var(--glass-b)}
    .glass-wrap{padding:2rem 1rem}
    .glass-card{backdrop-filter:blur(18px) saturate(140%);background:var(--glass);border:1px solid var(--glass-b);border-radius:1.25rem;box-shadow:0 12px 30px rgba(3,7,18,.35)}
    .btn-brand{background:linear-gradient(90deg,var(--blue),#22c55e);border:0}
    .btn-accent{background:linear-gradient(90deg,#22c55e,var(--blue));border:0}
    .stat{border:1px solid var(--glass-b);border-radius:1rem;padding:1rem;background:rgba(255,255,255,.08)}
    a.nav-link{color:#e2f3ff!important}
    a.nav-link:hover{opacity:.9}
</style>
</head>
<body>
<nav class="navbar navbar-expand-lg nav-glass sticky-top">
    <div class="container">
        <a class="navbar-brand fw-bold text-white" href="index.jsp">MedAid</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#nav"><span class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse" id="nav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link" href="dashboard.jsp">Dashboard</a></li>
                <li class="nav-item"><a class="nav-link" href="benefits.jsp">Benefits</a></li>
                <li class="nav-item"><a class="nav-link" href="search.jsp">Search</a></li>
                <li class="nav-item"><a class="nav-link" href="submit-claim.jsp">Submit Claim</a></li>
                <li class="nav-item"><a class="nav-link" href="login.jsp">Login</a></li>
            </ul>
        </div>
    </div>
</nav>

<main class="glass-wrap">
    <div class="container">
        <div class="row justify-content-center mb-4">
            <div class="col-12 col-xl-10">
                <div class="glass-card p-4 p-md-5">
                    <div class="row align-items-center">
                        <div class="col-lg-7">
                            <h1 class="fw-bold mb-3">Your Health. Simplified.</h1>
                            <p class="lead mb-4">Manage benefits, submit claims, and track approvals — all in one beautiful glass UI.</p>
                            <div class="d-flex flex-wrap gap-2">
                                <a href="dashboard.jsp" class="btn btn-brand text-white px-4">Open Dashboard</a>
                                <a href="submit-claim.jsp" class="btn btn-accent text-white px-4">Submit a Claim</a>
                                <a href="benefits.jsp" class="btn btn-outline-light px-4">View Benefits</a>
                            </div>
                        </div>
                        <div class="col-lg-5 mt-4 mt-lg-0">
                            <div class="stat mb-3">
                                <div class="small text-white-50">Claims this month</div>
                                <div class="h3 mb-0">18</div>
                            </div>
                            <div class="stat mb-3">
                                <div class="small text-white-50">Average approval time</div>
                                <div class="h3 mb-0">2.4 days</div>
                            </div>
                            <div class="stat">
                                <div class="small text-white-50">Members active</div>
                                <div class="h3 mb-0">1,274</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row g-3 col-xl-10 mx-auto">
            <div class="col-md-4"><div class="glass-card p-4 h-100">
                <h5 class="mb-2">Fast Claims</h5><p class="mb-0">Upload receipts and track status in real time.</p></div></div>
            <div class="col-md-4"><div class="glass-card p-4 h-100">
                <h5 class="mb-2">Smart Search</h5><p class="mb-0">Find providers, claims, and benefits instantly.</p></div></div>
            <div class="col-md-4"><div class="glass-card p-4 h-100">
                <h5 class="mb-2">Member-first</h5><p class="mb-0">Clear, transparent coverage and support.</p></div></div>
        </div>
    </div>
</main>

<footer class="text-center py-4"><div class="container small">© 2025 MedAid — All rights reserved.</div></footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body></html>