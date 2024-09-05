#include "PoissonProblem.h"



//-----------------------------------------------------------------------------------------------------------------------------------------------------
// HELPER FUNCTION FOR GRID IN 

template <int dim>
void create_triangulation(parallel::distributed::Triangulation<dim> &tria)
{
  const std::string filename = "../../../Meshes/small_mesh.msh"; //remember: you run from build directory

  ConditionalOStream pcout(std::cout, (Utilities::MPI::this_mpi_process(MPI_COMM_WORLD) == 0));

  std::ifstream input_file(filename);

  if (!input_file.is_open())
  {
    std::cerr << "Errore: impossibile aprire il file di mesh." << std::endl;
    return;
  }

  pcout <<"Reading the mesh from " << filename << std::endl;
  GridIn<2>  grid_in; //This class implements an input mechanism for grid data. It allows to read a grid structure into a triangulation object
  grid_in.attach_triangulation(tria); //we pass to grid_in our (empty) triangulation
  grid_in.read_msh(input_file); // read the msh file
  pcout << " Grid read correctly "<< std::endl;

}

// void extract_mesh_info(parallel::distributed::Triangulation<2> &tria)
// {
//     // Loop through all cells
//     for (auto cell = tria.begin_active(); cell != tria.end(); ++cell)
//     {
//         if (cell->is_locally_owned())
//         {
//             std::cout << "Cell at index: " << cell->index() << std::endl;

//             // Loop through all vertices of the cell
//             for (unsigned int vertex = 0; vertex < GeometryInfo<2>::vertices_per_cell; ++vertex)
//             {
//                 // Get the global index of the vertex
//                 unsigned int vertex_index = cell->vertex_index(vertex);
//                 std::cout << "Vertex index: " << vertex_index << std::endl;

//                 // Get the coordinates of the vertex
//                 Point<2> vertex_coordinates = cell->vertex(vertex);
//                 std::cout << "Vertex coordinates: " << vertex_coordinates << std::endl;
//             }
//         }
//     }
// }
  

//######################### MAIN #############################################################################################################


int main(int argc, char *argv[])
{
  try
    {
      using namespace dealii;
      

      Utilities::MPI::MPI_InitFinalize mpi_initialization(argc, argv, 1);

      parallel::distributed::Triangulation<2> tria(MPI_COMM_WORLD);
      create_triangulation(tria);
      
      PoissonProblem<2> poisson_problem_2d(tria);
      poisson_problem_2d.run(100, 1e-9);

      // extract_mesh_info(tria);
    
    }
  catch (std::exception &exc)
    {
      std::cerr << std::endl
                << std::endl
                << "----------------------------------------------------"
                << std::endl;
      std::cerr << "Exception on processing: " << std::endl
                << exc.what() << std::endl
                << "Aborting!" << std::endl
                << "----------------------------------------------------"
                << std::endl;

      return 1;
    }
  catch (...)
    {
      std::cerr << std::endl
                << std::endl
                << "----------------------------------------------------"
                << std::endl;
      std::cerr << "Unknown exception!" << std::endl
                << "Aborting!" << std::endl
                << "----------------------------------------------------"
                << std::endl;
      return 1;
    }

  return 0;
}
