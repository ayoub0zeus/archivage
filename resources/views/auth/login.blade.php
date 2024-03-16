<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<div class="container d-flex flex-column justify-content-center align-items-center py-4 px-3 rounded shadow bg-light">
    <h2 class="mb-4 text-center">Login</h2> <form method="POST" action="{{ route('login') }}" class="w-100"> @csrf
  
      <div class="mb-3">
        <label for="email" class="form-label">Email or Phone Number</label>
        <input type="email" class="form-control" id="email" name="email" aria-describedby="emailHelp" required autofocus>
       </div>
  
      <div class="mb-3">
        <label for="password" class="form-label">Password</label>
        <input type="password" class="form-control" id="password" name="password" required autocomplete="current-password">
        <a href="#" class="text-muted float-end">Forgot password?</a> </div>
  
      <div class="d-flex align-items-center mb-3">
        <input class="form-check-input" type="checkbox" value="remember" id="remember" name="remember">
        <label class="form-check-label" for="remember">
          Remember me
        </label>
      </div>
  
      <button type="submit" class="btn btn-primary w-100">Log In</button>
  
      <div class="text-center mt-3">
        {{-- <a href="#">Create new account</a> --}}
      </div>
    </form>
  </div>
  