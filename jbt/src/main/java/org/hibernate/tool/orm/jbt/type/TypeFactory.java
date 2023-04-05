package org.hibernate.tool.orm.jbt.type;

import org.hibernate.type.Type;

public class TypeFactory {
	
	public static final TypeFactory INSTANCE = new TypeFactory();
	
	private TypeFactory() {}

	public Type getBooleanType() {
		return BooleanType.INSTANCE;
	}

	public Object getByteType() {
		return ByteType.INSTANCE;
	};
	
}
