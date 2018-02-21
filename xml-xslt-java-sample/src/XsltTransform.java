import javax.xml.transform.*;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
import java.io.File;
import java.io.IOException;
import java.net.URISyntaxException;

/* Use the following arguments: 
 * cdcatalog.xslt cdcatalog.xml cdcatalog-output.html
 */
public class XsltTransform {
    public static void main(String[] args) throws IOException,
                                                  URISyntaxException,
                                                  TransformerException {
    	
    	System.out.println("Usage: XsltTransform [xslt filename] [input xml filename] [out html filename]");
        Source             xslt        = new StreamSource(new File(args[0]));
        Source             text        = new StreamSource(new File(args[1]));
        TransformerFactory factory     = TransformerFactory.newInstance();
        Transformer        transformer = factory.newTransformer(xslt);
        
        transformer.transform(text, new StreamResult(new File(args[2])));
        
        System.out.println("args[2] = " + args[0]);
        System.out.println("args[2] = " + args[1]);
        System.out.println("args[2] = " + args[2]);
        
        System.out.println(args[2] + " has been created");
    }
}