import { Component, OnInit } from '@angular/core';
import { MovieService } from '../../services/movie.service';
import { ActivatedRoute } from '@angular/router';


@Component({
  selector: 'app-movie-rating',
  templateUrl: './movie-rating.component.html',
  styleUrl: './movie-rating.component.css'
})
export class MovieRatingComponent implements OnInit {
  movieId: number = 0;
  movie: any = {};

  constructor(private route: ActivatedRoute, private movieService: MovieService) { }

  ngOnInit(): void {
    this.route.params.subscribe(params => {
      this.movieId = +params['id']; 
      this.getMovie(this.movieId); 
    });
  }

  getMovie(id: number): void {
    this.movieService.getMovie(id).subscribe(
      {
        next: (data) => {
          this.movie = data;
        },
        error: (error) => {
          console.error('Hiba történt a film részleteinek lekérése során:', error);
        }
      }
    );
  }
}