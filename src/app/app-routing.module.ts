import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { AppComponent } from './app.component';
import { AyudaComponent } from './inicio/ayuda/ayuda.component';
import { PrincipalComponent } from './inicio/principal/principal.component';
import { QuienessomosComponent } from './inicio/quienessomos/quienessomos.component';
import { RegistracionComponent } from './inicio/registracion/registracion.component';
import { TransferenciaComponent } from './inicio/transferencia/transferencia.component';

const routes: Routes = [
 { path:"quienessomos",
 component:QuienessomosComponent},
 {path:"registracion",
 component:RegistracionComponent
 },
 {
   path:"inicio",
   component:AppComponent
 },
 {
   path:"trasnferencia",
   component:TransferenciaComponent
 },
 {
   path:"iniciarsesion", 
   component:PrincipalComponent
 },
 {
   path:"ayuda",
   component:AyudaComponent 
 }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
