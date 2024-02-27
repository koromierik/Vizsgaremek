import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrl: './home.component.css'
})
export class HomeComponent implements OnInit {
  // Itt lehetnek osztályszintű változók, például statikus tartalmak vagy adatok
  pageTitle: string = "Üdv a Film értékelő oldalamon!";
  description: string = "This is the home page of our application. Feel free to explore and enjoy!";

  constructor() { }

  ngOnInit(): void {
    // Itt lehetnek inicializálási logikák, ha szükségesek
  }
}
