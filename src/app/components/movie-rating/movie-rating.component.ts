import { Component } from '@angular/core';

@Component({
  selector: 'app-movie-rating',
  templateUrl: './movie-rating.component.html',
  styleUrl: './movie-rating.component.css'
})
export class MovieRatingComponent {
  movies = [
    { title: 'Film 1', description: 'Leírás 1', rating: 3 },
    { title: 'Film 2', description: 'Leírás 2', rating: 4 },
    { title: 'Film 3', description: 'Leírás 3', rating: 5 },
    { title: 'Film 4', description: 'Leírás 4', rating: 2 },
    { title: 'Film 5', description: 'Leírás 5', rating: 1 }
  ];

  rateMovie(movie: any, rating: number) {
    movie.rating = rating;
  }
}
