/*  Copyright 2012 InterCommIT b.v.
*
*  This file is part of the "BasicJspWs-demo" project hosted on https://github.com/intercommit/basicjspws-demo
*
*  BasicJspWs-demo is free software: you can redistribute it and/or modify
*  it under the terms of the GNU Lesser General Public License as published by
*  the Free Software Foundation, either version 3 of the License, or
*  any later version.
*
*  BasicJspWs-demo is distributed in the hope that it will be useful,
*  but WITHOUT ANY WARRANTY; without even the implied warranty of
*  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
*  GNU Lesser General Public License for more details.
*
*  You should have received a copy of the GNU Lesser General Public License
*  along with BasicJspWs-demo. If not, see <http://www.gnu.org/licenses/>.
*
*/
package nl.intercommit.basicjspws.demo;

import java.util.Properties;

import javax.servlet.ServletContextEvent;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import nl.intercommit.basicjspws.AppInit;

public class InitDemo extends AppInit {
	
	private static final Logger log = LoggerFactory.getLogger(InitDemo.class);

	public static InitDemo instance;

	@Override
	protected String getAppName() {
		return "Basic JSP Demo";
	}

	@Override
	protected String getBaseName() {
		return "basicjspws-demo";
	}
	
	@Override
	protected String getAppVersion() {
		return "1.0.0";
	}

	@Override
	protected String getAppEnv() {
		return "dev";
	}

	@Override
	protected Properties getAppProps(final ServletContextEvent sce) {
		return new Properties();
	}
	
	@Override
	protected void initApp(final ServletContextEvent sce) {
		instance = this;
		log.info("Initialized.");
	}

}
