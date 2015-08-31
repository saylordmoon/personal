package org.apci.aplicaciones.util.sql;

import java.lang.reflect.Field;

import org.apci.aplicaciones.util.StringUtil;

public class Call extends Query {
	
	public <T> Call(String pStoredProcedure,Class<T> pClassType){
		super("{call %s (%s)}");
		this.storedProcedure = pStoredProcedure;
		generate(pClassType);
	}
	
	@Override
	protected <T> void generate(Class<T> pClassType) {
		StringBuilder sValues =  new StringBuilder();
		
		Field[] classProperties = pClassType.getDeclaredFields();
		
		for (int i=0; i < classProperties.length ; i++)	{
				sValues.append(StringUtil.COMMA);
				sValues.append(StringUtil.STRING_PARAMETER);
		}
		
		if ( sValues.length() > 0 )	{
			sValues.deleteCharAt(0);
		}
		this.values = sValues.toString();
	}

	@Override
	public String getSql() 
	{
		return String.format(this.SQL, this.storedProcedure, this.values);
	}

}
