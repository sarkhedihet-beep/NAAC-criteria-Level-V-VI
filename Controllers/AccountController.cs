using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;

namespace NAACDepartmentManagementSystem.Controllers
{
    [Route("[controller]")]
    public class AccountController : Controller
    {
        private readonly ILogger<AccountController> _logger;

        public AccountController(ILogger<AccountController> logger)
        {
            _logger = logger;
        }

        // GET: /Account/Register
        [HttpGet("Register")]
        public IActionResult Register()
        {
            return View();
        }

        // POST: /Account/Register
        [HttpPost("Register")]
        public IActionResult Register(string fullName, string email, string role)
        {
            // Temporary logic (DB + Email integration later)
            ViewBag.Message = "User registered successfully. Login credentials will be sent via email.";

            return View();
        }

        // GET: /Account/Login
        [HttpGet("Login")]
        public IActionResult Login()
        {
            return View();
        }

        // (Optional) POST Login – for future authentication logic
        [HttpPost("Login")]
        public IActionResult Login(string username, string password)
        {
            // Temporary logic (replace with DB validation later)
            if (username == "admin" && password == "admin123")
            {
                return RedirectToAction("Index", "Home");
            }

            ViewBag.Error = "Invalid username or password";
            return View();
        }
        [HttpGet]
        public IActionResult ForgotPassword()
        {
            return View();
        }
        public IActionResult Index()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View("Error!");
        }
    }
}