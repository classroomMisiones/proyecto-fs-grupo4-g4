import { ComponentFixture, TestBed } from '@angular/core/testing';

import { CotizacionVerticalComponent } from './cotizacion-vertical.component';

describe('CotizacionVerticalComponent', () => {
  let component: CotizacionVerticalComponent;
  let fixture: ComponentFixture<CotizacionVerticalComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ CotizacionVerticalComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(CotizacionVerticalComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
