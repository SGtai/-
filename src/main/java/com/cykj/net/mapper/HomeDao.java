package com.cykj.net.mapper;

import com.cykj.net.javabean.Advert;
import com.cykj.net.javabean.JobInfoIndex;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.RowBounds;

import java.util.List;

@Mapper
public interface HomeDao
{
	public List<JobInfoIndex> getTenHCom();
	public List<JobInfoIndex> compAndJob();
	public List<Advert> advertTen();
	public List<JobInfoIndex> searchJob(RowBounds rowBounds);
	public int searchJobCount();
}
