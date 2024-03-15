import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { HomeComponent } from './components/home/home.component';
import { AddMovieComponent } from './components/add-movie/add-movie.component';
import { MovieRatingComponent } from './components/movie-rating/movie-rating.component';
import { LoginComponent } from './components/login/login.component';
import { SignupComponent } from './components/signup/signup.component';
import { ProfileComponent } from './components/profile/profile.component';

const routes: Routes = [
  { path : "home", component: HomeComponent },
  { path : "addmovie", component: AddMovieComponent },
  { path : "movierating", component: MovieRatingComponent },
  { path : "login", component: LoginComponent },
  { path : "signup", component: SignupComponent },
  { path : "profile", component: ProfileComponent },

  { path: " ", component: HomeComponent },
  { path: "**", component: HomeComponent },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
