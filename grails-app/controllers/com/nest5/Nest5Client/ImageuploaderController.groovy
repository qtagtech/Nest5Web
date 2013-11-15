package com.nest5.Nest5Client

import com.amazonaws.AmazonClientException
import com.amazonaws.AmazonServiceException
import com.amazonaws.auth.AWSCredentials
import com.amazonaws.auth.BasicAWSCredentials
import com.amazonaws.services.s3.AmazonS3
import com.amazonaws.services.s3.AmazonS3Client
import com.amazonaws.services.s3.model.CannedAccessControlList
import com.amazonaws.services.s3.model.PutObjectRequest
import grails.converters.JSON
import org.apache.commons.lang.RandomStringUtils
import org.springframework.web.multipart.MultipartHttpServletRequest
import org.springframework.web.multipart.commons.CommonsMultipartFile

class ImageuploaderController {


    private AmazonS3 s3

    def beforeInterceptor = {
        if (!s3) {
            AWSCredentials myCredentials = new BasicAWSCredentials(
                    "AKIAIIQ5AOSHXVIRUSBA", "7DpsEtM+2wWz1sUZaIvyOEg3tk0LhqM1EmqgRTfF");
            s3 = new AmazonS3Client(myCredentials);
        }
    }





/*def upload(){
    if(request){
        MultipartHttpServletRequest mpr = (MultipartHttpServletRequest)request;
        CommonsMultipartFile uploadedFile = (CommonsMultipartFile)mpr.getFile("fileselect[]");
        if(!uploadedFile.empty){
            String charset = (('A'..'Z') + ('0'..'9')).join()
            Integer length = 5
            String randomString = RandomStringUtils.random(length, charset.toCharArray())
            java.io.File tmpFile = new java.io.File(System.getProperty("java.io.tmpdir") + System.getProperty("file.separator") +
                    randomString + '_' + uploadedFile.getOriginalFilename());
            uploadedFile.transferTo(tmpFile);
            def success = false
            try {
                System.out.println("Uploading a new object to S3 from a file\n");

                s3.putObject(new PutObjectRequest(
                        "com.nest5.usermedia", randomString+"_"+uploadedFile.getOriginalFilename(), tmpFile).withCannedAcl(CannedAccessControlList.PublicRead));
                success = true;

            } catch (AmazonServiceException ase) {
                System.out.println("Caught an AmazonServiceException, which " +
                        "means your request made it " +
                        "to Amazon S3, but was rejected with an error response" +
                        " for some reason.");
                System.out.println("Error Message:    " + ase.getMessage());
                System.out.println("HTTP Status Code: " + ase.getStatusCode());
                System.out.println("AWS Error Code:   " + ase.getErrorCode());
                System.out.println("Error Type:       " + ase.getErrorType());
                System.out.println("Request ID:       " + ase.getRequestId());
            } catch (AmazonClientException ace) {
                System.out.println("Caught an AmazonClientException, which " +
                        "means the client encountered " +
                        "an internal error while trying to " +
                        "communicate with S3, " +
                        "such as not being able to access the network.");
                System.out.println("Error Message: " + ace.getMessage());
            }
            //subio el archivo y continua la ejecucion entonces guardo el Archivo en DB
            if (success){
                def file = new File(
                        name: uploadedFile.getOriginalFilename(),
                        tipo: uploadedFile.contentType,
                        description: '',
                        ruta: 'http://s3.amazonaws.com/com.nest5.usermedia/'+randomString+"_"+uploadedFile.getOriginalFilename()
                )
                if(!file.save()){
                    response.setStatus(200)
                    def result = [success: false, uploadName: '', fileId: '', fileSize: '']
                    println file.errors.allErrors
                }
                else
                {
//                    println file
                    response.setStatus(200)
                    response.setContentType('application/json')
                    def result = [success: true, uploadName: file.name, fileId: file.id, fileSize: uploadedFile.size, ruta: file.ruta]
                    render result as JSON
                }


            }

            }
        else{
            response.setStatus(500)
            return
        }

        }
    return

    }*/


def companyUploadMain(){
    println "acaaaa"
    if(request){
        MultipartHttpServletRequest mpr = (MultipartHttpServletRequest)request;
        CommonsMultipartFile uploadedFile = (CommonsMultipartFile)mpr.getFile("fileselect[]");
        if(!uploadedFile.empty){

            String charset = (('A'..'Z') + ('0'..'9')).join()
            Integer length = 5
            String randomString = RandomStringUtils.random(length, charset.toCharArray())
            java.io.File tmpFile = new java.io.File(System.getProperty("java.io.tmpdir") + System.getProperty("file.separator") +
                    randomString + '_' + uploadedFile.getOriginalFilename());
            uploadedFile.transferTo(tmpFile);
            def success = false
            try {
                System.out.println("Uploading a new object to S3 from a file\n");

                s3.putObject(new PutObjectRequest(
                        "com.nest5.company.media", randomString+"_"+uploadedFile.getOriginalFilename(), tmpFile).withCannedAcl(CannedAccessControlList.PublicRead));
                success = true;

            } catch (AmazonServiceException ase) {
                System.out.println("Caught an AmazonServiceException, which " +
                        "means your request made it " +
                        "to Amazon S3, but was rejected with an error response" +
                        " for some reason.");
                System.out.println("Error Message:    " + ase.getMessage());
                System.out.println("HTTP Status Code: " + ase.getStatusCode());
                System.out.println("AWS Error Code:   " + ase.getErrorCode());
                System.out.println("Error Type:       " + ase.getErrorType());
                System.out.println("Request ID:       " + ase.getRequestId());
            } catch (AmazonClientException ace) {
                System.out.println("Caught an AmazonClientException, which " +
                        "means the client encountered " +
                        "an internal error while trying to " +
                        "communicate with S3, " +
                        "such as not being able to access the network.");
                System.out.println("Error Message: " + ace.getMessage());
            }
            //subio el archivo y continua la ejecucion entonces guardo el Archivo en DB
            if (success){
                def file = new FileCompany(
                        name: uploadedFile.originalFilename,
                        tipo: uploadedFile.contentType,
                        description: '',
                        ruta: 'http://s3.amazonaws.com/com.nest5.company.media/'+randomString+"_"+uploadedFile.getOriginalFilename()
                )
                if(!file.save(flush: true, failOnError: true)){
                    response.setStatus(200)
                    def result = [success: false, uploadName: '', fileId: '', fileSize: '']
                    println file.errors.allErrors
                }
                else
                {
                    def company = Company.findById(params.company as Long) ?: Company.findByUsername("dummyCompany")
                    def current = MediaCompany.findByCompanyAndIsMain(company,true)
                    if(current){
                        current.isMain = false
                        current.save(failOnError: true,flush: true)
                    }
                    def media = new MediaCompany(
                            company: company,
                            file: file,
                            isMain: true
                    )
                    if(!media.save(flush: true, failOnError: true)){
                        response.setStatus(200)
                        def result = [success: false, uploadName: '', fileId: '', fileSize: '']
                        println media.errors.allErrors
                    }
                    else{
//                        println file
                        response.setStatus(200)
                        response.setContentType('application/json')
                        def result = [success: true, uploadName: file.name, fileId: file.id, fileSize: uploadedFile.size, ruta: file.ruta]
                        render result as JSON
                    }
//
                }
            }
            else{
                response.setStatus(200)
                def result = [success: false, uploadName: '', fileId: '', fileSize: '']
                render result as JSON
            }



        }
        else{
            response.setStatus(500)
        }
    }
    def result = [success: false, uploadName: '', fileId: '', fileSize: '']
    render result as JSON
    return
}

def iconUpload(){
    if(request){
        MultipartHttpServletRequest mpr = (MultipartHttpServletRequest)request;
        CommonsMultipartFile uploadedFile = (CommonsMultipartFile)mpr.getFile("fileselect[]");
        if(!uploadedFile.empty){

            String charset = (('A'..'Z') + ('0'..'9')).join()
            Integer length = 5
            String randomString = RandomStringUtils.random(length, charset.toCharArray())
            java.io.File tmpFile = new java.io.File(System.getProperty("java.io.tmpdir") + System.getProperty("file.separator") +
                    randomString + '_' + uploadedFile.getOriginalFilename());
            uploadedFile.transferTo(tmpFile);
            def success = false
            try {
                System.out.println("Uploading a new object to S3 from a file\n");

                s3.putObject(new PutObjectRequest(
                        "com.nest5.taste.icons", randomString+"_"+uploadedFile.getOriginalFilename(), tmpFile).withCannedAcl(CannedAccessControlList.PublicRead));
                success = true;

            } catch (AmazonServiceException ase) {
                System.out.println("Caught an AmazonServiceException, which " +
                        "means your request made it " +
                        "to Amazon S3, but was rejected with an error response" +
                        " for some reason.");
                System.out.println("Error Message:    " + ase.getMessage());
                System.out.println("HTTP Status Code: " + ase.getStatusCode());
                System.out.println("AWS Error Code:   " + ase.getErrorCode());
                System.out.println("Error Type:       " + ase.getErrorType());
                System.out.println("Request ID:       " + ase.getRequestId());
            } catch (AmazonClientException ace) {
                System.out.println("Caught an AmazonClientException, which " +
                        "means the client encountered " +
                        "an internal error while trying to " +
                        "communicate with S3, " +
                        "such as not being able to access the network.");
                System.out.println("Error Message: " + ace.getMessage());
            }
            if (success){
                //subio el archivo y continua la ejecucion entonces guardo el Archivo en DB
                def icon = new Icon(
                        name: uploadedFile.getOriginalFilename(),
                        tipo: uploadedFile.getContentType(),
                        description: '',
                        ruta: 'http://s3.amazonaws.com/com.nest5.taste.icons/'+randomString+"_"+uploadedFile.getOriginalFilename()
                )
                if(!icon.save(flush: true, failOnError: true)){
                    response.setStatus(200)
                    def result = [success: false, uploadName: '', fileId: '', fileSize: '']
                    println icon.errors.allErrors
                }
                else
                {

//                    println icon
                    response.setStatus(200)
                    response.setContentType('application/json')
                    def result = [success: true, uploadName: icon.name, fileId: icon.id, fileSize: uploadedFile.size, ruta: icon.ruta]
                    render result as JSON
//
                }
            }
            else{
                response.setStatus(200)
                def result = [success: false, uploadName: '', fileId: '', fileSize: '']
                render result as JSON
            }



        }
        else{
            response.setStatus(500)
        }
    }
    return
}

    def amazonTest(){
        MultipartHttpServletRequest mpr = (MultipartHttpServletRequest)request;
        CommonsMultipartFile uploadedFile = (CommonsMultipartFile)mpr.getFile("fileselect[]");
        String charset = (('A'..'Z') + ('0'..'9')).join()
        Integer length = 5
        String randomString = RandomStringUtils.random(length, charset.toCharArray())
        java.io.File tmpFile = new java.io.File(System.getProperty("java.io.tmpdir") + System.getProperty("file.separator") +
                randomString + '_' + uploadedFile.getOriginalFilename());
        uploadedFile.transferTo(tmpFile);
        try {
            System.out.println("Uploading a new object to S3 from a file\n");

            s3.putObject(new PutObjectRequest(
                    "com.nest5.taste.icons", randomString+"_"+uploadedFile.getOriginalFilename(), tmpFile).withCannedAcl(CannedAccessControlList.PublicRead));

        } catch (AmazonServiceException ase) {
            System.out.println("Caught an AmazonServiceException, which " +
                    "means your request made it " +
                    "to Amazon S3, but was rejected with an error response" +
                    " for some reason.");
            System.out.println("Error Message:    " + ase.getMessage());
            System.out.println("HTTP Status Code: " + ase.getStatusCode());
            System.out.println("AWS Error Code:   " + ase.getErrorCode());
            System.out.println("Error Type:       " + ase.getErrorType());
            System.out.println("Request ID:       " + ase.getRequestId());
        } catch (AmazonClientException ace) {
            System.out.println("Caught an AmazonClientException, which " +
                    "means the client encountered " +
                    "an internal error while trying to " +
                    "communicate with S3, " +
                    "such as not being able to access the network.");
            System.out.println("Error Message: " + ace.getMessage());
        }
    }


    def index() { }

}
