package com.hw.frame;

import java.util.ArrayList;

public interface Category<T,V> {
	public ArrayList<T> searchcate(V v)
			throws Exception;
	
}
