
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Naren Thanikesh
 */
public class enroll extends javax.swing.JFrame {
public static Connection con;
public static PreparedStatement pstmt;
public static Statement stmt;
public static Statement stmt1;
public static ResultSet rs;
public static ResultSet rs1;
public static String admin_id;
public String st_id;
public String clas;  
public String temp1="2";

    /**
     * Creates new form enroll
     */
    public enroll(String student_id) {
try {
       st_id=student_id;
         //   DriverManager.registerDriver(new oracle.jdbc.OracleDriver());
            Class.forName("oracle.jdbc.driver.OracleDriver");
        }catch (ClassNotFoundException e) {
			System.out.println("MySQL JDBC Driver missing!!!");
			e.printStackTrace();
			return;
		}
            try
            {
           con=DriverManager.getConnection("jdbc:oracle:thin:@//orca.csc.ncsu.edu:1521/orcl.csc.ncsu.edu","nthanik","200152371");

                    
            }
            catch(SQLException ex)
            {
                System.out.println("ASD");
            JOptionPane.showMessageDialog(this,ex.getMessage());
       
            }

        
       

        initComponents();
                      
    }
    public enroll() {
try {

         //   DriverManager.registerDriver(new oracle.jdbc.OracleDriver());
            Class.forName("oracle.jdbc.driver.OracleDriver");
        }catch (ClassNotFoundException e) {
			System.out.println("MySQL JDBC Driver missing!!!");
			e.printStackTrace();
			return;
		}
            try
            {
           con=DriverManager.getConnection("jdbc:oracle:thin:@//orca.csc.ncsu.edu:1521/orcl.csc.ncsu.edu","nthanik","200152371");

                    
            }
            catch(SQLException ex)
            {
                System.out.println("ASD");
            JOptionPane.showMessageDialog(this,ex.getMessage());
       
            }

        
       

        initComponents();
    }
    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        buttonGroup1 = new javax.swing.ButtonGroup();
        jLabel1 = new javax.swing.JLabel();
        jScrollPane1 = new javax.swing.JScrollPane();
        t1 = new javax.swing.JTable();
        jLabel2 = new javax.swing.JLabel();
        jTextField1 = new javax.swing.JTextField();
        jButton1 = new javax.swing.JButton();
        jLabel3 = new javax.swing.JLabel();
        jButton2 = new javax.swing.JButton();
        jTextField2 = new javax.swing.JTextField();
        rb1 = new javax.swing.JRadioButton();
        rb2 = new javax.swing.JRadioButton();
        jLabel4 = new javax.swing.JLabel();
        yr = new javax.swing.JTextField();
        jButton3 = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jLabel1.setText("Menu");
        jLabel1.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jLabel1MouseClicked(evt);
            }
        });

        t1.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "Courses"
            }
        ));
        jScrollPane1.setViewportView(t1);

        jLabel2.setText("Course ID");

        jTextField1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jTextField1ActionPerformed(evt);
            }
        });

        jButton1.setText("Register");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        jLabel3.setText("Course ID");

        jButton2.setText("Drop");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });

        buttonGroup1.add(rb1);
        rb1.setSelected(true);
        rb1.setText("Fall");

        buttonGroup1.add(rb2);
        rb2.setText("Spring");
        rb2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                rb2ActionPerformed(evt);
            }
        });

        jLabel4.setText("Year");

        jButton3.setText("Display");
        jButton3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton3ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addGroup(layout.createSequentialGroup()
                        .addContainerGap()
                        .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 99, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addGap(55, 55, 55)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addGroup(layout.createSequentialGroup()
                                        .addComponent(jLabel3)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 65, Short.MAX_VALUE)
                                        .addComponent(jTextField2, javax.swing.GroupLayout.PREFERRED_SIZE, 70, javax.swing.GroupLayout.PREFERRED_SIZE))
                                    .addGroup(layout.createSequentialGroup()
                                        .addGap(61, 61, 61)
                                        .addComponent(jButton3)
                                        .addGap(0, 0, Short.MAX_VALUE))))
                            .addGroup(layout.createSequentialGroup()
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addGroup(layout.createSequentialGroup()
                                        .addComponent(jLabel2)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                        .addComponent(jTextField1, javax.swing.GroupLayout.PREFERRED_SIZE, 75, javax.swing.GroupLayout.PREFERRED_SIZE))
                                    .addGroup(layout.createSequentialGroup()
                                        .addComponent(rb2)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                                    .addGroup(layout.createSequentialGroup()
                                        .addComponent(jLabel4)
                                        .addGap(46, 46, 46)
                                        .addComponent(yr, javax.swing.GroupLayout.PREFERRED_SIZE, 76, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addGap(0, 0, Short.MAX_VALUE))))
                            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                                        .addComponent(jButton1)
                                        .addGap(60, 60, 60))
                                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                                        .addComponent(jButton2)
                                        .addGap(83, 83, 83))))))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(30, 30, 30)
                        .addComponent(rb1)
                        .addGap(0, 0, Short.MAX_VALUE)))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel1)
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(16, 16, 16)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(rb1)
                    .addComponent(rb2)
                    .addComponent(jLabel1))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel4)
                            .addComponent(yr, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jButton3)
                        .addGap(31, 31, 31)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel2)
                            .addComponent(jTextField1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(18, 18, 18)
                        .addComponent(jButton1, javax.swing.GroupLayout.PREFERRED_SIZE, 26, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel3)
                            .addComponent(jTextField2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(32, 32, 32)
                        .addComponent(jButton2))
                    .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 275, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(17, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jLabel1MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jLabel1MouseClicked
        // TODO add your handling code here:
        new student_page(st_id).setVisible(true);
        this.setVisible(false);
    }//GEN-LAST:event_jLabel1MouseClicked

    private void jTextField1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jTextField1ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jTextField1ActionPerformed

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        // TODO add your handling code here:
        try{  
            int total=0;
             stmt=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
                        rs=stmt.executeQuery ("select * from administrator");
            rs.first();
            int i=1;
            if(Integer.parseInt(rs.getString(8))!=0){
                JOptionPane.showMessageDialog(this, "Deadline enforced@!!");
            }
            else{
            String courseid;
            String drop="0";
            int credits;
        String cid2=jTextField2.getText();
                                String term;
            if(rb1.isSelected())
            {
                term="FALL";    
            }
            else
                term="SPRING";
          int y=  Integer.parseInt(yr.getText());
        stmt=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
            rs=stmt.executeQuery ("select class_id from classes where course_id='" + cid2 + "'and semester='" + term + "'and cur_year=" + y + "");
     

        rs.first();
        String clas=rs.getString(1);
        System.out.println(clas);
                System.out.println(cid2);
                        System.out.println(st_id);
                    String query=("delete from enroll where course_id='" + cid2 + "' and sid='" + st_id +"'and class_id='" + clas + "'");
        pstmt=con.prepareStatement(query);
        pstmt.execute();
              
        
         stmt=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
         i=0;
            rs=stmt.executeQuery ("select * from waitlist where waitlist_no=" + i + "");
         rs.first();
         
         
          Object decimalDigits = rs.getObject("drop_id");
            if (decimalDigits != null) {
                    drop=rs.getString(2);
            }
         
         
         //drop=rs.getString(2);
         String c_id=rs.getString(3);
         String s_id=rs.getString(4);
        
        stmt=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
            rs=stmt.executeQuery ("select * from enroll where class_id='" + c_id + "'");
     

        rs.first();
        courseid=rs.getString(1);
        credits=Integer.parseInt(rs.getString(4));
        
        
        query=("delete from waitlist where waitlist_no=0");
        pstmt=con.prepareStatement(query);
        pstmt.execute();
        
        
        stmt=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
            rs=stmt.executeQuery ("select * from student where sid='" + s_id + "'");
            rs.first();
            int level=Integer.parseInt(rs.getString(7));
            int residency=Integer.parseInt(rs.getString(8));
        
            System.out.println("student"+s_id);
            System.out.println("student"+credits);
            System.out.println("level"+level);
            System.out.println("res"+residency);
            
            
         stmt=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
            rs=stmt.executeQuery ("select * from rstatus where student_level=" + level + " and residency=" + residency + "");
            rs.first();
            int maxcredit=Integer.parseInt(rs.getString(5));
                        System.out.println("maxcredit"+maxcredit);

            
        stmt=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
            rs=stmt.executeQuery ("select * from enroll where sid='" + s_id + "'");
            rs.first();
            do{
                  Object decimalDigits1 = rs.getObject("grade");
            if (decimalDigits1 != null) {
                    total=total+Integer.parseInt(rs.getString(4));
            }
            }while(rs.next());
            

            
            System.out.println("total alone"+total);
            System.out.println("tota"+total+credits);
            
            if(total+credits>maxcredit){
                 query=("delete from enroll where sid='" + s_id +"'and class_id='" + drop + "'");
        pstmt=con.prepareStatement(query);
        pstmt.execute();
            }
            
        
        
        
        
        query="insert into enroll(course_id,class_id,sid,num_of_credits) values(?,?,?,?)";
        pstmt=con.prepareStatement(query);
        pstmt.setString(1,courseid);
        pstmt.setString(2,c_id);
        pstmt.setString(3,s_id);
        pstmt.setInt(4,credits);
        pstmt.executeUpdate();
        
        
        
        
        System.out.println(clas);

       
  
            }
        
        }
        catch(SQLException ex){}
    }//GEN-LAST:event_jButton2ActionPerformed

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        // TODO add your handling code here:
        
           try{  
               System.out.println("ASASAS");
                                 stmt=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);

                        rs=stmt.executeQuery ("select enforced from administrator");
            rs.first();
            System.out.println(Integer.parseInt(rs.getString(1)));
            int i=1;
            if(Integer.parseInt(rs.getString(1))!=0){
                JOptionPane.showMessageDialog(this, "Already enforced@!!");
            }
            else{
        
        
        
        
        
        
        
         
            
            
            String cid=jTextField1.getText();
            
                           String term;
            if(rb1.isSelected())
            {
                term="FALL";    
            }
            else
                term="SPRING";
          int y=  Integer.parseInt(yr.getText());
          
          System.out.println(cid);
       /*    stmt=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
            rs=stmt.executeQuery ("select perm from pre_condition where course_id='" + cid + "'");
            rs.first();
            System.out.println(rs.getString("perm"));
            String temp=rs.getString(1);
         */   System.out.println(cid);
       //     if(temp.equals("PREREQ")) {

        stmt=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
            rs=stmt.executeQuery ("select class_id from classes where course_id='" + cid + "'and semester='" + term + "'and cur_year=" + y + "");
     

        rs.first();
        clas=rs.getString(1);
        System.out.println(clas);
        System.out.println(cid);
        stmt=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
            rs=stmt.executeQuery ("select * from course where course_id='" + cid + "'");
            System.out.println(cid);
            rs.first();
            int mini=Integer.parseInt(rs.getString(2));
            int maxi=Integer.parseInt(rs.getString(3));
            System.out.println(maxi);
            System.out.println(mini);
            int c;
            if(maxi!=mini){
                do{
                 c=Integer.parseInt(JOptionPane.showInputDialog("Enter number of credits"));
                 System.out.println(maxi);
            System.out.println(mini);
            System.out.println(c);
                }while((c>maxi) || (c<mini));

            }
            else c=maxi;
            
            
            String query="insert into enroll(course_id,class_id,sid,num_of_credits) values(?,?,?,?)";
        pstmt=con.prepareStatement(query);
        pstmt.setString(1,cid);
        pstmt.setString(2,clas);
        pstmt.setString(3,st_id);
        pstmt.setInt(4,c);
        pstmt.executeUpdate();
        
            }
            
        }
        catch(SQLException ex){
            try{
            stmt=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
            rs=stmt.executeQuery ("select count(*) from waitlist where sid='" + st_id + "' and class_id='" + clas + "'");
            rs.first();
            if(Integer.parseInt(rs.getString(1))>0)
            {
                String drop=JOptionPane.showInputDialog(this, "Enter drop id");
                
            System.out.println("ASASASASASASA");
                 stmt1=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
            rs1=stmt1.executeQuery ("select * from enroll where sid='" + st_id + "'");
            rs1.first();
            System.out.println("1");
            
            
            do {
                Object decimalDigits = rs1.getObject("grade");
            if (decimalDigits == null) {
                    temp1=rs1.getString(2);
            
            
            System.out.println(temp1);
                if(temp1.equals(drop))
                {
                System.out.println(drop); 
                    String sql=("update waitlist set drop_id='" + drop + "' where sid='" + st_id +"' and class_id='"+ clas +"'");
                    
       pstmt=con.prepareStatement(sql);
      pstmt.executeUpdate();   
      con.commit();
      JOptionPane.showMessageDialog(this,"Updated");
                }

                else{
                    JOptionPane.showMessageDialog(this,"Invalid");
                }               
            }
            else{
                System.out.println("Hello");
            }
            }while(rs1.next());
                
            }
            }
        
        catch(SQLException ex1){}
            
          
        }
    }//GEN-LAST:event_jButton1ActionPerformed

    private void rb2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_rb2ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_rb2ActionPerformed

    private void jButton3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton3ActionPerformed
        // TODO add your handling code here:
        try{
            DefaultTableModel tm=(DefaultTableModel)t1.getModel();
            tm.setRowCount(0);
            stmt=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
                   String term;
            if(rb1.isSelected())
            {
                term="FALL";
            }
            else
                term="SPRING";
          int y=  Integer.parseInt(yr.getText());
            rs=stmt.executeQuery ("select course_id from classes where semester='" + term + "'and cur_year="+y+"");
            rs.first();
            do{
            Object row[]={rs.getString(1)};
            tm.addRow(row);
            }while(rs.next());
                
             
       
              }
              catch(SQLException ex){}
    }//GEN-LAST:event_jButton3ActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(enroll.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(enroll.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(enroll.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(enroll.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new enroll().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.ButtonGroup buttonGroup1;
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton3;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTextField jTextField1;
    private javax.swing.JTextField jTextField2;
    private javax.swing.JRadioButton rb1;
    private javax.swing.JRadioButton rb2;
    private javax.swing.JTable t1;
    private javax.swing.JTextField yr;
    // End of variables declaration//GEN-END:variables
}
