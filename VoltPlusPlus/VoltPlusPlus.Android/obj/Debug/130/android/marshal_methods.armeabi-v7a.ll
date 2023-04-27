; ModuleID = 'obj\Debug\130\android\marshal_methods.armeabi-v7a.ll'
source_filename = "obj\Debug\130\android\marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [202 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 59
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 88
	i32 57263871, ; 2: Xamarin.Forms.Core.dll => 0x369c6ff => 83
	i32 101534019, ; 3: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 73
	i32 120558881, ; 4: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 73
	i32 165246403, ; 5: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 40
	i32 182336117, ; 6: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 74
	i32 209399409, ; 7: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 38
	i32 230216969, ; 8: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 54
	i32 231814094, ; 9: System.Globalization => 0xdd133ce => 7
	i32 232815796, ; 10: System.Web.Services => 0xde07cb4 => 97
	i32 261689757, ; 11: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 43
	i32 278686392, ; 12: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 58
	i32 280482487, ; 13: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 52
	i32 318968648, ; 14: Xamarin.AndroidX.Activity.dll => 0x13031348 => 30
	i32 321597661, ; 15: System.Numerics => 0x132b30dd => 24
	i32 342366114, ; 16: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 56
	i32 434172370, ; 17: VoltPlusPlus.Android.dll => 0x19e0f1d2 => 0
	i32 441335492, ; 18: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 42
	i32 442521989, ; 19: Xamarin.Essentials => 0x1a605985 => 82
	i32 442565967, ; 20: System.Collections => 0x1a61054f => 3
	i32 450948140, ; 21: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 51
	i32 465846621, ; 22: mscorlib => 0x1bc4415d => 15
	i32 469710990, ; 23: System.dll => 0x1bff388e => 23
	i32 476646585, ; 24: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 52
	i32 486930444, ; 25: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 63
	i32 526420162, ; 26: System.Transactions.dll => 0x1f6088c2 => 92
	i32 545304856, ; 27: System.Runtime.Extensions => 0x2080b118 => 4
	i32 605376203, ; 28: System.IO.Compression.FileSystem => 0x24154ecb => 95
	i32 627609679, ; 29: Xamarin.AndroidX.CustomView => 0x2568904f => 47
	i32 663517072, ; 30: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 79
	i32 666292255, ; 31: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 35
	i32 690569205, ; 32: System.Xml.Linq.dll => 0x29293ff5 => 28
	i32 719061231, ; 33: Syncfusion.Core.XForms.dll => 0x2adc00ef => 17
	i32 775507847, ; 34: System.IO.Compression => 0x2e394f87 => 94
	i32 809851609, ; 35: System.Drawing.Common.dll => 0x30455ad9 => 8
	i32 843511501, ; 36: Xamarin.AndroidX.Print => 0x3246f6cd => 70
	i32 877678880, ; 37: System.Globalization.dll => 0x34505120 => 7
	i32 928116545, ; 38: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 88
	i32 967690846, ; 39: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 56
	i32 974778368, ; 40: FormsViewGroup.dll => 0x3a19f000 => 11
	i32 992768348, ; 41: System.Collections.dll => 0x3b2c715c => 3
	i32 1012816738, ; 42: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 72
	i32 1035644815, ; 43: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 34
	i32 1042160112, ; 44: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 85
	i32 1052210849, ; 45: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 60
	i32 1098259244, ; 46: System => 0x41761b2c => 23
	i32 1175144683, ; 47: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 77
	i32 1178241025, ; 48: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 67
	i32 1204270330, ; 49: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 35
	i32 1267360935, ; 50: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 78
	i32 1293217323, ; 51: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 49
	i32 1324164729, ; 52: System.Linq => 0x4eed2679 => 99
	i32 1331773366, ; 53: Syncfusion.SfGauge.XForms => 0x4f613fb6 => 21
	i32 1365406463, ; 54: System.ServiceModel.Internals.dll => 0x516272ff => 89
	i32 1376866003, ; 55: Xamarin.AndroidX.SavedState => 0x52114ed3 => 72
	i32 1379779777, ; 56: System.Resources.ResourceManager => 0x523dc4c1 => 1
	i32 1395857551, ; 57: Xamarin.AndroidX.Media.dll => 0x5333188f => 64
	i32 1406073936, ; 58: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 44
	i32 1457743152, ; 59: System.Runtime.Extensions.dll => 0x56e36530 => 4
	i32 1460219004, ; 60: Xamarin.Forms.Xaml => 0x57092c7c => 86
	i32 1462112819, ; 61: System.IO.Compression.dll => 0x57261233 => 94
	i32 1469204771, ; 62: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 33
	i32 1516315406, ; 63: Syncfusion.Core.XForms.Android.dll => 0x5a61230e => 16
	i32 1543031311, ; 64: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 98
	i32 1550322496, ; 65: System.Reflection.Extensions.dll => 0x5c680b40 => 5
	i32 1582372066, ; 66: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 48
	i32 1592978981, ; 67: System.Runtime.Serialization.dll => 0x5ef2ee25 => 10
	i32 1622152042, ; 68: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 62
	i32 1624863272, ; 69: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 81
	i32 1636350590, ; 70: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 46
	i32 1639515021, ; 71: System.Net.Http.dll => 0x61b9038d => 9
	i32 1639986890, ; 72: System.Text.RegularExpressions => 0x61c036ca => 98
	i32 1657153582, ; 73: System.Runtime => 0x62c6282e => 26
	i32 1658241508, ; 74: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 75
	i32 1658251792, ; 75: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 87
	i32 1670060433, ; 76: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 43
	i32 1726116996, ; 77: System.Reflection.dll => 0x66e27484 => 2
	i32 1729485958, ; 78: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 39
	i32 1746316138, ; 79: Mono.Android.Export => 0x6816ab6a => 14
	i32 1765942094, ; 80: System.Reflection.Extensions => 0x6942234e => 5
	i32 1766324549, ; 81: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 74
	i32 1776026572, ; 82: System.Core.dll => 0x69dc03cc => 22
	i32 1788241197, ; 83: Xamarin.AndroidX.Fragment => 0x6a96652d => 51
	i32 1798312337, ; 84: Syncfusion.SfGauge.XForms.dll => 0x6b301191 => 21
	i32 1808609942, ; 85: Xamarin.AndroidX.Loader => 0x6bcd3296 => 62
	i32 1813201214, ; 86: Xamarin.Google.Android.Material => 0x6c13413e => 87
	i32 1818569960, ; 87: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 68
	i32 1867746548, ; 88: Xamarin.Essentials.dll => 0x6f538cf4 => 82
	i32 1878053835, ; 89: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 86
	i32 1885316902, ; 90: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 36
	i32 1900610850, ; 91: System.Resources.ResourceManager.dll => 0x71490522 => 1
	i32 1919157823, ; 92: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 65
	i32 1935162657, ; 93: VoltPlusPlus => 0x73583d21 => 29
	i32 2019465201, ; 94: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 60
	i32 2055257422, ; 95: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 57
	i32 2079903147, ; 96: System.Runtime.dll => 0x7bf8cdab => 26
	i32 2090596640, ; 97: System.Numerics.Vectors => 0x7c9bf920 => 25
	i32 2097448633, ; 98: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 53
	i32 2101844382, ; 99: VoltPlusPlus.Android => 0x7d47999e => 0
	i32 2126786730, ; 100: Xamarin.Forms.Platform.Android => 0x7ec430aa => 84
	i32 2201231467, ; 101: System.Net.Http => 0x8334206b => 9
	i32 2217644978, ; 102: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 77
	i32 2244775296, ; 103: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 63
	i32 2256548716, ; 104: Xamarin.AndroidX.MultiDex => 0x8680336c => 65
	i32 2261435625, ; 105: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 55
	i32 2279755925, ; 106: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 71
	i32 2315684594, ; 107: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 31
	i32 2343171156, ; 108: Syncfusion.Core.XForms => 0x8ba9f454 => 17
	i32 2354730003, ; 109: Syncfusion.Licensing => 0x8c5a5413 => 18
	i32 2366525128, ; 110: VoltPlusPlus.dll => 0x8d0e4ec8 => 29
	i32 2409053734, ; 111: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 69
	i32 2454642406, ; 112: System.Text.Encoding.dll => 0x924edee6 => 6
	i32 2465532216, ; 113: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 42
	i32 2471841756, ; 114: netstandard.dll => 0x93554fdc => 90
	i32 2475788418, ; 115: Java.Interop.dll => 0x93918882 => 12
	i32 2501346920, ; 116: System.Data.DataSetExtensions => 0x95178668 => 93
	i32 2505896520, ; 117: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 59
	i32 2581819634, ; 118: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 78
	i32 2620871830, ; 119: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 46
	i32 2624644809, ; 120: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 50
	i32 2633051222, ; 121: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 58
	i32 2701096212, ; 122: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 75
	i32 2732626843, ; 123: Xamarin.AndroidX.Activity => 0xa2e0939b => 30
	i32 2737747696, ; 124: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 33
	i32 2766581644, ; 125: Xamarin.Forms.Core => 0xa4e6af8c => 83
	i32 2778768386, ; 126: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 80
	i32 2810250172, ; 127: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 44
	i32 2819470561, ; 128: System.Xml.dll => 0xa80db4e1 => 27
	i32 2853208004, ; 129: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 80
	i32 2855708567, ; 130: Xamarin.AndroidX.Transition => 0xaa36a797 => 76
	i32 2861098320, ; 131: Mono.Android.Export.dll => 0xaa88e550 => 14
	i32 2868557005, ; 132: Syncfusion.Licensing.dll => 0xaafab4cd => 18
	i32 2874148507, ; 133: Syncfusion.Core.XForms.Android => 0xab50069b => 16
	i32 2901442782, ; 134: System.Reflection => 0xacf080de => 2
	i32 2903344695, ; 135: System.ComponentModel.Composition => 0xad0d8637 => 96
	i32 2905242038, ; 136: mscorlib.dll => 0xad2a79b6 => 15
	i32 2916838712, ; 137: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 81
	i32 2919462931, ; 138: System.Numerics.Vectors.dll => 0xae037813 => 25
	i32 2921128767, ; 139: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 32
	i32 2978675010, ; 140: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 49
	i32 3021342700, ; 141: Syncfusion.SfGauge.Android => 0xb41607ec => 19
	i32 3024354802, ; 142: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 54
	i32 3044182254, ; 143: FormsViewGroup => 0xb57288ee => 11
	i32 3057625584, ; 144: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 66
	i32 3111772706, ; 145: System.Runtime.Serialization => 0xb979e222 => 10
	i32 3204380047, ; 146: System.Data.dll => 0xbefef58f => 91
	i32 3211777861, ; 147: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 48
	i32 3247949154, ; 148: Mono.Security => 0xc197c562 => 100
	i32 3258312781, ; 149: Xamarin.AndroidX.CardView => 0xc235e84d => 39
	i32 3267021929, ; 150: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 37
	i32 3299363146, ; 151: System.Text.Encoding => 0xc4a8494a => 6
	i32 3317135071, ; 152: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 47
	i32 3317144872, ; 153: System.Data => 0xc5b79d28 => 91
	i32 3338512932, ; 154: Syncfusion.SfGauge.XForms.Android.dll => 0xc6fdaa24 => 20
	i32 3340431453, ; 155: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 36
	i32 3346324047, ; 156: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 67
	i32 3353484488, ; 157: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 53
	i32 3362522851, ; 158: Xamarin.AndroidX.Core => 0xc86c06e3 => 45
	i32 3366347497, ; 159: Java.Interop => 0xc8a662e9 => 12
	i32 3374999561, ; 160: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 71
	i32 3404865022, ; 161: System.ServiceModel.Internals => 0xcaf21dfe => 89
	i32 3429136800, ; 162: System.Xml => 0xcc6479a0 => 27
	i32 3430777524, ; 163: netstandard => 0xcc7d82b4 => 90
	i32 3441283291, ; 164: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 50
	i32 3476120550, ; 165: Mono.Android => 0xcf3163e6 => 13
	i32 3486566296, ; 166: System.Transactions => 0xcfd0c798 => 92
	i32 3493954962, ; 167: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 41
	i32 3501239056, ; 168: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 37
	i32 3509114376, ; 169: System.Xml.Linq => 0xd128d608 => 28
	i32 3536029504, ; 170: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 84
	i32 3567349600, ; 171: System.ComponentModel.Composition.dll => 0xd4a16f60 => 96
	i32 3608519521, ; 172: System.Linq.dll => 0xd715a361 => 99
	i32 3618140916, ; 173: Xamarin.AndroidX.Preference => 0xd7a872f4 => 69
	i32 3627220390, ; 174: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 70
	i32 3632359727, ; 175: Xamarin.Forms.Platform => 0xd881692f => 85
	i32 3633644679, ; 176: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 32
	i32 3636014592, ; 177: Syncfusion.SfGauge.Android.dll => 0xd8b92e00 => 19
	i32 3641597786, ; 178: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 57
	i32 3672681054, ; 179: Mono.Android.dll => 0xdae8aa5e => 13
	i32 3676310014, ; 180: System.Web.Services.dll => 0xdb2009fe => 97
	i32 3682565725, ; 181: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 38
	i32 3684561358, ; 182: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 41
	i32 3689375977, ; 183: System.Drawing.Common => 0xdbe768e9 => 8
	i32 3718780102, ; 184: Xamarin.AndroidX.Annotation => 0xdda814c6 => 31
	i32 3724971120, ; 185: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 66
	i32 3758932259, ; 186: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 55
	i32 3786282454, ; 187: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 40
	i32 3822602673, ; 188: Xamarin.AndroidX.Media => 0xe3d849b1 => 64
	i32 3829621856, ; 189: System.Numerics.dll => 0xe4436460 => 24
	i32 3836070875, ; 190: Syncfusion.SfGauge.XForms.Android => 0xe4a5cbdb => 20
	i32 3885922214, ; 191: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 76
	i32 3896760992, ; 192: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 45
	i32 3920810846, ; 193: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 95
	i32 3921031405, ; 194: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 79
	i32 3931092270, ; 195: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 68
	i32 3945713374, ; 196: System.Data.DataSetExtensions.dll => 0xeb2ecede => 93
	i32 3955647286, ; 197: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 34
	i32 4105002889, ; 198: Mono.Security.dll => 0xf4ad5f89 => 100
	i32 4151237749, ; 199: System.Core => 0xf76edc75 => 22
	i32 4182413190, ; 200: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 61
	i32 4292120959 ; 201: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 61
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [202 x i32] [
	i32 59, i32 88, i32 83, i32 73, i32 73, i32 40, i32 74, i32 38, ; 0..7
	i32 54, i32 7, i32 97, i32 43, i32 58, i32 52, i32 30, i32 24, ; 8..15
	i32 56, i32 0, i32 42, i32 82, i32 3, i32 51, i32 15, i32 23, ; 16..23
	i32 52, i32 63, i32 92, i32 4, i32 95, i32 47, i32 79, i32 35, ; 24..31
	i32 28, i32 17, i32 94, i32 8, i32 70, i32 7, i32 88, i32 56, ; 32..39
	i32 11, i32 3, i32 72, i32 34, i32 85, i32 60, i32 23, i32 77, ; 40..47
	i32 67, i32 35, i32 78, i32 49, i32 99, i32 21, i32 89, i32 72, ; 48..55
	i32 1, i32 64, i32 44, i32 4, i32 86, i32 94, i32 33, i32 16, ; 56..63
	i32 98, i32 5, i32 48, i32 10, i32 62, i32 81, i32 46, i32 9, ; 64..71
	i32 98, i32 26, i32 75, i32 87, i32 43, i32 2, i32 39, i32 14, ; 72..79
	i32 5, i32 74, i32 22, i32 51, i32 21, i32 62, i32 87, i32 68, ; 80..87
	i32 82, i32 86, i32 36, i32 1, i32 65, i32 29, i32 60, i32 57, ; 88..95
	i32 26, i32 25, i32 53, i32 0, i32 84, i32 9, i32 77, i32 63, ; 96..103
	i32 65, i32 55, i32 71, i32 31, i32 17, i32 18, i32 29, i32 69, ; 104..111
	i32 6, i32 42, i32 90, i32 12, i32 93, i32 59, i32 78, i32 46, ; 112..119
	i32 50, i32 58, i32 75, i32 30, i32 33, i32 83, i32 80, i32 44, ; 120..127
	i32 27, i32 80, i32 76, i32 14, i32 18, i32 16, i32 2, i32 96, ; 128..135
	i32 15, i32 81, i32 25, i32 32, i32 49, i32 19, i32 54, i32 11, ; 136..143
	i32 66, i32 10, i32 91, i32 48, i32 100, i32 39, i32 37, i32 6, ; 144..151
	i32 47, i32 91, i32 20, i32 36, i32 67, i32 53, i32 45, i32 12, ; 152..159
	i32 71, i32 89, i32 27, i32 90, i32 50, i32 13, i32 92, i32 41, ; 160..167
	i32 37, i32 28, i32 84, i32 96, i32 99, i32 69, i32 70, i32 85, ; 168..175
	i32 32, i32 19, i32 57, i32 13, i32 97, i32 38, i32 41, i32 8, ; 176..183
	i32 31, i32 66, i32 55, i32 40, i32 64, i32 24, i32 20, i32 76, ; 184..191
	i32 45, i32 95, i32 79, i32 68, i32 93, i32 34, i32 100, i32 22, ; 192..199
	i32 61, i32 61 ; 200..201
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="all" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 797e2e13d1706ace607da43703769c5a55c4de60"}
!llvm.linker.options = !{}
