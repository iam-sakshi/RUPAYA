
package com.example.rupaya_pg.config;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurationSupport;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

import com.example.rupaya_pg.interceptors.AppInterceptor;

@Configuration
@ComponentScan(basePackages = {"com.example.rupaya_pg"})
public class AppConfig extends WebMvcConfigurationSupport {
	
	@Override
	protected void addResourceHandlers(ResourceHandlerRegistry registry)
	{
		registry.addResourceHandler("css/**","img/**","js/**")
		.addResourceLocations("classpath:/static/css/","classpath:/static/img/","classpath:/static/js/");
	}
   
	@Bean
    public InternalResourceViewResolver viewResolver()
     {
         InternalResourceViewResolver jspviewResolver =new InternalResourceViewResolver();
         jspviewResolver.setPrefix("/WEB-INF/jsp/");
         jspviewResolver.setSuffix(".jsp");
         jspviewResolver.setViewClass(JstlView.class);
 
         return jspviewResolver;
     }
    @Override
    protected void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(new AppInterceptor()).addPathPatterns("/app/*");
        
    }

}