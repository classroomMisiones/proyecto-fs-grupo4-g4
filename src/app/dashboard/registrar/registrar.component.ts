import { Component, OnInit } from '@angular/core';
import {FormBuilder, FormGroup, Validators } from '@angular/forms';

@Component({
  selector: 'app-registrar',
  templateUrl: './registrar.component.html',
  styleUrls: ['./registrar.component.css']
})
export class RegistrarComponent implements OnInit {

  myForm: FormGroup;

  constructor(private fb:FormBuilder) {
    this.myForm = this.fb.group({
      apellido: ['', [Validators.required]],
      nombre: ['', [Validators.required]],
      documento: ['',[Validators.required, Validators.maxLength(8)]],
      correo: ['',[Validators.required, Validators.email]],
      password: ['',[Validators.required, Validators.minLength(8)]]
    });
  }

  ngOnInit(): void {
  }

  login(){
    console.log(this.myForm.value);
  }

}
