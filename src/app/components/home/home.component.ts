import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrl: './home.component.css'
})
export class HomeComponent implements OnInit {
  userData: any;

  constructor(private http: HttpClient, private router: Router) { }

  ngOnInit(): void {

    this.http.get<any>('http://127.0.0.1:8000/api/movies').subscribe({
      next: (response) => {
        this.userData = response;
      },
      error: (error) => {
        console.error('Error fetching data:', error);
      }
    });
  }

  goToMovieDetail(movieId: number): void {
    // A megfelelő útvonalhoz navigálás a kiválasztott film azonosítója alapján
    this.router.navigateByUrl(`/movie/${movieId}`);
  }
}