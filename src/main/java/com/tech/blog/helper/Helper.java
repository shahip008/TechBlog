package com.tech.blog.helper;

import java.io.*;


import jakarta.servlet.http.Part;

public class Helper {
	public static boolean saveFile(InputStream is, String path) {
        boolean success = false;
        try {
            // Create the directories if they do not exist
            File file = new File(path);
            File parentDir = file.getParentFile();
            if (!parentDir.exists()) {
                parentDir.mkdirs();
            }

            // Save the file
            try (FileOutputStream fos = new FileOutputStream(file)) {
                byte[] buffer = new byte[1024];
                int bytesRead;
                while ((bytesRead = is.read(buffer)) != -1) {
                    fos.write(buffer, 0, bytesRead);
                }
                success = true;
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return success;
    }
}
