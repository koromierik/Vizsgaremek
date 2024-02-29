import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { HomeComponent } from './components/home/home.component';
import { AddMovieComponent } from './components/add-movie/add-movie.component';
import { MovieListComponent } from './components/movie-list/movie-list.component';
import { MovieRatingComponent } from './components/movie-rating/movie-rating.component';
import { SignupComponent } from './components/signup/signup.component';
import { UserProfileComponent } from './components/user-profile/user-profile.component';
import { LoginComponent } from './components/login/login.component';

const routes: Routes = [
  { path : "home", component: HomeComponent },
  { path : "addmovie", component: AddMovieComponent },
  { path : "movielist", component: MovieListComponent },
  { path : "movierating", component: MovieRatingComponent },
  { path : "signup", component: SignupComponent },
  { path : "user", component: UserProfileComponent },
  { path : "login", component: LoginComponent },

  { path: " ", component: HomeComponent },
  { path: "**", component: HomeComponent },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
