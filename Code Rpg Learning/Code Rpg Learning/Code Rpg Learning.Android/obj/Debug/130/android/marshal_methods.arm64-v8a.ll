; ModuleID = 'obj\Debug\130\android\marshal_methods.arm64-v8a.ll'
source_filename = "obj\Debug\130\android\marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android"


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
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 8
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [234 x i64] [
	i64 24362543149721218, ; 0: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 62
	i64 120698629574877762, ; 1: Mono.Android => 0x1accec39cafe242 => 13
	i64 201352437603278929, ; 2: Chessie => 0x2cb58f9a600a051 => 6
	i64 206513827429413929, ; 3: Mono.Cecil => 0x2ddaf3b5d22f429 => 14
	i64 210515253464952879, ; 4: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 52
	i64 232391251801502327, ; 5: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 84
	i64 295915112840604065, ; 6: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 85
	i64 634308326490598313, ; 7: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 71
	i64 702024105029695270, ; 8: System.Drawing.Common => 0x9be17343c0e7726 => 104
	i64 720058930071658100, ; 9: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 65
	i64 737318085524959015, ; 10: NuGet.Frameworks => 0xa3b7ae46e2faf27 => 22
	i64 872800313462103108, ; 11: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 61
	i64 940822596282819491, ; 12: System.Transactions => 0xd0e792aa81923a3 => 102
	i64 996343623809489702, ; 13: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 97
	i64 1000557547492888992, ; 14: Mono.Security.dll => 0xde2b1c9cba651a0 => 115
	i64 1120440138749646132, ; 15: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 99
	i64 1315114680217950157, ; 16: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 47
	i64 1425944114962822056, ; 17: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 5
	i64 1580831035586038082, ; 18: NuGet.Versioning.dll => 0x15f03d738604c942 => 24
	i64 1624659445732251991, ; 19: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 45
	i64 1628611045998245443, ; 20: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 73
	i64 1636321030536304333, ; 21: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 66
	i64 1731380447121279447, ; 22: Newtonsoft.Json => 0x18071957e9b889d7 => 19
	i64 1743969030606105336, ; 23: System.Memory.dll => 0x1833d297e88f2af8 => 30
	i64 1795316252682057001, ; 24: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 46
	i64 1823498441001825198, ; 25: Code Rpg Learning.dll => 0x194e5e2bb86473ae => 7
	i64 1836611346387731153, ; 26: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 84
	i64 1865037103900624886, ; 27: Microsoft.Bcl.AsyncInterfaces => 0x19e1f15d56eb87f6 => 12
	i64 1875917498431009007, ; 28: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 43
	i64 1934311462461267610, ; 29: Code Rpg Learning.Android => 0x1ad80e06d4f85e9a => 1
	i64 1981742497975770890, ; 30: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 72
	i64 2040001226662520565, ; 31: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 116
	i64 2133195048986300728, ; 32: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 19
	i64 2136356949452311481, ; 33: Xamarin.AndroidX.MultiDex.dll => 0x1da5dd539d8acbb9 => 77
	i64 2165725771938924357, ; 34: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 50
	i64 2262844636196693701, ; 35: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 61
	i64 2284400282711631002, ; 36: System.Web.Services => 0x1fb3d1f42fd4249a => 108
	i64 2329709569556905518, ; 37: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 69
	i64 2335503487726329082, ; 38: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 38
	i64 2337758774805907496, ; 39: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 35
	i64 2455121377850707897, ; 40: NuGet.Frameworks.dll => 0x221257e2a7424fb9 => 22
	i64 2470498323731680442, ; 41: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 56
	i64 2479423007379663237, ; 42: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 89
	i64 2497223385847772520, ; 43: System.Runtime => 0x22a7eb7046413568 => 36
	i64 2506370532552974399, ; 44: MaterialDesign.Icons.dll => 0x22c86ab85453a03f => 11
	i64 2547086958574651984, ; 45: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 42
	i64 2592350477072141967, ; 46: System.Xml.dll => 0x23f9e10627330e8f => 40
	i64 2624866290265602282, ; 47: mscorlib.dll => 0x246d65fbde2db8ea => 18
	i64 2631128381086276619, ; 48: Mono.Cecil.Rocks => 0x2483a55281189c0b => 17
	i64 2694427813909235223, ; 49: Xamarin.AndroidX.Preference.dll => 0x256487d230fe0617 => 81
	i64 2783046991838674048, ; 50: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 35
	i64 2960931600190307745, ; 51: Xamarin.Forms.Core => 0x2917579a49927da1 => 95
	i64 3017704767998173186, ; 52: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 99
	i64 3289520064315143713, ; 53: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 68
	i64 3303437397778967116, ; 54: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 44
	i64 3311221304742556517, ; 55: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 34
	i64 3325875462027654285, ; 56: System.Runtime.Numerics => 0x2e27e21c8958b48d => 111
	i64 3493805808809882663, ; 57: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 87
	i64 3522470458906976663, ; 58: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 86
	i64 3531994851595924923, ; 59: System.Numerics => 0x31042a9aade235bb => 33
	i64 3571415421602489686, ; 60: System.Runtime.dll => 0x319037675df7e556 => 36
	i64 3600082904159680844, ; 61: Mono.Cecil.Mdb => 0x31f61053c864f94c => 15
	i64 3716579019761409177, ; 62: netstandard.dll => 0x3393f0ed5c8c5c99 => 2
	i64 3727469159507183293, ; 63: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 83
	i64 3772598417116884899, ; 64: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 62
	i64 3829082055639616348, ; 65: Chessie.dll => 0x3523a1d79e38cb5c => 6
	i64 3966267475168208030, ; 66: System.Memory => 0x370b03412596249e => 30
	i64 4525561845656915374, ; 67: System.ServiceModel.Internals => 0x3ece06856b710dae => 109
	i64 4636684751163556186, ; 68: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 91
	i64 4782108999019072045, ; 69: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0x425d76cc43bb0a2d => 49
	i64 4794310189461587505, ; 70: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 42
	i64 4795410492532947900, ; 71: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 86
	i64 5081566143765835342, ; 72: System.Resources.ResourceManager.dll => 0x4685597c05d06e4e => 3
	i64 5099468265966638712, ; 73: System.Resources.ResourceManager => 0x46c4f35ea8519678 => 3
	i64 5142919913060024034, ; 74: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 96
	i64 5203618020066742981, ; 75: Xamarin.Essentials => 0x4836f704f0e652c5 => 94
	i64 5205316157927637098, ; 76: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 75
	i64 5348796042099802469, ; 77: Xamarin.AndroidX.Media => 0x4a3abda9415fc165 => 76
	i64 5376510917114486089, ; 78: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 89
	i64 5408338804355907810, ; 79: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 88
	i64 5446034149219586269, ; 80: System.Diagnostics.Debug => 0x4b94333452e150dd => 4
	i64 5451019430259338467, ; 81: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 55
	i64 5507995362134886206, ; 82: System.Core.dll => 0x4c705499688c873e => 27
	i64 5692067934154308417, ; 83: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 93
	i64 5717718751406333486, ; 84: NuGet.Configuration => 0x4f596ae91f2a1e2e => 21
	i64 5727578611269242493, ; 85: FSharp.Core => 0x4f7c7266a3d40e7d => 9
	i64 5757522595884336624, ; 86: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 53
	i64 5814345312393086621, ; 87: Xamarin.AndroidX.Preference => 0x50b0b44182a5c69d => 81
	i64 5896680224035167651, ; 88: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 70
	i64 5979151488806146654, ; 89: System.Formats.Asn1 => 0x52fa3699a489d25e => 29
	i64 6041598200019994407, ; 90: Paket.Core.dll => 0x53d8118d9bd4c727 => 25
	i64 6085203216496545422, ; 91: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 97
	i64 6086316965293125504, ; 92: FormsViewGroup.dll => 0x5476f10882baef80 => 8
	i64 6222399776351216807, ; 93: System.Text.Json.dll => 0x565a67a0ffe264a7 => 39
	i64 6319713645133255417, ; 94: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 71
	i64 6401687960814735282, ; 95: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 69
	i64 6504860066809920875, ; 96: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 50
	i64 6515511883786689899, ; 97: System.Net.Http.WinHttpHandler => 0x5a6bbf89a2f11d6b => 32
	i64 6548213210057960872, ; 98: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 59
	i64 6584419190991186517, ; 99: NuGet.Versioning => 0x5b608e5e534b6a55 => 24
	i64 6591024623626361694, ; 100: System.Web.Services.dll => 0x5b7805f9751a1b5e => 108
	i64 6659513131007730089, ; 101: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 65
	i64 6876862101832370452, ; 102: System.Xml.Linq => 0x5f6f85a57d108914 => 41
	i64 6894844156784520562, ; 103: System.Numerics.Vectors => 0x5faf683aead1ad72 => 34
	i64 6903020194447737924, ; 104: FSharp.Core.resources => 0x5fcc744b0767c444 => 0
	i64 7036436454368433159, ; 105: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x61a671acb33d5407 => 67
	i64 7103753931438454322, ; 106: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 64
	i64 7105430439328552570, ; 107: System.Security.Cryptography.Pkcs => 0x629b8f56a06d167a => 37
	i64 7148515934569711863, ; 108: NuGet.Packaging.dll => 0x6334a15e373f48f7 => 23
	i64 7259815123866229707, ; 109: FSharp.Core.resources.dll => 0x64c00b64190e1bcb => 0
	i64 7488575175965059935, ; 110: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 41
	i64 7635363394907363464, ; 111: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 95
	i64 7637365915383206639, ; 112: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 94
	i64 7654504624184590948, ; 113: System.Net.Http => 0x6a3a4366801b8264 => 31
	i64 7820441508502274321, ; 114: System.Data => 0x6c87ca1e14ff8111 => 101
	i64 7836164640616011524, ; 115: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 45
	i64 7984531444887876283, ; 116: Code Rpg Learning => 0x6ecec10b967a72bb => 7
	i64 8000120612994485141, ; 117: MaterialDesign.Icons => 0x6f06234fa1d10b95 => 11
	i64 8044118961405839122, ; 118: System.ComponentModel.Composition => 0x6fa2739369944712 => 107
	i64 8083354569033831015, ; 119: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 68
	i64 8103644804370223335, ; 120: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 103
	i64 8167236081217502503, ; 121: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 10
	i64 8290740647658429042, ; 122: System.Runtime.Extensions => 0x730ea0b15c929a72 => 110
	i64 8398329775253868912, ; 123: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 54
	i64 8400357532724379117, ; 124: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 80
	i64 8490820071440741817, ; 125: NuGet.Packaging => 0x75d573de61fb75b9 => 23
	i64 8601935802264776013, ; 126: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 88
	i64 8626175481042262068, ; 127: Java.Interop => 0x77b654e585b55834 => 10
	i64 8627021099885319007, ; 128: Paket.Core => 0x77b955fb8076d35f => 25
	i64 8639588376636138208, ; 129: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 79
	i64 8684531736582871431, ; 130: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 106
	i64 8736225086734201289, ; 131: Mono.Cecil.Pdb => 0x793d4e6e0ca5f1c9 => 16
	i64 9312692141327339315, ; 132: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 93
	i64 9324707631942237306, ; 133: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 46
	i64 9662334977499516867, ; 134: System.Numerics.dll => 0x8617827802b0cfc3 => 33
	i64 9678050649315576968, ; 135: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 56
	i64 9711637524876806384, ; 136: Xamarin.AndroidX.Media.dll => 0x86c6aadfd9a2c8f0 => 76
	i64 9714660051798563916, ; 137: System.Net.Http.WinHttpHandler.dll => 0x86d167d8bd219c4c => 32
	i64 9808709177481450983, ; 138: Mono.Android.dll => 0x881f890734e555e7 => 13
	i64 9825649861376906464, ; 139: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 53
	i64 9834056768316610435, ; 140: System.Transactions.dll => 0x8879968718899783 => 102
	i64 9998632235833408227, ; 141: Mono.Security => 0x8ac2470b209ebae3 => 115
	i64 10038780035334861115, ; 142: System.Net.Http.dll => 0x8b50e941206af13b => 31
	i64 10229024438826829339, ; 143: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 59
	i64 10298850951283880123, ; 144: Mono.Cecil.dll => 0x8eecde5fe1f830bb => 14
	i64 10376576884623852283, ; 145: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 87
	i64 10430153318873392755, ; 146: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 57
	i64 10447083246144586668, ; 147: Microsoft.Bcl.AsyncInterfaces.dll => 0x90fb7edc816203ac => 12
	i64 10714184849103829812, ; 148: System.Runtime.Extensions.dll => 0x94b06e5aa4b4bb34 => 110
	i64 10847732767863316357, ; 149: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 47
	i64 11023048688141570732, ; 150: System.Core => 0x98f9bc61168392ac => 27
	i64 11037814507248023548, ; 151: System.Xml => 0x992e31d0412bf7fc => 40
	i64 11162124722117608902, ; 152: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 92
	i64 11340910727871153756, ; 153: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 58
	i64 11392833485892708388, ; 154: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 82
	i64 11529969570048099689, ; 155: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 92
	i64 11578238080964724296, ; 156: Xamarin.AndroidX.Legacy.Support.V4 => 0xa0ae2a30c4cd8648 => 67
	i64 11580057168383206117, ; 157: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 43
	i64 11597940890313164233, ; 158: netstandard => 0xa0f429ca8d1805c9 => 2
	i64 11672361001936329215, ; 159: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 64
	i64 12011556116648931059, ; 160: System.Security.Cryptography.ProtectedData => 0xa6b19ea5ec87aef3 => 112
	i64 12063623837170009990, ; 161: System.Security => 0xa76a99f6ce740786 => 113
	i64 12102847907131387746, ; 162: System.Buffers => 0xa7f5f40c43256f62 => 26
	i64 12137774235383566651, ; 163: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 90
	i64 12145679461940342714, ; 164: System.Text.Json => 0xa88e1f1ebcb62fba => 39
	i64 12451044538927396471, ; 165: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 63
	i64 12466513435562512481, ; 166: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 74
	i64 12487638416075308985, ; 167: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 60
	i64 12538491095302438457, ; 168: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 51
	i64 12550732019250633519, ; 169: System.IO.Compression => 0xae2d28465e8e1b2f => 105
	i64 12642812704847608890, ; 170: Mono.Cecil.Pdb.dll => 0xaf744b2baa3cbc3a => 16
	i64 12690486463116955105, ; 171: NuGet.Configuration.dll => 0xb01daa337cfd4de1 => 21
	i64 12700543734426720211, ; 172: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 52
	i64 12963446364377008305, ; 173: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 104
	i64 13238297106071951563, ; 174: Code Rpg Learning.Android.dll => 0xb7b7e114168018cb => 1
	i64 13252883958002779332, ; 175: NuGet.Common.dll => 0xb7ebb3be363a84c4 => 20
	i64 13370592475155966277, ; 176: System.Runtime.Serialization => 0xb98de304062ea945 => 5
	i64 13401370062847626945, ; 177: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 90
	i64 13404347523447273790, ; 178: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 54
	i64 13454009404024712428, ; 179: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 100
	i64 13491513212026656886, ; 180: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 48
	i64 13572454107664307259, ; 181: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 83
	i64 13647894001087880694, ; 182: System.Data.dll => 0xbd670f48cb071df6 => 101
	i64 13959074834287824816, ; 183: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 63
	i64 13967638549803255703, ; 184: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 96
	i64 14124974489674258913, ; 185: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 51
	i64 14172845254133543601, ; 186: Xamarin.AndroidX.MultiDex => 0xc4b00faaed35f2b1 => 77
	i64 14212104595480609394, ; 187: System.Security.Cryptography.Cng.dll => 0xc53b89d4a4518272 => 114
	i64 14261073672896646636, ; 188: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 82
	i64 14458992049617552198, ; 189: Mono.Cecil.Rocks.dll => 0xc8a8a8a97fa6c346 => 17
	i64 14486659737292545672, ; 190: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 70
	i64 14551742072151931844, ; 191: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 38
	i64 14644440854989303794, ; 192: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 75
	i64 14792063746108907174, ; 193: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 100
	i64 14852515768018889994, ; 194: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 58
	i64 14987728460634540364, ; 195: System.IO.Compression.dll => 0xcfff1ba06622494c => 105
	i64 14988210264188246988, ; 196: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 60
	i64 15370334346939861994, ; 197: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 57
	i64 15582737692548360875, ; 198: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 73
	i64 15609085926864131306, ; 199: System.dll => 0xd89e9cf3334914ea => 28
	i64 15777549416145007739, ; 200: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 85
	i64 15810740023422282496, ; 201: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 98
	i64 15937190497610202713, ; 202: System.Security.Cryptography.Cng => 0xdd2c465197c97e59 => 114
	i64 15963349826457351533, ; 203: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 116
	i64 16154507427712707110, ; 204: System => 0xe03056ea4e39aa26 => 28
	i64 16533548349183570019, ; 205: NuGet.Common => 0xe572f6a005d53063 => 20
	i64 16565028646146589191, ; 206: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 107
	i64 16621146507174665210, ; 207: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 55
	i64 16677317093839702854, ; 208: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 80
	i64 16822611501064131242, ; 209: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 103
	i64 16833383113903931215, ; 210: mscorlib => 0xe99c30c1484d7f4f => 18
	i64 17024911836938395553, ; 211: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 44
	i64 17031351772568316411, ; 212: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 78
	i64 17037200463775726619, ; 213: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 66
	i64 17093861494148505353, ; 214: FSharp.Core.dll => 0xed39987636731f09 => 9
	i64 17523946658117960076, ; 215: System.Security.Cryptography.ProtectedData.dll => 0xf33190a3c403c18c => 112
	i64 17544493274320527064, ; 216: Xamarin.AndroidX.AsyncLayoutInflater => 0xf37a8fada41aded8 => 49
	i64 17685921127322830888, ; 217: System.Diagnostics.Debug.dll => 0xf571038fafa74828 => 4
	i64 17704177640604968747, ; 218: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 74
	i64 17710060891934109755, ; 219: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 72
	i64 17777860260071588075, ; 220: System.Runtime.Numerics.dll => 0xf6b7a5b72419c0eb => 111
	i64 17838668724098252521, ; 221: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 26
	i64 17882897186074144999, ; 222: FormsViewGroup => 0xf82cd03e3ac830e7 => 8
	i64 17892495832318972303, ; 223: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 98
	i64 17928294245072900555, ; 224: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 106
	i64 18116111925905154859, ; 225: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 48
	i64 18121036031235206392, ; 226: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 78
	i64 18129453464017766560, ; 227: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 109
	i64 18146411883821974900, ; 228: System.Formats.Asn1.dll => 0xfbd50176eb22c574 => 29
	i64 18203743254473369877, ; 229: System.Security.Cryptography.Pkcs.dll => 0xfca0b00ad94c6915 => 37
	i64 18305135509493619199, ; 230: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 79
	i64 18318849532986632368, ; 231: System.Security.dll => 0xfe39a097c37fa8b0 => 113
	i64 18347869166072228731, ; 232: Mono.Cecil.Mdb.dll => 0xfea0b9cb9d13eb7b => 15
	i64 18380184030268848184 ; 233: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 91
], align 8
@assembly_image_cache_indices = local_unnamed_addr constant [234 x i32] [
	i32 62, i32 13, i32 6, i32 14, i32 52, i32 84, i32 85, i32 71, ; 0..7
	i32 104, i32 65, i32 22, i32 61, i32 102, i32 97, i32 115, i32 99, ; 8..15
	i32 47, i32 5, i32 24, i32 45, i32 73, i32 66, i32 19, i32 30, ; 16..23
	i32 46, i32 7, i32 84, i32 12, i32 43, i32 1, i32 72, i32 116, ; 24..31
	i32 19, i32 77, i32 50, i32 61, i32 108, i32 69, i32 38, i32 35, ; 32..39
	i32 22, i32 56, i32 89, i32 36, i32 11, i32 42, i32 40, i32 18, ; 40..47
	i32 17, i32 81, i32 35, i32 95, i32 99, i32 68, i32 44, i32 34, ; 48..55
	i32 111, i32 87, i32 86, i32 33, i32 36, i32 15, i32 2, i32 83, ; 56..63
	i32 62, i32 6, i32 30, i32 109, i32 91, i32 49, i32 42, i32 86, ; 64..71
	i32 3, i32 3, i32 96, i32 94, i32 75, i32 76, i32 89, i32 88, ; 72..79
	i32 4, i32 55, i32 27, i32 93, i32 21, i32 9, i32 53, i32 81, ; 80..87
	i32 70, i32 29, i32 25, i32 97, i32 8, i32 39, i32 71, i32 69, ; 88..95
	i32 50, i32 32, i32 59, i32 24, i32 108, i32 65, i32 41, i32 34, ; 96..103
	i32 0, i32 67, i32 64, i32 37, i32 23, i32 0, i32 41, i32 95, ; 104..111
	i32 94, i32 31, i32 101, i32 45, i32 7, i32 11, i32 107, i32 68, ; 112..119
	i32 103, i32 10, i32 110, i32 54, i32 80, i32 23, i32 88, i32 10, ; 120..127
	i32 25, i32 79, i32 106, i32 16, i32 93, i32 46, i32 33, i32 56, ; 128..135
	i32 76, i32 32, i32 13, i32 53, i32 102, i32 115, i32 31, i32 59, ; 136..143
	i32 14, i32 87, i32 57, i32 12, i32 110, i32 47, i32 27, i32 40, ; 144..151
	i32 92, i32 58, i32 82, i32 92, i32 67, i32 43, i32 2, i32 64, ; 152..159
	i32 112, i32 113, i32 26, i32 90, i32 39, i32 63, i32 74, i32 60, ; 160..167
	i32 51, i32 105, i32 16, i32 21, i32 52, i32 104, i32 1, i32 20, ; 168..175
	i32 5, i32 90, i32 54, i32 100, i32 48, i32 83, i32 101, i32 63, ; 176..183
	i32 96, i32 51, i32 77, i32 114, i32 82, i32 17, i32 70, i32 38, ; 184..191
	i32 75, i32 100, i32 58, i32 105, i32 60, i32 57, i32 73, i32 28, ; 192..199
	i32 85, i32 98, i32 114, i32 116, i32 28, i32 20, i32 107, i32 55, ; 200..207
	i32 80, i32 103, i32 18, i32 44, i32 78, i32 66, i32 9, i32 112, ; 208..215
	i32 49, i32 4, i32 74, i32 72, i32 111, i32 26, i32 8, i32 98, ; 216..223
	i32 106, i32 48, i32 78, i32 109, i32 29, i32 37, i32 79, i32 113, ; 224..231
	i32 15, i32 91 ; 232..233
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="non-leaf" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 8
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 8
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"branch-target-enforcement", i32 0}
!3 = !{i32 1, !"sign-return-address", i32 0}
!4 = !{i32 1, !"sign-return-address-all", i32 0}
!5 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!6 = !{!"Xamarin.Android remotes/origin/d17-5 @ a8a26c7b003e2524cc98acb2c2ffc2ddea0f6692"}
!llvm.linker.options = !{}
