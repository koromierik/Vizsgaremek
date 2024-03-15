import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class AdminService {
  
  private url = "http://127.0.0.1:8001/api";
  constructor(private http :HttpClient) { }

  getUsers(): Observable<any[]>{
    return this.http.get<any[]>(`${this.url}/getusers`)
  }
  
  updateUser(id:number,birthdate:Date,name:string,email:string): Observable<any> {
    const user ={
      id,name,email,birthdate
    }
    return this.http.put<any>(`${this.url}/modifyuser`,user);
  }
  
  deleteUser(userId: number): Observable<void> {
    return this.http.delete<void>(`${this.url}/deleteuser?id=${userId}`);
  }
  addMovie (movieTitle: string, movieDescription: string): Observable<any> {
    const movie = {
      title: movieTitle,
      description: movieDescription
    }
    return this.http.post<any>(`${this.url}/addmovie`, movie);
  }

  updateMovie(){
    return this.http.get<any>(`${this.url}/updatemovie`)
  }
  deleteMovie(){
    return this.http.get<any>(`${this.url}/deletemovie`)
  }
}
