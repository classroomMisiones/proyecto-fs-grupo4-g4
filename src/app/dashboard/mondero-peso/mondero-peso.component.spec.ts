import { ComponentFixture, TestBed } from '@angular/core/testing';

import { MonderoPesoComponent } from './mondero-peso.component';

describe('MonderoPesoComponent', () => {
  let component: MonderoPesoComponent;
  let fixture: ComponentFixture<MonderoPesoComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ MonderoPesoComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(MonderoPesoComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
