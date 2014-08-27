package org.semanticweb.ontop.examples.books;

/*
 * #%L
 * ontop-quest-owlapi3
 * %%
 * Copyright (C) 2009 - 2014 Free University of Bozen-Bolzano
 * %%
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 *      http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * #L%
 */

import it.unibz.krdb.obda.owlrefplatform.core.QuestConstants;
import it.unibz.krdb.obda.owlrefplatform.core.QuestPreferences;
import org.openrdf.model.Model;
import org.openrdf.model.impl.LinkedHashModel;
import org.openrdf.query.Binding;
import org.openrdf.query.Query;
import org.openrdf.query.QueryLanguage;
import org.openrdf.query.TupleQuery;
import org.openrdf.query.TupleQueryResult;
import org.openrdf.rio.RDFFormat;
import org.openrdf.rio.RDFHandlerException;
import org.openrdf.rio.RDFParseException;
import org.openrdf.rio.RDFParser;
import org.openrdf.rio.Rio;
import org.openrdf.rio.helpers.StatementCollector;
import org.semanticweb.owlapi.apibinding.OWLManager;
import org.semanticweb.owlapi.model.OWLOntology;
import org.semanticweb.owlapi.model.OWLOntologyCreationException;
import org.semanticweb.owlapi.model.OWLOntologyManager;
import sesameWrapper.RepositoryConnection;
import sesameWrapper.SesameVirtualRepo;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.IOException;

public class QuestSesame_R2RML_Example {

    /*
     * Use the sample database using H2 from
     * https://github.com/ontop/ontop/wiki/InstallingTutorialDatabases
     *
     * Please use the pre-bundled H2 server from the above link
     *
     */
    final String owlFile = "src/main/resources/example/books/exampleBooks.owl";
    final String r2rmlFile = "src/main/resources/example/books/exampleBooks.ttl";
    final String sparqlFile = "src/main/resources/example/books/q1.rq";

    /**
     * Main client program
     */
    public static void main(String[] args) throws Exception {
        QuestSesame_R2RML_Example example = new QuestSesame_R2RML_Example();
        example.run();

    }

    public void run() throws Exception {

        Model r2rmlModel = loadR2RML(r2rmlFile);

        OWLOntology owlOntology = loadOWLOntology(owlFile);


        QuestPreferences preferences = new QuestPreferences();
        preferences.setCurrentValueOf(QuestPreferences.ABOX_MODE, QuestConstants.VIRTUAL);
        preferences.setCurrentValueOf(QuestPreferences.DBNAME, "books");
        preferences.setCurrentValueOf(QuestPreferences.JDBC_DRIVER, "org.h2.Driver");
        preferences.setCurrentValueOf(QuestPreferences.JDBC_URL, "jdbc:h2:tcp://localhost/books;DATABASE_TO_UPPER=FALSE");
        preferences.setCurrentValueOf(QuestPreferences.DBUSER, "sa");
        preferences.setCurrentValueOf(QuestPreferences.DBPASSWORD, "");


        SesameVirtualRepo repo = new SesameVirtualRepo("test_repo", owlOntology, r2rmlModel, preferences);

        repo.initialize();

        RepositoryConnection conn = repo.getConnection();


        String queryString = loadSPARQL(sparqlFile);


        System.out.println();
        System.out.println("The input SPARQL query:");
        System.out.println("=======================");
        System.out.println(queryString);
        System.out.println();


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

    }

    private OWLOntology loadOWLOntology(String owlFile) throws OWLOntologyCreationException {
        OWLOntologyManager owlManager = OWLManager.createOWLOntologyManager();

        return owlManager.loadOntologyFromOntologyDocument(new File(owlFile));
    }

    private Model loadR2RML(String r2rmlFile) throws IOException, RDFParseException, RDFHandlerException {
        RDFParser rdfParser = Rio.createParser(RDFFormat.TURTLE);
        Model r2rmlModel = new LinkedHashModel();
        StatementCollector collector = new StatementCollector(r2rmlModel);
        rdfParser.setRDFHandler(collector);
        FileInputStream fis = new FileInputStream(new File(r2rmlFile));
        rdfParser.parse(fis, "http://example.org");
        return r2rmlModel;
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
