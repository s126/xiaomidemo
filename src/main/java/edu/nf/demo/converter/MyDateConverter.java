package edu.nf.demo.converter;

import ognl.DefaultTypeConverter;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Map;

public class MyDateConverter extends DefaultTypeConverter {


    private DateFormat[] dateFormat = {
            new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"),
            new SimpleDateFormat("yyyy-MM-dd")

    };


    public Object convertValue(Map context, Object object, Class toType) {

        if (toType == Timestamp.class) {

            String dataStr = ((String[]) object)[0];

            for (int i = 0; i < dateFormat.length; i++) {
                try {
                    return dateFormat[i].parse(dataStr);
                } catch (java.text.ParseException e) {
                    e.printStackTrace();
                    continue;
                }
            }
        } else if (toType == String.class) {
            Timestamp date = (Timestamp) object;
            return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(date);
        }
        return null;
    }

}
