// var POSTS = POSTS || {}

// POSTS.createDataTable = function createDataTable() {
//   var data = [
//           [
//               "Tiger Nixon",
//               "System Architect",
//               "Edinburgh",
//               "5421",
//               "2011/04/25",
//               "$3,120"
//           ],
//           [
//               "Garrett Winters",
//               "Director",
//               "Edinburgh",
//               "8422",
//               "2011/07/25",
//               "$5,300"
//           ]
//       ];

//   $('#table-teste').DataTable( {
//       // data: data
//   } ); 
// };

$(document).ready(function() { 
  $('#table-teste').DataTable({
    // ajax: ...,
    // autoWidth: false,
    // pagingType: 'full_numbers',
    // processing: true,
    // serverSide: true,

    // Optional, if you want full pagination controls.
    // Check dataTables documentation to learn more about available options.
    // http://datatables.net/reference/option/pagingType
  });
}