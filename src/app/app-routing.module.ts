import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';

import { HomeComponent } from './home/home.component';
import { Error404Component } from './error404/error404.component';
import { LoginComponent } from './dashboard/login/login.component';
import { RegistrarComponent } from './dashboard/registrar/registrar.component';
import { PerfilComponent } from './dashboard/perfil/perfil.component';
import { AyudaComponent } from './ayuda/ayuda.component';
import { TerminosComponent } from './terminos/terminos.component';
import { DashComponent } from './dashboard/dash/dash.component';
import { CotizacionComponent } from './dashboard/cotizacion/cotizacion.component';
import { CotizacionVerticalComponent } from './dashboard/cotizacion-vertical/cotizacion-vertical.component';
import { NavVerticalComponent } from './dashboard/nav-vertical/nav-vertical.component';
import { MovimientosComponent } from './dashboard/movimientos/movimientos.component';
import { MonederoCriptosComponent } from './dashboard/monedero-criptos/monedero-criptos.component';
import { MonderoPesoComponent } from './dashboard/mondero-peso/mondero-peso.component';

const routes: Routes = [
  {
    path:'',
    component:HomeComponent
  },
  {
    path:'home',
    component:HomeComponent
  },
    {
    path:'login',
    component:LoginComponent
  },
  {
    path:'registrar',
    component:RegistrarComponent
  },
  {
    path:'perfil',
    component:PerfilComponent
  },
  {
    path:'Ayuda',
    component:AyudaComponent
  },
  {
    path:'Terminos',
    component:TerminosComponent
  },
  {
    path:'Dash',
    component:DashComponent
  },
  {
    path:'Cotizacion',
    component:CotizacionComponent
  },
  {
    path:'CotizacionVert',
    component:CotizacionVerticalComponent
  },
  {
    path:'MonederoCriptos',
    component:MonederoCriptosComponent
  },
  {
    path:'MonederoPesos',
    component:MonderoPesoComponent
  },
  
  {
    path:'NavVert',
    component:NavVerticalComponent
  },
  {
    path:'Movimientos',
    component:MovimientosComponent
  },
  
  {
    path:'**',
    component:Error404Component
  }
 
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
