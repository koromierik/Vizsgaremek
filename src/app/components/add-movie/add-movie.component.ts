import { Component } from '@angular/core';


@Component({
  selector: 'app-add-movie',
  templateUrl: './add-movie.component.html',
  styleUrl: './add-movie.component.css'
})
export class AddMovieComponent {
  movieTitle: string = '';
  movieDescription: string = '';

  constructor() { }

  addMovie() {
    // Itt lehetőség van a film hozzáadásának logikáját megvalósítani
    // Például a movieTitle és movieDescription értékeit elküldhetjük a szerverre,
    // ahol létrehozzuk a film objektumot és hozzáadjuk az adatbázishoz.
    console.log('Hozzáadott film címe:', this.movieTitle);
    console.log('Hozzáadott film leírása:', this.movieDescription);
    // További logika a film hozzáadásához
    // Például: this.movieService.addMovie(this.movieTitle, this.movieDescription);
    // Ahol movieService egy szolgáltatás lenne, ami felelős a filmek kezeléséért
    // (hozzáadás, szerkesztés, törlés stb.)
  }
}
