package org.semanticweb.ontop.examples.movie;


import org.openrdf.query.*;
import sesameWrapper.RepositoryConnection;
import sesameWrapper.SesameVirtualRepo;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

public class MovieScenarioQuestSesame_Example {

    final String owlFile = "src/main/resources/example/movie/movieontology.owl";
    /*
    It needs PostgreSQL database to run.
    See https://github.com/ontop/ontop/wiki/Example_MovieOntology
    */
    final String obdaFile = "src/main/resources/example/movie/movieontology.obda";
    final String sparqlFile = "src/main/resources/example/movie/q1Movie.rq";

    /**
     * Main client program
     */
    public static void main(String[] args) {
        try {
            MovieScenarioQuestSesame_Example example = new MovieScenarioQuestSesame_Example();
            example.run();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void run() throws Exception {
        String queryString = loadSPARQL(sparqlFile);


        System.out.println();
        System.out.println("The input SPARQL query:");
        System.out.println("=======================");
        System.out.println(queryString);
        System.out.println();


        // create and initialize repo
        boolean existential = false;
        String rewriting = "TreeWitness";
        SesameVirtualRepo repo = new SesameVirtualRepo("test_repo", owlFile, obdaFile, existential, rewriting);

        repo.initialize();

        RepositoryConnection conn = repo.getConnection();


            // execute query
            Query query = conn.prepareQuery(QueryLanguage.SPARQL, queryString);

            TupleQuery tq = (TupleQuery) query;

            TupleQueryResult result = tq.evaluate();

            while (result.hasNext()) {
                for (Binding binding : result.next()) {
                    System.out.print(binding.getValue() + ", ");
                }
                System.out.println();
            }

        //Close result set to release resources
        result.close();

        // Finally close connection to release resources
        System.out.println("Closing..,");
        conn.close();

    }

    private String loadSPARQL(String sparqlFile) throws IOException {
        String queryString = "";

        BufferedReader br = new BufferedReader(new FileReader(sparqlFile));
        String line;
        while ((line = br.readLine()) != null) {
            queryString += line + "\n";
        }
        return queryString;
    }


}
