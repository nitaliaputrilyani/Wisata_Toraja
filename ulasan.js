// Objek untuk menyimpan ulasan pengguna
var userReviews = [];

// Fungsi untuk menambahkan ulasan pengguna baru
function addReview(name, rating, comment) {
  var review = {
    name: name,
    rating: rating,
    comment: comment
  };
  
  userReviews.push(review);
}

// Fungsi untuk menampilkan semua ulasan pengguna
function showReviews() {
  var reviewsDiv = document.getElementById("reviews");
  reviewsDiv.innerHTML = "";
  
  for (var i = 0; i < userReviews.length; i++) {
    var review = document.createElement("div");
    review.innerHTML = "<h3>Nama: " + userReviews[i].name + "</h3>" +
                       "<p>Rating: " + userReviews[i].rating + "</p>" +
                       "<p>Komentar: " + userReviews[i].comment + "</p>";
    
    reviewsDiv.appendChild(review);
  }
}

// Tangkap form ulasan dan tambahkan ulasan pengguna baru
var reviewForm = document.getElementById("reviewForm");
reviewForm.addEventListener("submit", function(event) {
  event.preventDefault();
  
  var name = document.getElementById("name").value;
  var rating = document.getElementById("rating").value;
  var comment = document.getElementById("comment").value;
  
  addReview(name, rating, comment);
  showReviews();
  
  // Reset form
  reviewForm.reset();
});
