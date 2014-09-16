/*
 * The MIT License (MIT)
 * Copyright (C) 2012 Jason Ish
 *
 * Permission is hereby granted, free of charge, to any person
 * obtaining a copy of this software and associated documentation
 * files (the â€œSoftwareâ€�), to deal in the Software without
 * restriction, including without limitation the rights to use, copy,
 * modify, merge, publish, distribute, sublicense, and/or sell copies
 * of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be
 * included in all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED â€œAS ISâ€�, WITHOUT WARRANTY OF ANY KIND,
 * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
 * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
 * NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
 * BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
 * ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
 * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 */

package ca.unx.template.config;

import com.codahale.metrics.MetricRegistry;
import com.codahale.metrics.health.HealthCheckRegistry;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;
import org.springframework.context.support.PropertySourcesPlaceholderConfigurer;
import org.springframework.stereotype.Controller;
 
/**
 * The root application context.
 * <p/>
 * Scanning is enabled but will skip @Configuration and @Controller classes.
 *
 * @Configuration classes are skipped to prevent picking theses ones up again as
 * these files are in the scan path.  @Controller classes will be picked up by
 * MvcConfiguration.
 */
@Configuration
@Import({JettyConfiguration.class, SpringSecurityConfiguration.class})
@ComponentScan(basePackages = {"ca.unx.template"},
        excludeFilters = {@ComponentScan.Filter(Controller.class),
                @ComponentScan.Filter(Configuration.class)})
public class RootConfiguration {

    /**
     * Allows access to properties. eg) @Value("${jetty.port}").
     */
    @Bean
    public static PropertySourcesPlaceholderConfigurer propertySourcesPlaceholderConfigurer() {
        return new PropertySourcesPlaceholderConfigurer();
    }

    /**
     * A default Metrics registry.
     */
    @Bean
    public MetricRegistry metricRegistry() {
        return new MetricRegistry();
    }

    /**
     * A default Health registry (part of Metrics).
     */
    @Bean
    public HealthCheckRegistry healthCheckRegistry() {
        return new HealthCheckRegistry();
    }


}
