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

import it.unibz.krdb.obda.model.OBDADataFactory;
import it.unibz.krdb.obda.model.OBDADataSource;
import it.unibz.krdb.obda.model.OBDAModel;
import it.unibz.krdb.obda.model.impl.OBDADataFactoryImpl;
import it.unibz.krdb.obda.owlrefplatform.core.QuestConstants;
import it.unibz.krdb.obda.owlrefplatform.core.QuestPreferences;
import it.unibz.krdb.obda.owlrefplatform.owlapi3.QuestOWL;
import it.unibz.krdb.obda.owlrefplatform.owlapi3.QuestOWLConnection;
import it.unibz.krdb.obda.owlrefplatform.owlapi3.QuestOWLFactory;
import it.unibz.krdb.obda.owlrefplatform.owlapi3.QuestOWLResultSet;
import it.unibz.krdb.obda.owlrefplatform.owlapi3.QuestOWLStatement;
import it.unibz.krdb.obda.r2rml.R2RMLReader;

import org.semanticweb.owlapi.apibinding.OWLManager;
import org.semanticweb.owlapi.model.OWLObject;
import org.semanticweb.owlapi.model.OWLOntology;
import org.semanticweb.owlapi.model.OWLOntologyCreationException;
import org.semanticweb.owlapi.model.OWLOntologyManager;
import org.semanticweb.owlapi.reasoner.SimpleConfiguration;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.net.URI;

public class QuestOWL_R2RML_Example {
	
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


    public void runQuery() throws Exception {

        OWLOntology owlOntology = loadOWLOntology(owlFile);


        OBDAModel obdaModel = loadR2RML(r2rmlFile);


        QuestOWLFactory factory = new QuestOWLFactory();

        QuestPreferences p = new QuestPreferences();
        p.setCurrentValueOf(QuestPreferences.ABOX_MODE, QuestConstants.VIRTUAL);
        p.setCurrentValueOf(QuestPreferences.OBTAIN_FULL_METADATA,
                QuestConstants.FALSE);

        factory.setPreferenceHolder(p);

        factory.setOBDAController(obdaModel);

        QuestOWL reasoner = (QuestOWL) factory.createReasoner(owlOntology, new SimpleConfiguration());

		/*
		 * Prepare the data connection for querying.
		 */
		QuestOWLConnection conn = reasoner.getConnection();
		QuestOWLStatement st = conn.createStatement();

        String sparqlQuery = loadSPARQL(sparqlFile);

        String sqlQuery = st.getUnfolding(sparqlQuery);

        System.out.println();
        System.out.println("The input SPARQL query:");
        System.out.println("=======================");
        System.out.println(sparqlQuery);
        System.out.println();


        try {
			QuestOWLResultSet rs = st.executeTuple(sparqlQuery);
			int columnSize = rs.getColumnCount();
			while (rs.nextRow()) {
				for (int idx = 1; idx <= columnSize; idx++) {
					OWLObject binding = rs.getOWLObject(idx);
					System.out.print(binding.toString() + ", ");
				}
				System.out.print("\n");
			}
			rs.close();

			/*
			 * Print the query summary
			 */


			System.out.println("The output SQL query:");
			System.out.println("=====================");
			System.out.println(sqlQuery);
			
		} finally {
			/*
			 * Close connection and resources
			 */
			if (!st.isClosed()) {
				st.close();
			}
			if (!conn.isClosed()) {
				conn.close();
			}
			reasoner.dispose();
		}
	}

    private OBDAModel loadR2RML(String r2rmlFile) {
        String jdbcUrl = "jdbc:h2:tcp://localhost/books;DATABASE_TO_UPPER=FALSE";
        String username = "sa";
        String password = "";
        String driverClass = "org.h2.Driver";

        OBDADataFactory f = OBDADataFactoryImpl.getInstance();

        URI obdaURI = new File(r2rmlFile).toURI();

        String sourceUrl = obdaURI.toString();
        OBDADataSource dataSource = f.getJDBCDataSource(sourceUrl, jdbcUrl,
                username, password, driverClass);

        R2RMLReader reader = new R2RMLReader(r2rmlFile);

        return reader.readModel(dataSource);
    }



    private OWLOntology loadOWLOntology(String owlFile) throws OWLOntologyCreationException {
        OWLOntologyManager owlManager = OWLManager.createOWLOntologyManager();

        return owlManager.loadOntologyFromOntologyDocument(new File(owlFile));
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

    /**
     * Main client program
     */
    public static void main(String[] args) {
        try {
            QuestOWL_R2RML_Example example = new QuestOWL_R2RML_Example();
            example.runQuery();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
