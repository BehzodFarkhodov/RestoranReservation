package org.example.service;

import jakarta.servlet.http.Part;
import org.example.entity.MyFile;
import org.example.exception.InvalidInputException;
import org.springframework.stereotype.Service;

import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.UUID;
import java.util.stream.Collectors;

@Service
public class FileService {
    private String uploadPath = "C:\\Users\\z.farhodov\\Downloads\\Telegram Desktop\\e_commerse\\RestoranReservation\\web\\pictures";
    public String saveFile(Part part, boolean isImage) {
        if (isImage) {
            checkImageContentType(part);
        } else {
            checkBookContentType(part);
        }
        String filename = getFileName(part);

        try {
            part.write(uploadPath + File.separator + filename);
            return filename;
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public List<MyFile> getFileList() {
        return Arrays.stream(new File(uploadPath).listFiles())
                .map((file) -> new MyFile(file.getName(), file.getAbsolutePath()))
                .collect(Collectors.toList());
    }

    private String getFileName(Part part) {
        String contentDisposition = part.getHeader("content-disposition");
        for (String field : contentDisposition.split("; ")) {
            if (field.startsWith("filename")) {
                return field.substring(10, field.length() - 1);
            }
        }
        return "file-" + UUID.randomUUID();
    }


    private void checkImageContentType(Part part) {
        if (!part.getContentType().startsWith("image/")) {
            throw new InvalidInputException("only images are accepted");
        }
    }

    private void checkBookContentType(Part part) {
        if (!part.getContentType().startsWith("application/pdf")) {
            throw new InvalidInputException("only pdfs are accepted");
        }
    }





}
