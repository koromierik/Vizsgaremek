import { Component, OnInit } from '@angular/core';
import { AddMovieComponent } from '../add-movie/add-movie.component';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { Router } from '@angular/router';

@Component({
  selector: 'app-movie-list',
  templateUrl: './movie-list.component.html',
  styleUrl: './movie-list.component.css'
})
export class MovieListComponent {
  isAdmin: boolean = false;

  constructor(private router: Router) { }

  addMovie() {
    // Ellenőrizzük, hogy az aktuális felhasználó adminisztrátor-e
    if (this.isAdmin) {
      // Ha adminisztrátor, navigáljunk az új film hozzáadásához
      this.router.navigate(['/add-movie']);
    } else {
      // Ha nem adminisztrátor, ne tegyünk semmit vagy megjeleníthetünk egy üzenetet
      console.log("Nincs jogosultsága az új film hozzáadásához.");
      // Példa: megjeleníthetünk egy felugró ablakot vagy átirányíthatjuk a felhasználót egy másik oldalra
    }
  }
}