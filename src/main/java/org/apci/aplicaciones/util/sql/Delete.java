package org.apci.aplicaciones.util.sql;

import org.apci.aplicaciones.util.StringUtil;

public class Delete extends Query {

	public <T> Delete(Class<T> pClassType) {
		super(pClassType, "DELETE FROM %s %s;");
	}

	@Override
	protected <T> void generate(Class<T> pClassType) {
	
		StringBuilder sWhere = new StringBuilder();
	
		sWhere.append("WHERE");
		sWhere.append(StringUtil.SPACE);
		sWhere.append(this.getPrimaryKeyName());
		sWhere.append(StringUtil.EQUALS);
		sWhere.append(StringUtil.STRING_PARAMETER);
		
		this.where = sWhere.toString(); 
	}

	@Override
	public String getSql() 
	{
		return String.format(this.SQL, this.table, this.where);
	}
}

