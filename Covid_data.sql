--SELECT *
--FROM `coviddatamitadrian.CovidDeaths.Owid Covid`
--ORDER BY 3, 4

--Select Data that we are going to be using

--SELECT 
--    location, date, total_cases, total_deaths, population
--FROM 
--    `coviddatamitadrian.CovidDeaths.Owid Covid`
--ORDER BY 
--    1, 2 

-- Looking at total cases versus total deaths
-- Shows likelihood of death from Covid in Germany in descending order

--SELECT 
--    location, date, total_cases, total_deaths, (total_deaths/total_cases)*100 AS DeathPercentage
--FROM 
--    `coviddatamitadrian.CovidDeaths.Owid Covid`
--WHERE
--    location="Germany"
--ORDER BY 
--    5 DESC 

--Shows what percentage of the population got Covid

--SELECT 
--    location, date, total_cases, population, ROUND((total_cases/population*100), 2) AS CovidPercentage
--FROM 
--    `coviddatamitadrian.CovidDeaths.Owid Covid`
--ORDER BY
--    5 DESC

--Select average Covid Case Percentage per country
--SELECT 
--    location, population, AVG(total_cases/population*100) AS CovidPercentage
--FROM
--    `coviddatamitadrian.CovidDeaths.Owid Covid`
--GROUP BY
--    location, population
--ORDER BY   
--    3 DESC


-- Showing countries with highest death count per population
SELECT
    location, population, MAX(total_deaths) AS max_total_deaths
FROM
    `coviddatamitadrian.CovidDeaths.Owid Covid`
WHERE
    continent is not null
GROUP BY
    location, population
ORDER BY 
    3 DESC