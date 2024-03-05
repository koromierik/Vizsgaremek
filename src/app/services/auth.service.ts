import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { BehaviorSubject, Observable, throwError } from 'rxjs';


@Injectable({
  providedIn: 'root'
})
export class AutService {
  private userSubject = new BehaviorSubject<any>(null);
  oneUser: Observable<any>;
  loggedIn: boolean = false;
  private url = 'http://127.0.0.0.8000/api';

  constructor(private http: HttpClient) {
    this.oneUser = this.userSubject.asObservable();
  }
  
  
  register(email: any, name: any, password: any, password_confirmation:any, birthdate: any ): Observable<any> {
    const userData = { email, name, password, password_confirmation, birthdate };
    return this.http.post(`${this.url}/register`, userData);
  }


  login(loginData:any){
    return this.http.post(`${this.url}/login`,loginData);
  }


  logout(){

  }
}