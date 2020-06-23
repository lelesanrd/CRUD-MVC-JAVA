package com.covid.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 *
 * @author Leand
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Persona {
    int id;
    String nombre;
    String fechaDeNacimiento;
}
