package test;

import document.Document;
import factory.DocumentFactory;
import factory.ExcelDocumentFactory;
import factory.PdfDocumentFactory;
import factory.WordDocumentFactory;

public class FactoryMethodTest {

    public static void main(String[] args) {

        DocumentFactory factory;

        factory = new WordDocumentFactory();
        Document d1 = factory.createDocument();
        d1.open();

        factory = new PdfDocumentFactory();
        Document d2 = factory.createDocument();
        d2.open();

        factory = new ExcelDocumentFactory();
        Document d3 = factory.createDocument();
        d3.open();
    }
}