<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://callidora.lk/jsp/template-inheritance" prefix="layout"%>

<layout:extends name="base">
    <layout:put block="content" type="REPLACE">


        <!-- breadcrumb-section -->
        <div class="breadcrumb-section breadcrumb-bg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 offset-lg-2 text-center">
                        <div class="breadcrumb-text">
                            <p>Get support for your order</p>
                            <h1>Contact us</h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end breadcrumb section -->

        <!-- contact form -->
        <div class="contact-from-section mt-150 mb-150">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 mb-5 mb-lg-0">
                        <div class="form-title">
                            <h2>Have you any question?</h2>
                            <p>Please submit a mail.</p>
                        </div>
                        <div id="form_status"></div>
                        <div class="contact-form">
                            <form type="POST" id="fruitkha-contact" onSubmit="return valid_datas( this );">
                                <p>
                                    <input type="text" placeholder="Name" name="name" id="name">
                                    <input type="email" placeholder="Email" name="email" id="email">
                                </p>
                                <p>
                                    <input type="tel" placeholder="Phone" name="phone" id="phone">
                                    <input type="text" placeholder="Subject" name="subject" id="subject">
                                </p>
                                <p><textarea name="message" id="message" cols="30" rows="10" placeholder="Message"></textarea></p>
                                <input type="hidden" name="token" value="FsWga4&@f6aw" />
                                <p><input type="submit" value="Submit"></p>
                            </form>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="contact-form-wrap">
                            <div class="contact-form-box">
                                <h4><i class="fas fa-map"></i> Shop Address</h4>
                                <p>No.2/56, <br> Puttalam Road, <br> Nikaweratiya.</p>
                            </div>
                            <div class="contact-form-box">
                                <h4><i class="far fa-clock"></i> Shop Hours</h4>
                                <p>MON - FRIDAY: 6 PM to 10 PM <br> SAT - SUN: 6 PM to 11 PM </p>
                            </div>
                            <div class="contact-form-box">
                                <h4><i class="fas fa-address-book"></i> Contact</h4>
                                <p>Phone: 0771225494, 0771388771  <br> Email: zuki@gmail.com</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end contact form -->

        <!-- find our location -->
        <div class="find-location blue-bg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <p> <i class="fas fa-map-marker-alt"></i> Find Our Location</p>
                    </div>
                </div>
            </div>
        </div>
        <!-- end find our location -->

        <!-- google map section -->
        <div class="embed-responsive embed-responsive-21by9">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3953.2512386324006!2d80.19468807377879!3d7.763158907520112!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3afcd1d7167425dd%3A0x816fdedef8ed3115!2sAzoza%20Innovems!5e0!3m2!1sen!2slk!4v1694375661519!5m2!1sen!2slk" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
<%--            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d26432.42324808999!2d-118.34398767954286!3d34.09378509738966!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80c2bf07045279bf%3A0xf67a9a6797bdfae4!2sHollywood%2C%20Los%20Angeles%2C%20CA%2C%20USA!5e0!3m2!1sen!2sbd!4v1576846473265!5m2!1sen!2sbd" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" class="embed-responsive-item"></iframe>--%>
        </div>
        <!-- end google map section -->


    </layout:put>
</layout:extends>