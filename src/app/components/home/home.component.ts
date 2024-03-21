import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
  export class HomeComponent implements OnInit {
    // Az adatokat tároló változó
    userData: any;
  
    constructor(private http: HttpClient) { }
  
    ngOnInit(): void {
      // Elküldjük a HTTP GET kérést a Laravel Controllernek
      this.http.get<any>('http://127.0.0.1:8000/api/movies').subscribe(
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