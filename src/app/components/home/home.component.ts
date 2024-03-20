import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrl: './home.component.css'
})
  export class HomeComponent implements OnInit {
    // Az adatokat tároló változó
    userData: any;
  
    constructor(private http: HttpClient) { }
  
    ngOnInit(): void {
      // Elküldjük a HTTP GET kérést a Laravel Controllernek
      this.http.get<any>('URL_TO_LARAVEL_CONTROLLER_ENDPOINT').subscribe(
        (response) => {
          // Sikeres válasz esetén tároljuk az adatokat
          this.userData = response;
        },
        (error) => {
          // Hibakezelés
          console.error('Error fetching data:', error);
        }
      );
    }
  }