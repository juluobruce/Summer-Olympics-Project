var myMap = L.map("map", {
    center: [37.09, -95.71],
    zoom: 5
  });
  
    L.tileLayer("https://api.tiles.mapbox.com/v4/{id}/{z}/{x}/{y}.png?access_token={accessToken}", {
    attribution: "Map data &copy; <a href=\"https://www.openstreetmap.org/\">OpenStreetMap</a> contributors, <a href=\"https://creativecommons.org/licenses/by-sa/2.0/\">CC-BY-SA</a>, Imagery © <a href=\"https://www.mapbox.com/\">Mapbox</a>",
    maxZoom: 18,
    id: "mapbox.streets-basic",
    accessToken: API_KEY
  }).addTo(myMap);
  
  // Define a markerSize function that will give each city a different radius based on its population
  function markerSize(population) {
    return population / 40;
  }
  
  // Each city object contains the city's name, location and population
  var cities = [
    {
      name: "Russia",
      location: [62.183033, 98.23382],
      population: 8550405
    },
    {
      name: "France",
      location: [46.4943836, 2.086],
      population: 8550405
    },
    {
      name: "Germany",
      location: [51.2307, 10.17259],
      population: 8550405
    },
    {
      name: "United States",
      location: [34.0522, -118.2437],
      population: 8550405
    },
    {
      name: "United Kingdom",
      location: [55.22570, 2.8352172],
      population: 8550405
    },
  
    
  
    
  ];
  
  // Loop through the cities array and create one marker for each city object
  for (var i = 0; i < cities.length; i++) {
    L.circle(cities[i].location, {
      fillOpacity: 0.75,
      color: "white",
      fillColor: "read",
      // Setting our circle's radius equal to the output of our markerSize function
      // This will make our marker's size proportionate to its population
      radius: markerSize(cities[i].population)
    }).bindPopup("<h1>" + cities[i].name + "</h1> <hr> <h3>Population: " + cities[i].population + "</h3>").addTo(myMap);
  }
  