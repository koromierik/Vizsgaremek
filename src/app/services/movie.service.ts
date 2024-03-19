import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class MovieService {

  private url = "http://127.0.0.1:8000/api";
  constructor(private http: HttpClient) { }

  private movies = [
    { id: 1, title: 'A Wall Street farkasa' },
    { id: 2, title: 'Avatar: A víz útja' },
    // Egyéb filmek...
  ];

  addMovie(title: string, releaseYear: number, description: string, review: string): Observable<any> {
    const movie = {
      title,
      releaseYear,
      description,
      review
    };
    return this.http.post<any>(`${this.url}/addmovie`, movie);
  }
  getMovie(id: number): Observable<any> {
    return this.http.get<any>(`${this.url}/getmovie?id=${id}`);
  }
  
  updateMovie(id: number, title: string, releaseYear: number, description: string, review: string ): Observable<any> {
    const movie = {
      id,
      title,
      releaseYear,
      description,
      review
    };
    return this.http.put<any>(`${this.url}/updatemovie`, movie);
  }
  deleteMovie(id: number): Observable<any> {
    return this.http.delete<any>(`${this.url}/deletemovie?id=${id}`);
  }
  getMovieTitleById(movieId: number): string {
    const movie = this.movies.find(m => m.id === movieId);
    return movie ? movie.title : 'Nincs találat';
}
submitRating(rating: number) {
  console.log(`Film értékelése: ${rating}`);
}
}
