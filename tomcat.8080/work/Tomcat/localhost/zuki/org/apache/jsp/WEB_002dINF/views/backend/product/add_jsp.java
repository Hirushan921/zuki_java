/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/10.1.7
 * Generated at: 2023-10-14 10:46:34 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.backend.product;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.jsp.*;

public final class add_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports,
                 org.apache.jasper.runtime.JspSourceDirectives {

  private static final jakarta.servlet.jsp.JspFactory _jspxFactory =
          jakarta.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("file:/C:/Users/Asus/.m2/repository/lk/callidora/jsp/jsp-template-inheritance/1.0.1/jsp-template-inheritance-1.0.1.jar", Long.valueOf(1692244289944L));
    _jspx_dependants.put("jar:file:/C:/Users/Asus/.m2/repository/lk/callidora/jsp/jsp-template-inheritance/1.0.1/jsp-template-inheritance-1.0.1.jar!/META-INF/jsp-inheritance.tld", Long.valueOf(1692219220000L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("jakarta.servlet");
    _jspx_imports_packages.add("jakarta.servlet.http");
    _jspx_imports_packages.add("jakarta.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile jakarta.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public boolean getErrorOnELNotFound() {
    return false;
  }

  public jakarta.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final jakarta.servlet.http.HttpServletRequest request, final jakarta.servlet.http.HttpServletResponse response)
      throws java.io.IOException, jakarta.servlet.ServletException {

    if (!jakarta.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
        return;
      }
    }

    final jakarta.servlet.jsp.PageContext pageContext;
    jakarta.servlet.http.HttpSession session = null;
    final jakarta.servlet.ServletContext application;
    final jakarta.servlet.ServletConfig config;
    jakarta.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    jakarta.servlet.jsp.JspWriter _jspx_out = null;
    jakarta.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      if (_jspx_meth_layout_005fextends_005f0(_jspx_page_context))
        return;
    } catch (java.lang.Throwable t) {
      if (!(t instanceof jakarta.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_layout_005fextends_005f0(jakarta.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    jakarta.servlet.jsp.PageContext pageContext = _jspx_page_context;
    jakarta.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  layout:extends
    lk.callidora.jsp.inheritance.ExtendsTag _jspx_th_layout_005fextends_005f0 = new lk.callidora.jsp.inheritance.ExtendsTag();
    _jsp_getInstanceManager().newInstance(_jspx_th_layout_005fextends_005f0);
    try {
      _jspx_th_layout_005fextends_005f0.setJspContext(_jspx_page_context);
      // /WEB-INF/views/backend/product/add.jsp(3,0) name = name type = null reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_layout_005fextends_005f0.setName("admin_base");
      _jspx_th_layout_005fextends_005f0.setJspBody(new Helper( 0, _jspx_page_context, _jspx_th_layout_005fextends_005f0, null));
      _jspx_th_layout_005fextends_005f0.doTag();
    } finally {
      _jsp_getInstanceManager().destroyInstance(_jspx_th_layout_005fextends_005f0);
    }
    return false;
  }

  private boolean _jspx_meth_layout_005fput_005f0(jakarta.servlet.jsp.tagext.JspTag _jspx_parent, jakarta.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    jakarta.servlet.jsp.PageContext pageContext = _jspx_page_context;
    jakarta.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  layout:put
    lk.callidora.jsp.inheritance.PutTag _jspx_th_layout_005fput_005f0 = new lk.callidora.jsp.inheritance.PutTag();
    _jsp_getInstanceManager().newInstance(_jspx_th_layout_005fput_005f0);
    try {
      _jspx_th_layout_005fput_005f0.setJspContext(_jspx_page_context);
      _jspx_th_layout_005fput_005f0.setParent(_jspx_parent);
      // /WEB-INF/views/backend/product/add.jsp(4,4) name = block type = null reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_layout_005fput_005f0.setBlock("style");
      _jspx_th_layout_005fput_005f0.setJspBody(new Helper( 1, _jspx_page_context, _jspx_th_layout_005fput_005f0, null));
      _jspx_th_layout_005fput_005f0.doTag();
    } finally {
      _jsp_getInstanceManager().destroyInstance(_jspx_th_layout_005fput_005f0);
    }
    return false;
  }

  private boolean _jspx_meth_layout_005fput_005f1(jakarta.servlet.jsp.tagext.JspTag _jspx_parent, jakarta.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    jakarta.servlet.jsp.PageContext pageContext = _jspx_page_context;
    jakarta.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  layout:put
    lk.callidora.jsp.inheritance.PutTag _jspx_th_layout_005fput_005f1 = new lk.callidora.jsp.inheritance.PutTag();
    _jsp_getInstanceManager().newInstance(_jspx_th_layout_005fput_005f1);
    try {
      _jspx_th_layout_005fput_005f1.setJspContext(_jspx_page_context);
      _jspx_th_layout_005fput_005f1.setParent(_jspx_parent);
      // /WEB-INF/views/backend/product/add.jsp(10,4) name = block type = null reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_layout_005fput_005f1.setBlock("contents");
      _jspx_th_layout_005fput_005f1.setJspBody(new Helper( 2, _jspx_page_context, _jspx_th_layout_005fput_005f1, null));
      _jspx_th_layout_005fput_005f1.doTag();
    } finally {
      _jsp_getInstanceManager().destroyInstance(_jspx_th_layout_005fput_005f1);
    }
    return false;
  }

  private boolean _jspx_meth_layout_005fput_005f2(jakarta.servlet.jsp.tagext.JspTag _jspx_parent, jakarta.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    jakarta.servlet.jsp.PageContext pageContext = _jspx_page_context;
    jakarta.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  layout:put
    lk.callidora.jsp.inheritance.PutTag _jspx_th_layout_005fput_005f2 = new lk.callidora.jsp.inheritance.PutTag();
    _jsp_getInstanceManager().newInstance(_jspx_th_layout_005fput_005f2);
    try {
      _jspx_th_layout_005fput_005f2.setJspContext(_jspx_page_context);
      _jspx_th_layout_005fput_005f2.setParent(_jspx_parent);
      // /WEB-INF/views/backend/product/add.jsp(95,4) name = block type = null reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_layout_005fput_005f2.setBlock("script");
      _jspx_th_layout_005fput_005f2.setJspBody(new Helper( 3, _jspx_page_context, _jspx_th_layout_005fput_005f2, null));
      _jspx_th_layout_005fput_005f2.doTag();
    } finally {
      _jsp_getInstanceManager().destroyInstance(_jspx_th_layout_005fput_005f2);
    }
    return false;
  }

  private class Helper
      extends org.apache.jasper.runtime.JspFragmentHelper
  {
    private jakarta.servlet.jsp.tagext.JspTag _jspx_parent;
    private int[] _jspx_push_body_count;

    public Helper( int discriminator, jakarta.servlet.jsp.JspContext jspContext, jakarta.servlet.jsp.tagext.JspTag _jspx_parent, int[] _jspx_push_body_count ) {
      super( discriminator, jspContext, _jspx_parent );
      this._jspx_parent = _jspx_parent;
      this._jspx_push_body_count = _jspx_push_body_count;
    }
    public boolean invoke0( jakarta.servlet.jsp.JspWriter out ) 
      throws java.lang.Throwable
    {
      out.write("\r\n");
      out.write("    ");
      if (_jspx_meth_layout_005fput_005f0(_jspx_parent, _jspx_page_context))
        return true;
      out.write("\r\n");
      out.write("    ");
      if (_jspx_meth_layout_005fput_005f1(_jspx_parent, _jspx_page_context))
        return true;
      out.write("\r\n");
      out.write("    ");
      if (_jspx_meth_layout_005fput_005f2(_jspx_parent, _jspx_page_context))
        return true;
      out.write('\r');
      out.write('\n');
      return false;
    }
    public boolean invoke1( jakarta.servlet.jsp.JspWriter out ) 
      throws java.lang.Throwable
    {
      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write("        <link href=\"https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css\" rel=\"stylesheet\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${admin_assets}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/vendor/bootstrap-select/css/bootstrap-select.css\">\r\n");
      out.write("\r\n");
      out.write("    ");
      return false;
    }
    public boolean invoke2( jakarta.servlet.jsp.JspWriter out ) 
      throws java.lang.Throwable
    {
      out.write("\r\n");
      out.write("        <div class=\"row\">\r\n");
      out.write("            <div class=\"col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12\">\r\n");
      out.write("                <div class=\"page-header\">\r\n");
      out.write("                    <h2 class=\"pageheader-title\">Add Foods</h2>\r\n");
      out.write("                    <div class=\"page-breadcrumb\">\r\n");
      out.write("                        <nav aria-label=\"breadcrumb\">\r\n");
      out.write("                            <ol class=\"breadcrumb\">\r\n");
      out.write("                                <li class=\"breadcrumb-item\"><a href=\"#\" class=\"breadcrumb-link\">Dashboard</a></li>\r\n");
      out.write("                                <li class=\"breadcrumb-item\"><a href=\"#\" class=\"breadcrumb-link\">Foods</a></li>\r\n");
      out.write("                                <li class=\"breadcrumb-item active\" aria-current=\"page\">Add</li>\r\n");
      out.write("                            </ol>\r\n");
      out.write("                        </nav>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("            <form id=\"form-add-product\" autocomplete=\"off\" novalidate=\"novalidate\">\r\n");
      out.write("                <div class=\"row\">\r\n");
      out.write("                    <div class=\"col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12\">\r\n");
      out.write("                        <div class=\"section-block\" id=\"basicform\">\r\n");
      out.write("                            <h3 class=\"section-title\">Add New Food Item</h3>\r\n");
      out.write("                            <p></p>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"card\">\r\n");
      out.write("                            <h5 class=\"card-header\">Food</h5>\r\n");
      out.write("                            <div class=\"card-body\">\r\n");
      out.write("                                <div class=\"form-group\">\r\n");
      out.write("                                    <label for=\"product-name\" class=\"col-form-label\">Food Name</label>\r\n");
      out.write("                                    <input id=\"product-name\" type=\"text\" class=\"form-control col-sm-6\">\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"form-group\">\r\n");
      out.write("                                    <label for=\"category\" class=\"col-form-label\">Category</label>\r\n");
      out.write("                                    <select id=\"category\" title=\"Select\" class=\"form-control selectpicke col-sm-6\">\r\n");
      out.write("                                        <option>Select</option>\r\n");
      out.write("                                    </select>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"form-group\">\r\n");
      out.write("                                    <label for=\"product-price\" class=\"col-form-label\">Item Price</label>\r\n");
      out.write("                                    <input id=\"product-price\" type=\"text\" class=\"form-control col-sm-6\">\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"form-group\">\r\n");
      out.write("                                    <label for=\"qty\" class=\"col-form-label\">Quantity</label>\r\n");
      out.write("                                    <input id=\"qty\" type=\"text\" class=\"form-control col-sm-6\">\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"form-group\">\r\n");
      out.write("                                    <label for=\"delivery-charge\" class=\"col-form-label\">Delivery Charge</label>\r\n");
      out.write("                                    <input id=\"delivery-charge\" type=\"text\" class=\"form-control col-sm-6\">\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"form-group\">\r\n");
      out.write("                                    <label for=\"product-description\">Description</label>\r\n");
      out.write("                                    <textarea class=\"form-control\" id=\"product-description\"></textarea>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <div class=\"row\">\r\n");
      out.write("                    <div class=\"col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12\">\r\n");
      out.write("                        <div class=\"card\">\r\n");
      out.write("                            <h5 class=\"card-header\">Item Images</h5>\r\n");
      out.write("                            <div class=\"card-body\">\r\n");
      out.write("                                <div class=\"row\">\r\n");
      out.write("                                    <div id=\"image-dev\"></div>\r\n");
      out.write("                                </div>\r\n");
      out.write("\r\n");
      out.write("                                <div class=\"row pt-2 pt-sm-5 mt-1\">\r\n");
      out.write("                                    <div class=\"col-sm-12 pl-0\">\r\n");
      out.write("                                        <p class=\"text-right\">\r\n");
      out.write("                                            <button id=\"add-product\" class=\"btn btn-space btn-primary\">Save</button>\r\n");
      out.write("                                            <button class=\"btn btn-space btn-secondary\">Cancel</button>\r\n");
      out.write("                                        </p>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </form>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    ");
      return false;
    }
    public boolean invoke3( jakarta.servlet.jsp.JspWriter out ) 
      throws java.lang.Throwable
    {
      out.write("\r\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.5.1.min.js\"></script>\r\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js\"></script>\r\n");
      out.write("        <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js\"></script>\r\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js\"></script>\r\n");
      out.write("        <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${admin_assets}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/libs/js/spartan-multi-image-picker.js\"></script>\r\n");
      out.write("        <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${admin_assets}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/vendor/bootstrap-select/js/bootstrap-select.js\"></script>\r\n");
      out.write("        <script>\r\n");
      out.write("            $('#product-description').summernote({\r\n");
      out.write("                height: 200\r\n");
      out.write("            });\r\n");
      out.write("\r\n");
      out.write("            $('#image-dev').spartanMultiImagePicker({\r\n");
      out.write("                fieldName: 'file[]',\r\n");
      out.write("                maxCount: 5\r\n");
      out.write("            });\r\n");
      out.write("\r\n");
      out.write("            document.querySelector('#add-product').addEventListener('click', (evt) => {\r\n");
      out.write("                evt.preventDefault();\r\n");
      out.write("                let productName = document.querySelector('#product-name').value;\r\n");
      out.write("                let productPrice = document.querySelector('#product-price').value;\r\n");
      out.write("                let productDiscount = document.querySelector('#delivery-charge').value;\r\n");
      out.write("                let category = document.querySelector('#category').value;\r\n");
      out.write("                let quantity = document.querySelector('#qty').value;\r\n");
      out.write("                let productDescription = $('#product-description').summernote('code');\r\n");
      out.write("                console.log(productDescription)\r\n");
      out.write("                console.log(category)\r\n");
      out.write("\r\n");
      out.write("                fetch('");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${BASE_URL}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("admin/api/v1/product', {\r\n");
      out.write("                    headers: {\r\n");
      out.write("                        'Content-Type': 'application/json'\r\n");
      out.write("                    },\r\n");
      out.write("                    method: 'post',\r\n");
      out.write("                    body: JSON.stringify({\r\n");
      out.write("                        name: productName,\r\n");
      out.write("                        price: productPrice,\r\n");
      out.write("                        quantity: quantity,\r\n");
      out.write("                        cid:category,\r\n");
      out.write("                        discountPrice: productDiscount,\r\n");
      out.write("                        description: productDescription\r\n");
      out.write("                    })\r\n");
      out.write("                }).then(response => response.json())\r\n");
      out.write("                    .then(data => {\r\n");
      out.write("                        uploadImages(data.pid);\r\n");
      out.write("                    })\r\n");
      out.write("            });\r\n");
      out.write("\r\n");
      out.write("            function uploadImages(id) {\r\n");
      out.write("                let formData = new FormData();\r\n");
      out.write("                let inputs = document.querySelectorAll('input[type=file]');\r\n");
      out.write("                inputs.forEach((input, index) => {\r\n");
      out.write("                    if (index !== 0 && index !== inputs.length - 1) {\r\n");
      out.write("                        let file = input.files[0];\r\n");
      out.write("                        formData.append(\"file[]\", file);\r\n");
      out.write("                    }\r\n");
      out.write("                });\r\n");
      out.write("\r\n");
      out.write("                fetch('");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${BASE_URL}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("admin/api/v1/product/' + id + '/upload-image', {\r\n");
      out.write("                    method: 'post',\r\n");
      out.write("                    body: formData\r\n");
      out.write("                }).then(response => response.json())\r\n");
      out.write("                    .then(data => {\r\n");
      out.write("                        console.log(data);\r\n");
      out.write("                        window.location.href = '");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${BASE_URL}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("admin/product';\r\n");
      out.write("                    });\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            function loadCategoryOp() {\r\n");
      out.write("                fetch('");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${BASE_URL}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("admin/api/v1/category')\r\n");
      out.write("                    .then(response => response.json())\r\n");
      out.write("                    .then(data => {\r\n");
      out.write("                        let select = document.getElementById('category');\r\n");
      out.write("                        data.forEach(category => {\r\n");
      out.write("                            let option = document.createElement('option');\r\n");
      out.write("                            option.value = category.id;\r\n");
      out.write("                            option.text = category.name;\r\n");
      out.write("                            select.appendChild(option);\r\n");
      out.write("                        });\r\n");
      out.write("\r\n");
      out.write("                    });\r\n");
      out.write("            }\r\n");
      out.write("            loadCategoryOp();\r\n");
      out.write("\r\n");
      out.write("        </script>\r\n");
      out.write("    ");
      return false;
    }
    public void invoke( java.io.Writer writer )
      throws jakarta.servlet.jsp.JspException
    {
      jakarta.servlet.jsp.JspWriter out = null;
      if( writer != null ) {
        out = this.jspContext.pushBody(writer);
      } else {
        out = this.jspContext.getOut();
      }
      try {
        Object _jspx_saved_JspContext = this.jspContext.getELContext().getContext(jakarta.servlet.jsp.JspContext.class);
        this.jspContext.getELContext().putContext(jakarta.servlet.jsp.JspContext.class,this.jspContext);
        switch( this.discriminator ) {
          case 0:
            invoke0( out );
            break;
          case 1:
            invoke1( out );
            break;
          case 2:
            invoke2( out );
            break;
          case 3:
            invoke3( out );
            break;
        }
        jspContext.getELContext().putContext(jakarta.servlet.jsp.JspContext.class,_jspx_saved_JspContext);
      }
      catch( java.lang.Throwable e ) {
        if (e instanceof jakarta.servlet.jsp.SkipPageException)
            throw (jakarta.servlet.jsp.SkipPageException) e;
        throw new jakarta.servlet.jsp.JspException( e );
      }
      finally {
        if( writer != null ) {
          this.jspContext.popBody();
        }
      }
    }
  }
}
