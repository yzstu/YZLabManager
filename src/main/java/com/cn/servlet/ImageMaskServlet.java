package com.cn.servlet;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class ImageMaskServlet extends HttpServlet {


    public ImageMaskServlet() {
        super();
    }


    public void destroy() {
        super.destroy();
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setHeader("Pragma", "No-cache");
        response.setHeader("Cache-Control", "no-cache");
        response.setDateHeader("Expires", 0);

        int width = 60, height = 20;
        //����ͼ��
        BufferedImage image = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
        //��ȡͼ��������
        Graphics graphics = image.getGraphics();
        //���������
        Random random = new Random();
        //�趨����ɫ
        graphics.setColor(getRandColor(200, 250));
        //��֤���С
        graphics.fillRect(0, 0, width, height);
        //��������
        graphics.setFont(new Font("Times New Roman", Font.PLAIN, 18));
        //graphics.setColor(getRandColor(160, 200));
        //�������155�������ߣ�ʹͼ���е���֤�벻�ױ���������̽�⵽
        for (int i = 0; i < 155; i++) {
            int x = random.nextInt(width);
            int y = random.nextInt(height);
            int xl = random.nextInt(12);
            int yl = random.nextInt(12);
            graphics.drawLine(x, y, x + xl, y + yl);
        }
        //ȡ�����������֤��(4λ����)
        String sRand = "";
        for (int i = 0; i < 4; i++) {
            //0~9
            String rand = String.valueOf(random.nextInt(10));
            sRand += rand;
            //����������ɫ
            graphics.setColor(new Color(20 + random.nextInt(110), 20 + random.nextInt(110), 20 + random.nextInt(110)));
            //�����������4λ������ͼƬ��
            graphics.drawString(rand, 13 * i + 6, 16);
        }
        //����session��
        request.getSession().setAttribute("imageMask", sRand);
        //ͼ����Ч
        graphics.dispose();
        //���ͼ��ҳ��
        ImageIO.write(image, "JPEG", response.getOutputStream());
    }

    //���������ɫ
    public Color getRandColor(int fc, int bc) {
        Random random = new Random();
        if (fc > 255) {
            fc = 255;
        }
        if (bc > 255) {
            bc = 255;
        }
        int r = fc + random.nextInt(bc - fc);
        int g = fc + random.nextInt(bc - fc);
        int b = fc + random.nextInt(bc - fc);
        return new Color(r, g, b);
    }


    public void init() throws ServletException {

    }

}
