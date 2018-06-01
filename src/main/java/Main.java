
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.Version;
import spark.Spark;



import static spark.Spark.staticFiles;

public class Main {
    public static void main(String[] args) {

        ArrayList<Estudiante> listEstudiante = new ArrayList<Estudiante>();
        staticFiles.location("/templates"); //Ruta Estática de la ubicación de las plantaillas utilizadas.
         
        final Configuration configuration = new Configuration(new Version(2, 3, 0));
        configuration.setClassForTemplateLoading(Main.class, "/");

        /*---------------------------------------------Variables---------------------------------------------
         * Aquí sse declaran las variables que se usará en el programa.
         * */
        
        Spark.get("/", (request, response) -> {
            Template template = configuration.getTemplate("templates/home.ftl");
            StringWriter writer = new StringWriter();

            Map<String, Object> attributes = new HashMap<>();
            attributes.put("listEstudiante", listEstudiante);
            attributes.put("listSize", listEstudiante.size() > 0);
            template.process(attributes, writer);
            return writer;
        });

        /*---------------------------------------------Página Principal---------------------------------------------
         * Con Spark, Se manda a al directorio principal que funcionará como el Home de la página.
         * Se le pasa como variable la lista creada con los estudiantes y su tamañp para utilizarlos en la vista.
         * */
        
        Spark.get("/VisualizarEstudiante/:id", (request, response) -> {
            Template resultTemplate = configuration.getTemplate("templates/verEstu.ftl");
            StringWriter writer = new StringWriter();

            int id = Integer.parseInt(request.params("id"));

            Map<String, Object> atributos = new HashMap<>();
            atributos.put("Estu", listEstudiante.get(id));

            resultTemplate.process(atributos, writer);
            return writer;
        });

        /*---------------------------------------------Vista Agregar---------------------------------------------
         * Aquí, se podrá ver la información de un estudiante espesífico en forma de listado.
         * */
        
        Spark.get("/Agregar", (request, response) -> {
            Template template = configuration.getTemplate("templates/nuevoEstu.ftl");
            return template;
        });

        /*---------------------------------------------Entrada del URL---------------------------------------------
         * Aquí, se verá la vista de agregar estudiante a la lista.
         * */

        Spark.post("/AgregarList", (request, response) -> {
            StringWriter writer = new StringWriter();
            try {
                String matricula = request.queryParams("matricula");
                String nombre = request.queryParams("nombre");
                String apellido = request.queryParams("apellido");
                String telefono = request.queryParams("telefono");
                listEstudiante.add(new Estudiante(Integer.parseInt(matricula), nombre, apellido, telefono));
                response.redirect("/");
            }catch (Exception e){
                System.out.println(e);
                response.redirect("/Agregar");
            }
            return writer;
        });

        /*---------------------------------------------Entrada del URL---------------------------------------------
         * Funciona como auxiliar para añadir el nuevo estudiante a la lista despues de pasar por la vista de agregar.
         * */
        

        Spark.get("/Eliminar/:id", (request, response) -> {
            StringWriter writer = new StringWriter();
            int id = Integer.parseInt(request.params("id"));

            listEstudiante.remove(id);
            response.redirect("/");
            return writer;
        });

        /*---------------------------------------------Entrada del URL---------------------------------------------
         * Se elimina el estudiante seleccionado por su ID de la lista y se vuelve a cargar la pagina sin el elemento
         * eliminado.
         * */

        Spark.get("/Modificar/:id", (request, response) -> {
            Template resultTemplate = configuration.getTemplate("templates/modEstu.ftl");
            StringWriter writer = new StringWriter();

            int id = Integer.parseInt(request.params("id"));

            Map<String, Object> atributos = new HashMap<>();
            atributos.put("Estu", listEstudiante.get(id));

            resultTemplate.process(atributos, writer);
            return writer;
        });

        /*---------------------------------------------Entrada del URL---------------------------------------------
         * Aquí, se verá la vista de Modificar un estudiante existente.
         * */

        Spark.post("/ModificarList", (request, response) -> {
            StringWriter writer = new StringWriter();

            try {
                String nombre = request.queryParams("nombre");
                String matricula = request.queryParams("matricula");
                String apellido = request.queryParams("apellido");
                String telefono = request.queryParams("telefono");
                Estudiante estudiante = new Estudiante(Integer.parseInt(matricula), nombre, apellido, telefono);
                for (Estudiante Estu: listEstudiante)
                {
                    if(Estu.getMatricula() == estudiante.getMatricula())
                    {
                        Estu.setNombre(estudiante.getNombre());
                        Estu.setApellido(estudiante.getApellido());
                        Estu.setMatricula(estudiante.getMatricula());
                        Estu.setTelefono(estudiante.getTelefono());
                        break;
                    }
                }
                response.redirect("/");
            }catch (Exception ex){
                System.out.println("======================================================================================");
                System.out.println("        <<Error al modificar estudiante!>>");
                System.out.println("======================================================================================");
                System.out.println( "Error: " + ex);
                response.redirect("/");
            }
            return writer;
        });

        /*---------------------------------------------Entrada del URL---------------------------------------------
         * Funciona como auxiliar para modificar el estudiante seleccionado en la lista despues de pasar por la vista
         * de Modificar.
         * */

        
    }

}
