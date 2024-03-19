import { Component, OnInit } from '@angular/core';
import { AdminService } from '../../services/admin.service';
import { ActivatedRoute, Router } from '@angular/router';

@Component({
  selector: 'app-movie-rating',
  templateUrl: './movie-rating.component.html',
  styleUrl: './movie-rating.component.css'
})
export class MovieRatingComponent implements OnInit {
  movieId: number = 0;
  movie: any = {};

  constructor(private route: ActivatedRoute, private adminService: AdminService) { }

  ngOnInit(): void {
    this.route.params.subscribe(params => {
      this.movieId = +params['id']; 
      this.getMovie(this.movieId); 
    });
  }

  getMovie(id: number): void {
    this.adminService.getMovie(id).subscribe(
      (data) => {
        this.movie = data;
      },
      (error) => {
        console.error('Hiba történt a film részleteinek lekérése során:', error);
      }
    );
  }
}