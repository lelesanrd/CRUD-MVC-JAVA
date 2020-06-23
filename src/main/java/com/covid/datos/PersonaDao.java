package com.covid.datos;

import com.covid.domain.Persona;
import java.util.List;

/**
 *
 * @author Leand
 */
public interface PersonaDao {
    
    public List<Persona> listar();
    public Persona list(int id);
    public boolean agregar(Persona p);
    public boolean editar(Persona p);
    public boolean eliminar(int id);
}
