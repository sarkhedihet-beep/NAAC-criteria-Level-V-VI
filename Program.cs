using Microsoft.EntityFrameworkCore;
using NAAC.Standalone.Data;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container
builder.Services.AddControllersWithViews();

// Add Database Context - MySQL
builder.Services.AddDbContext<NaacSystemContext>(options =>
    options.UseMySql(
        builder.Configuration.GetConnectionString("DefaultConnection"),
        new MySqlServerVersion(new Version(8, 0, 23))
    )
);

// ✅ Required for Session - ADD THIS
builder.Services.AddDistributedMemoryCache();

// Add Session support
builder.Services.AddSession(options =>
{
    options.IdleTimeout = TimeSpan.FromHours(2);
    options.Cookie.HttpOnly = true;
    options.Cookie.IsEssential = true;
    options.Cookie.SecurePolicy = CookieSecurePolicy.SameAsRequest;
});

// Add HttpContextAccessor
builder.Services.AddHttpContextAccessor();

var app = builder.Build();

// Configure the HTTP request pipeline
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Home/Error");
    app.UseHsts();
}
else
{
    app.UseDeveloperExceptionPage();
}

app.UseHttpsRedirection();
app.UseStaticFiles();

app.UseRouting();

app.UseSession();  // Must come after UseRouting

app.UseAuthorization();

app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Home}/{action=Index}/{id?}");

Console.WriteLine("====================================");
Console.WriteLine("🚀 NAAC System Started Successfully!");
Console.WriteLine("====================================");
Console.WriteLine("📊 Database: naac_system (MySQL)");
Console.WriteLine("📁 DbContext: NaacSystemContext");
Console.WriteLine("📦 Project: NAACDepartmentManagementSystem");
Console.WriteLine("🌐 URL: https://localhost:5001");
Console.WriteLine("");
Console.WriteLine("📧 Default Routes:");
Console.WriteLine("   Home: https://localhost:5001/");
Console.WriteLine("   Login: https://localhost:5001/Account/Login");
Console.WriteLine("   Register: https://localhost:5001/Account/Register");
Console.WriteLine("");
Console.WriteLine("⚠️  Note: New registrations require admin approval");
Console.WriteLine("====================================");

app.Run();