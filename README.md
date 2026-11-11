# Job Recruiter Portal

A role-based job portal built with **ASP.NET Web Forms (C#)** and **SQL Server**. It connects job seekers with recruiters, and an admin manages the platform.

## User roles and features

| Role | What they can do |
|---|---|
| **Job seeker** | Register, log in, browse job openings, apply for jobs, change password |
| **Job recruiter** | Register, log in, post jobs, view and manage their job openings, change password |
| **Admin** | Log in, view and manage job seekers, recruiters and job posts |

Each role has its own master page (`jobseeker.Master`, `jobrecruiter.Master`, `Admin.Master`) and navigation.

## Tech stack

| Layer | Technology |
|---|---|
| Front end | ASP.NET Web Forms, HTML, CSS |
| Back end | C#, ADO.NET with **stored procedures** |
| Database | Microsoft SQL Server (Express) |
| Framework | .NET Framework 4.7.2 |

## Database

`database.sql` creates the `jobseeker` database: lookup tables (gender, qualification, recruiter type), user tables (`tbladmin`, `jobseeker`, `jobrecruiter`), job posts (`tbljobpost`) and job profiles (`tbljobprofiles`), plus **19 stored procedures** for registration, login, listing, updates and password changes.

## How to run

1. Install **Visual Studio** (with the *ASP.NET and web development* workload) and **SQL Server Express**.
2. Open `database.sql` in SQL Server Management Studio and execute it. It creates the database, tables, sample lookup data and stored procedures.
3. The connection string in `Code2_HF/Web.config` points to the local default instance:
   ```xml
   Data Source=.\SQLEXPRESS;Initial Catalog=jobseeker;Integrated Security=True
   ```
4. Open `Code2_HF.sln` in Visual Studio and press **F5**.

The default admin login created by the script is `admin` / `admin`.

## What I'd improve next

- Hash passwords instead of storing them as plain text
- Add server-side validation and file upload for CVs
