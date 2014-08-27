package org.semanticweb.ontop.examples.movie;
import it.unibz.krdb.obda.io.ModelIOManager;
import it.unibz.krdb.obda.io.QueryIOManager;
import it.unibz.krdb.obda.model.OBDADataFactory;
import it.unibz.krdb.obda.model.OBDAModel;
import it.unibz.krdb.obda.model.impl.OBDADataFactoryImpl;
import it.unibz.krdb.obda.owlrefplatform.core.QuestConstants;
import it.unibz.krdb.obda.owlrefplatform.core.QuestPreferences;
import it.unibz.krdb.obda.owlrefplatform.owlapi3.QuestOWL;
import it.unibz.krdb.obda.owlrefplatform.owlapi3.QuestOWLConnection;
import it.unibz.krdb.obda.owlrefplatform.owlapi3.QuestOWLFactory;
import it.unibz.krdb.obda.owlrefplatform.owlapi3.QuestOWLResultSet;
import it.unibz.krdb.obda.owlrefplatform.owlapi3.QuestOWLStatement;

import java.io.File;
import java.lang.Exception;import java.lang.String;import java.lang.System;
import java.util.Properties;

import it.unibz.krdb.obda.querymanager.QueryController;
import it.unibz.krdb.obda.querymanager.QueryControllerGroup;
import it.unibz.krdb.obda.querymanager.QueryControllerQuery;
import org.semanticweb.owlapi.apibinding.OWLManager;
import org.semanticweb.owlapi.model.OWLOntology;
import org.semanticweb.owlapi.model.OWLOntologyManager;
import org.semanticweb.owlapi.reasoner.SimpleConfiguration;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;



public class MovieScenarioQuestOWL_Example {

    private OBDADataFactory fac;

    Logger log = LoggerFactory.getLogger(this.getClass());
    private OBDAModel obdaModel;
    private OWLOntology ontology;

    final String owlFile = "src/main/resources/example/movie/movieontology.owl";

    /*
	It needs PostgreSQL database to run.
	See https://github.com/ontop/ontop/wiki/Example_MovieOntology
	*/
    final String obdaFile = "src/main/resources/example/movie/movieontology.obda";


    public void setUp() throws Exception {

        fac = OBDADataFactoryImpl.getInstance();

        // Loading the OWL file
        OWLOntologyManager manager = OWLManager.createOWLOntologyManager();
        ontology = manager.loadOntologyFromOntologyDocument((new File(owlFile)));

        // Loading the OBDA data
        obdaModel = fac.getOBDAModel();

        ModelIOManager ioManager = new ModelIOManager(obdaModel);
        ioManager.load(obdaFile);

    }

    private void runTests(Properties p) throws Exception {

        // Creating a new instance of the reasoner
        QuestOWLFactory factory = new QuestOWLFactory();
        factory.setOBDAController(obdaModel);

        factory.setPreferenceHolder(p);

        QuestOWL reasoner = (QuestOWL) factory.createReasoner(ontology, new SimpleConfiguration());


        // Now we are ready for querying
        QuestOWLConnection conn = reasoner.getConnection();
        QuestOWLStatement st = conn.createStatement();

        try{
        QueryController qc = new QueryController();
        QueryIOManager qman = new QueryIOManager(qc);
        qman.load("src/main/resources/example/movie/movieontology.q");

        for (QueryControllerGroup group : qc.getGroups()) {
            for (QueryControllerQuery query : group.getQueries()) {

                System.out.println("=====================");
                System.out.println("Executing query: " + query.getID());
                System.out.println("Query: \n" + query.getQuery());

                long start = System.nanoTime();
                QuestOWLResultSet res = st.executeTuple(query.getQuery());
                long end = System.nanoTime();

                double time = (end - start) / 1000;

                int count = 0;
                while (res.nextRow()) {
                    count += 1;
                }
                System.out.println("Total result: " + count);
                System.out.println("Elapsed time:  " + time + " ms");

                /*
			 * Print the query summary
			 */

                String sqlQuery = st.getUnfolding(query.getQuery());

                System.out.println();
                System.out.println("The input SPARQL query:");
                System.out.println("=======================");
                System.out.println(query.getQuery());
                System.out.println();

                System.out.println("The output SQL query:");
                System.out.println("=====================");
                System.out.println(sqlQuery);
            }
        }
        } finally {

			/*
			 * Close connection and resources
			 */
            if (st != null && !st.isClosed()) {
                st.close();
            }
            if (!conn.isClosed()) {
                conn.close();
            }
            reasoner.dispose();
        }


    }


    /**
     * Main client program
     */
    public static void main(String[] args) {
        try {
            MovieScenarioQuestOWL_Example example = new MovieScenarioQuestOWL_Example();
            example.runQuery();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    public void runQuery() throws Exception {
        setUp();
        QuestPreferences preference = new QuestPreferences();
        preference.setCurrentValueOf(QuestPreferences.ABOX_MODE, QuestConstants.VIRTUAL);

        runTests(preference);

    }

}

