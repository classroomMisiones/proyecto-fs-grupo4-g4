import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';

import { HomeComponent } from './home/home.component';
import { Error404Component } from './error404/error404.component';
import { LoginComponent } from './dashboard/login/login.component';
import { RegistrarComponent } from './dashboard/registrar/registrar.component';

const routes: Routes = [
  {
    path:'home',
    component:HomeComponent
  },
  {
    path:'error-404',
    component:Error404Component
  },
  {
    path:'login',
    component:LoginComponent
  },
  {
    path:'registrar',
    component:RegistrarComponent
  }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
