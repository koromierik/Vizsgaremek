import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { HomeComponent } from './home/home.component';
import { AddMovieComponent } from './add-movie/add-movie.component';
import { MovieListComponent } from './movie-list/movie-list.component';
import { MovieRatingComponent } from './movie-rating/movie-rating.component';
import { SignupComponent } from './signup/signup.component';
import { UserProfileComponent } from './user-profile/user-profile.component';

const routes: Routes = [
  { path : "home", component: HomeComponent },
  { path : "addmovie", component: AddMovieComponent },
  { path : "movielist", component: MovieListComponent },
  { path : "movierating", component: MovieRatingComponent },
  { path : "signup", component: SignupComponent },
  { path : "user", component: UserProfileComponent },
  
  { path: " ", component: HomeComponent },
  { path: "**", component: HomeComponent },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
//