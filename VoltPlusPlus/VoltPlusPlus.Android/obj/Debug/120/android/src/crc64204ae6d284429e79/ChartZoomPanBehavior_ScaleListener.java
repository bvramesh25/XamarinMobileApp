package crc64204ae6d284429e79;


public class ChartZoomPanBehavior_ScaleListener
	extends android.view.ScaleGestureDetector.SimpleOnScaleGestureListener
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onScaleBegin:(Landroid/view/ScaleGestureDetector;)Z:GetOnScaleBegin_Landroid_view_ScaleGestureDetector_Handler\n" +
			"n_onScale:(Landroid/view/ScaleGestureDetector;)Z:GetOnScale_Landroid_view_ScaleGestureDetector_Handler\n" +
			"n_onScaleEnd:(Landroid/view/ScaleGestureDetector;)V:GetOnScaleEnd_Landroid_view_ScaleGestureDetector_Handler\n" +
			"";
		mono.android.Runtime.register ("Com.Syncfusion.Charts.ChartZoomPanBehavior+ScaleListener, Syncfusion.SfChart.XForms.Android", ChartZoomPanBehavior_ScaleListener.class, __md_methods);
	}


	public ChartZoomPanBehavior_ScaleListener ()
	{
		super ();
		if (getClass () == ChartZoomPanBehavior_ScaleListener.class) {
			mono.android.TypeManager.Activate ("Com.Syncfusion.Charts.ChartZoomPanBehavior+ScaleListener, Syncfusion.SfChart.XForms.Android", "", this, new java.lang.Object[] {  });
		}
	}


	public boolean onScaleBegin (android.view.ScaleGestureDetector p0)
	{
		return n_onScaleBegin (p0);
	}

	private native boolean n_onScaleBegin (android.view.ScaleGestureDetector p0);


	public boolean onScale (android.view.ScaleGestureDetector p0)
	{
		return n_onScale (p0);
	}

	private native boolean n_onScale (android.view.ScaleGestureDetector p0);


	public void onScaleEnd (android.view.ScaleGestureDetector p0)
	{
		n_onScaleEnd (p0);
	}

	private native void n_onScaleEnd (android.view.ScaleGestureDetector p0);

	private java.util.ArrayList refList;
	public void monodroidAddReference (java.lang.Object obj)
	{
		if (refList == null)
			refList = new java.util.ArrayList ();
		refList.add (obj);
	}

	public void monodroidClearReferences ()
	{
		if (refList != null)
			refList.clear ();
	}
}
