
var tabulate = function (data,columns) {
  var table = d3.select('.medal-table').append('table')
    var thead = table.append('thead')
    var tbody = table.append('tbody')

    thead.append('tr')
      .selectAll('th')
        .data(columns)
        .enter()
      .append('th')
        .text(function (d) { return d })

    var rows = tbody.selectAll('tr')
        .data(data)
        .enter()
      .append('tr')

    var cells = rows.selectAll('td')
        .data(function(row) {
            return columns.map(function (column) {
                return { column: column, value: row[column] }
          })
      })
      .enter()
    .append('td')
      .text(function (d) { return d.value })

  return table;
}

// Create the rest of the countries in separate scripts  
d3.csv("https://raw.githubusercontent.com/juluobruce/Summer-Olympics-Project/master/static/data/us_medal.csv", function(data) {
  //var parsedCSV = d3.csv.parseRows(data);
  console.log(data)
  
  
  var columns = ['Event', "Medal Awards" ]
  tabulate(data,columns)
  /*var container = d3.select(".medal-table")
      .append("table")



  .selectAll("tr")
      .data(data).enter()
      .append("tr")
  
      var cells = container.selectAll('td')
      .data(function (row) {
        return columns.map(function (column) {
          return {column: column, value: row[column]};
        });
      })
      .enter()
      .append('td')
        .text(function (d) { return d.value; });*/
});

