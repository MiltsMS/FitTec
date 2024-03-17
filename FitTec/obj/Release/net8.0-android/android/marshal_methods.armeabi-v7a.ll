; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [125 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [250 x i32] [
	i32 38948123, ; 0: ar\Microsoft.Maui.Controls.resources.dll => 0x2524d1b => 0
	i32 42244203, ; 1: he\Microsoft.Maui.Controls.resources.dll => 0x284986b => 9
	i32 42639949, ; 2: System.Threading.Thread => 0x28aa24d => 115
	i32 67008169, ; 3: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 33
	i32 72070932, ; 4: Microsoft.Maui.Graphics.dll => 0x44bb714 => 51
	i32 83839681, ; 5: ms\Microsoft.Maui.Controls.resources.dll => 0x4ff4ac1 => 17
	i32 117431740, ; 6: System.Runtime.InteropServices => 0x6ffddbc => 110
	i32 136584136, ; 7: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0x8241bc8 => 32
	i32 140062828, ; 8: sk\Microsoft.Maui.Controls.resources.dll => 0x859306c => 25
	i32 165246403, ; 9: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 61
	i32 182336117, ; 10: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 79
	i32 205061960, ; 11: System.ComponentModel => 0xc38ff48 => 92
	i32 317674968, ; 12: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 30
	i32 318968648, ; 13: Xamarin.AndroidX.Activity.dll => 0x13031348 => 57
	i32 321963286, ; 14: fr\Microsoft.Maui.Controls.resources.dll => 0x1330c516 => 8
	i32 342366114, ; 15: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 68
	i32 347068432, ; 16: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 55
	i32 379916513, ; 17: System.Threading.Thread.dll => 0x16a510e1 => 115
	i32 385762202, ; 18: System.Memory.dll => 0x16fe439a => 100
	i32 395744057, ; 19: _Microsoft.Android.Resource.Designer => 0x17969339 => 34
	i32 409257351, ; 20: tr\Microsoft.Maui.Controls.resources.dll => 0x1864c587 => 28
	i32 442565967, ; 21: System.Collections => 0x1a61054f => 89
	i32 450948140, ; 22: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 67
	i32 456227837, ; 23: System.Web.HttpUtility.dll => 0x1b317bfd => 117
	i32 469710990, ; 24: System.dll => 0x1bff388e => 119
	i32 489220957, ; 25: es\Microsoft.Maui.Controls.resources.dll => 0x1d28eb5d => 6
	i32 498788369, ; 26: System.ObjectModel => 0x1dbae811 => 106
	i32 513247710, ; 27: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 45
	i32 538707440, ; 28: th\Microsoft.Maui.Controls.resources.dll => 0x201c05f0 => 27
	i32 539058512, ; 29: Microsoft.Extensions.Logging => 0x20216150 => 42
	i32 597488923, ; 30: CommunityToolkit.Maui => 0x239cf51b => 35
	i32 627609679, ; 31: Xamarin.AndroidX.CustomView => 0x2568904f => 65
	i32 627931235, ; 32: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 19
	i32 672442732, ; 33: System.Collections.Concurrent => 0x2814a96c => 86
	i32 722857257, ; 34: System.Runtime.Loader.dll => 0x2b15ed29 => 111
	i32 748832960, ; 35: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 53
	i32 759454413, ; 36: System.Net.Requests => 0x2d445acd => 104
	i32 775507847, ; 37: System.IO.Compression => 0x2e394f87 => 97
	i32 777317022, ; 38: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 25
	i32 789151979, ; 39: Microsoft.Extensions.Options => 0x2f0980eb => 44
	i32 823281589, ; 40: System.Private.Uri.dll => 0x311247b5 => 107
	i32 830298997, ; 41: System.IO.Compression.Brotli => 0x317d5b75 => 96
	i32 869139383, ; 42: hi\Microsoft.Maui.Controls.resources.dll => 0x33ce03b7 => 10
	i32 880668424, ; 43: ru\Microsoft.Maui.Controls.resources.dll => 0x347def08 => 24
	i32 904024072, ; 44: System.ComponentModel.Primitives.dll => 0x35e25008 => 90
	i32 918734561, ; 45: pt-BR\Microsoft.Maui.Controls.resources.dll => 0x36c2c6e1 => 21
	i32 961460050, ; 46: it\Microsoft.Maui.Controls.resources.dll => 0x394eb752 => 14
	i32 967690846, ; 47: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 68
	i32 990727110, ; 48: ro\Microsoft.Maui.Controls.resources.dll => 0x3b0d4bc6 => 23
	i32 992768348, ; 49: System.Collections.dll => 0x3b2c715c => 89
	i32 1012816738, ; 50: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 78
	i32 1028951442, ; 51: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 41
	i32 1035644815, ; 52: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 58
	i32 1043950537, ; 53: de\Microsoft.Maui.Controls.resources.dll => 0x3e396bc9 => 4
	i32 1044663988, ; 54: System.Linq.Expressions.dll => 0x3e444eb4 => 98
	i32 1052210849, ; 55: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 70
	i32 1082857460, ; 56: System.ComponentModel.TypeConverter => 0x408b17f4 => 91
	i32 1084122840, ; 57: Xamarin.Kotlin.StdLib => 0x409e66d8 => 83
	i32 1098259244, ; 58: System => 0x41761b2c => 119
	i32 1108272742, ; 59: sv\Microsoft.Maui.Controls.resources.dll => 0x420ee666 => 26
	i32 1117529484, ; 60: pl\Microsoft.Maui.Controls.resources.dll => 0x429c258c => 20
	i32 1118262833, ; 61: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 16
	i32 1168523401, ; 62: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 22
	i32 1178241025, ; 63: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 75
	i32 1214827643, ; 64: CommunityToolkit.Mvvm => 0x4868cc7b => 37
	i32 1260983243, ; 65: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 2
	i32 1292207520, ; 66: SQLitePCLRaw.core.dll => 0x4d0585a0 => 54
	i32 1293217323, ; 67: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 66
	i32 1308624726, ; 68: hr\Microsoft.Maui.Controls.resources.dll => 0x4e000756 => 11
	i32 1324164729, ; 69: System.Linq => 0x4eed2679 => 99
	i32 1336711579, ; 70: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x4fac999b => 31
	i32 1372906011, ; 71: FitTec.dll => 0x51d4e21b => 85
	i32 1373134921, ; 72: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 32
	i32 1376866003, ; 73: Xamarin.AndroidX.SavedState => 0x52114ed3 => 78
	i32 1406073936, ; 74: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 62
	i32 1430672901, ; 75: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 0
	i32 1461004990, ; 76: es\Microsoft.Maui.Controls.resources => 0x57152abe => 6
	i32 1461234159, ; 77: System.Collections.Immutable.dll => 0x5718a9ef => 87
	i32 1462112819, ; 78: System.IO.Compression.dll => 0x57261233 => 97
	i32 1469204771, ; 79: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 59
	i32 1470490898, ; 80: Microsoft.Extensions.Primitives => 0x57a5e912 => 45
	i32 1479771757, ; 81: System.Collections.Immutable => 0x5833866d => 87
	i32 1480492111, ; 82: System.IO.Compression.Brotli.dll => 0x583e844f => 96
	i32 1526286932, ; 83: vi\Microsoft.Maui.Controls.resources.dll => 0x5af94a54 => 30
	i32 1543031311, ; 84: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 114
	i32 1622152042, ; 85: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 72
	i32 1624863272, ; 86: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 81
	i32 1634654947, ; 87: CommunityToolkit.Maui.Core.dll => 0x616edae3 => 36
	i32 1636350590, ; 88: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 64
	i32 1639515021, ; 89: System.Net.Http.dll => 0x61b9038d => 101
	i32 1639986890, ; 90: System.Text.RegularExpressions => 0x61c036ca => 114
	i32 1657153582, ; 91: System.Runtime => 0x62c6282e => 112
	i32 1658251792, ; 92: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 82
	i32 1677501392, ; 93: System.Net.Primitives.dll => 0x63fca3d0 => 103
	i32 1679769178, ; 94: System.Security.Cryptography => 0x641f3e5a => 113
	i32 1711441057, ; 95: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 55
	i32 1729485958, ; 96: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 60
	i32 1743415430, ; 97: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 1
	i32 1763938596, ; 98: System.Diagnostics.TraceSource.dll => 0x69239124 => 95
	i32 1766324549, ; 99: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 79
	i32 1770582343, ; 100: Microsoft.Extensions.Logging.dll => 0x6988f147 => 42
	i32 1780572499, ; 101: Mono.Android.Runtime.dll => 0x6a216153 => 123
	i32 1782862114, ; 102: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 17
	i32 1788241197, ; 103: Xamarin.AndroidX.Fragment => 0x6a96652d => 67
	i32 1793755602, ; 104: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 9
	i32 1808609942, ; 105: Xamarin.AndroidX.Loader => 0x6bcd3296 => 72
	i32 1813058853, ; 106: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 83
	i32 1813201214, ; 107: Xamarin.Google.Android.Material => 0x6c13413e => 82
	i32 1818569960, ; 108: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 76
	i32 1828688058, ; 109: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 43
	i32 1853025655, ; 110: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 26
	i32 1858542181, ; 111: System.Linq.Expressions => 0x6ec71a65 => 98
	i32 1875935024, ; 112: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 8
	i32 1893218855, ; 113: cs\Microsoft.Maui.Controls.resources.dll => 0x70d83a27 => 2
	i32 1910275211, ; 114: System.Collections.NonGeneric.dll => 0x71dc7c8b => 88
	i32 1953182387, ; 115: id\Microsoft.Maui.Controls.resources.dll => 0x746b32b3 => 13
	i32 1968388702, ; 116: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 38
	i32 2003115576, ; 117: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 5
	i32 2019465201, ; 118: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 70
	i32 2045470958, ; 119: System.Private.Xml => 0x79eb68ee => 108
	i32 2055257422, ; 120: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 69
	i32 2066184531, ; 121: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 4
	i32 2070888862, ; 122: System.Diagnostics.TraceSource => 0x7b6f419e => 95
	i32 2079903147, ; 123: System.Runtime.dll => 0x7bf8cdab => 112
	i32 2090596640, ; 124: System.Numerics.Vectors => 0x7c9bf920 => 105
	i32 2103459038, ; 125: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 56
	i32 2127167465, ; 126: System.Console => 0x7ec9ffe9 => 93
	i32 2159891885, ; 127: Microsoft.Maui => 0x80bd55ad => 49
	i32 2169148018, ; 128: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 12
	i32 2181898931, ; 129: Microsoft.Extensions.Options.dll => 0x820d22b3 => 44
	i32 2192057212, ; 130: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 43
	i32 2193016926, ; 131: System.ObjectModel.dll => 0x82b6c85e => 106
	i32 2201107256, ; 132: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 84
	i32 2201231467, ; 133: System.Net.Http => 0x8334206b => 101
	i32 2207618523, ; 134: it\Microsoft.Maui.Controls.resources => 0x839595db => 14
	i32 2266799131, ; 135: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 39
	i32 2279755925, ; 136: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 77
	i32 2298471582, ; 137: System.Net.Mail => 0x88ffe49e => 102
	i32 2303942373, ; 138: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 18
	i32 2305521784, ; 139: System.Private.CoreLib.dll => 0x896b7878 => 121
	i32 2340441535, ; 140: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 109
	i32 2353062107, ; 141: System.Net.Primitives => 0x8c40e0db => 103
	i32 2366048013, ; 142: hu\Microsoft.Maui.Controls.resources.dll => 0x8d07070d => 12
	i32 2368005991, ; 143: System.Xml.ReaderWriter.dll => 0x8d24e767 => 118
	i32 2371007202, ; 144: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 38
	i32 2395872292, ; 145: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 13
	i32 2401565422, ; 146: System.Web.HttpUtility => 0x8f24faee => 117
	i32 2427813419, ; 147: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 10
	i32 2435356389, ; 148: System.Console.dll => 0x912896e5 => 93
	i32 2465273461, ; 149: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 53
	i32 2471841756, ; 150: netstandard.dll => 0x93554fdc => 120
	i32 2475788418, ; 151: Java.Interop.dll => 0x93918882 => 122
	i32 2480646305, ; 152: Microsoft.Maui.Controls => 0x93dba8a1 => 47
	i32 2503351294, ; 153: ko\Microsoft.Maui.Controls.resources.dll => 0x95361bfe => 16
	i32 2550873716, ; 154: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 11
	i32 2576534780, ; 155: ja\Microsoft.Maui.Controls.resources.dll => 0x9992ccfc => 15
	i32 2593496499, ; 156: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 20
	i32 2605712449, ; 157: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 84
	i32 2617129537, ; 158: System.Private.Xml.dll => 0x9bfe3a41 => 108
	i32 2620871830, ; 159: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 64
	i32 2626831493, ; 160: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 15
	i32 2663698177, ; 161: System.Runtime.Loader => 0x9ec4cf01 => 111
	i32 2732626843, ; 162: Xamarin.AndroidX.Activity => 0xa2e0939b => 57
	i32 2737747696, ; 163: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 59
	i32 2740698338, ; 164: ca\Microsoft.Maui.Controls.resources.dll => 0xa35bbce2 => 1
	i32 2752995522, ; 165: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 21
	i32 2758225723, ; 166: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 48
	i32 2764765095, ; 167: Microsoft.Maui.dll => 0xa4caf7a7 => 49
	i32 2778768386, ; 168: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 80
	i32 2785988530, ; 169: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 27
	i32 2801831435, ; 170: Microsoft.Maui.Graphics => 0xa7008e0b => 51
	i32 2810250172, ; 171: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 62
	i32 2853208004, ; 172: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 80
	i32 2861189240, ; 173: Microsoft.Maui.Essentials => 0xaa8a4878 => 50
	i32 2868488919, ; 174: CommunityToolkit.Maui.Core => 0xaaf9aad7 => 36
	i32 2909740682, ; 175: System.Private.CoreLib => 0xad6f1e8a => 121
	i32 2916838712, ; 176: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 81
	i32 2919462931, ; 177: System.Numerics.Vectors.dll => 0xae037813 => 105
	i32 2959614098, ; 178: System.ComponentModel.dll => 0xb0682092 => 92
	i32 2978675010, ; 179: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 66
	i32 3038032645, ; 180: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 34
	i32 3053864966, ; 181: fi\Microsoft.Maui.Controls.resources.dll => 0xb6064806 => 7
	i32 3057625584, ; 182: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 73
	i32 3059408633, ; 183: Mono.Android.Runtime => 0xb65adef9 => 123
	i32 3059793426, ; 184: System.ComponentModel.Primitives => 0xb660be12 => 90
	i32 3178803400, ; 185: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 74
	i32 3220365878, ; 186: System.Threading => 0xbff2e236 => 116
	i32 3258312781, ; 187: Xamarin.AndroidX.CardView => 0xc235e84d => 60
	i32 3286872994, ; 188: SQLite-net.dll => 0xc3e9b3a2 => 52
	i32 3305363605, ; 189: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 7
	i32 3316684772, ; 190: System.Net.Requests.dll => 0xc5b097e4 => 104
	i32 3317135071, ; 191: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 65
	i32 3346324047, ; 192: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 75
	i32 3357674450, ; 193: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 24
	i32 3360279109, ; 194: SQLitePCLRaw.core => 0xc849ca45 => 54
	i32 3362522851, ; 195: Xamarin.AndroidX.Core => 0xc86c06e3 => 63
	i32 3366347497, ; 196: Java.Interop => 0xc8a662e9 => 122
	i32 3374999561, ; 197: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 77
	i32 3381016424, ; 198: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 3
	i32 3428513518, ; 199: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 40
	i32 3430777524, ; 200: netstandard => 0xcc7d82b4 => 120
	i32 3452344032, ; 201: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 46
	i32 3458724246, ; 202: pt\Microsoft.Maui.Controls.resources.dll => 0xce27f196 => 22
	i32 3471940407, ; 203: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 91
	i32 3476120550, ; 204: Mono.Android => 0xcf3163e6 => 124
	i32 3484440000, ; 205: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 23
	i32 3580758918, ; 206: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 31
	i32 3592228221, ; 207: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0xd61d0d7d => 33
	i32 3608519521, ; 208: System.Linq.dll => 0xd715a361 => 99
	i32 3624195450, ; 209: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 109
	i32 3641597786, ; 210: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 69
	i32 3643446276, ; 211: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 28
	i32 3643854240, ; 212: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 74
	i32 3657292374, ; 213: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 39
	i32 3672681054, ; 214: Mono.Android.dll => 0xdae8aa5e => 124
	i32 3724971120, ; 215: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 73
	i32 3748608112, ; 216: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 94
	i32 3751619990, ; 217: da\Microsoft.Maui.Controls.resources.dll => 0xdf9d2d96 => 3
	i32 3754567612, ; 218: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 56
	i32 3786282454, ; 219: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 61
	i32 3792276235, ; 220: System.Collections.NonGeneric => 0xe2098b0b => 88
	i32 3800979733, ; 221: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 46
	i32 3817368567, ; 222: CommunityToolkit.Maui.dll => 0xe3886bf7 => 35
	i32 3823082795, ; 223: System.Security.Cryptography.dll => 0xe3df9d2b => 113
	i32 3841636137, ; 224: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 41
	i32 3844307129, ; 225: System.Net.Mail.dll => 0xe52378b9 => 102
	i32 3849253459, ; 226: System.Runtime.InteropServices.dll => 0xe56ef253 => 110
	i32 3876362041, ; 227: SQLite-net => 0xe70c9739 => 52
	i32 3896106733, ; 228: System.Collections.Concurrent.dll => 0xe839deed => 86
	i32 3896760992, ; 229: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 63
	i32 3920221145, ; 230: nl\Microsoft.Maui.Controls.resources.dll => 0xe9a9d3d9 => 19
	i32 3928044579, ; 231: System.Xml.ReaderWriter => 0xea213423 => 118
	i32 3931092270, ; 232: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 76
	i32 3955647286, ; 233: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 58
	i32 4025784931, ; 234: System.Memory => 0xeff49a63 => 100
	i32 4046471985, ; 235: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 48
	i32 4073602200, ; 236: System.Threading.dll => 0xf2ce3c98 => 116
	i32 4091086043, ; 237: el\Microsoft.Maui.Controls.resources.dll => 0xf3d904db => 5
	i32 4094352644, ; 238: Microsoft.Maui.Essentials.dll => 0xf40add04 => 50
	i32 4100113165, ; 239: System.Private.Uri => 0xf462c30d => 107
	i32 4103439459, ; 240: uk\Microsoft.Maui.Controls.resources.dll => 0xf4958463 => 29
	i32 4126470640, ; 241: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 40
	i32 4150914736, ; 242: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 29
	i32 4182413190, ; 243: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 71
	i32 4213026141, ; 244: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 94
	i32 4235680421, ; 245: FitTec => 0xfc775aa5 => 85
	i32 4249188766, ; 246: nb\Microsoft.Maui.Controls.resources.dll => 0xfd45799e => 18
	i32 4271975918, ; 247: Microsoft.Maui.Controls.dll => 0xfea12dee => 47
	i32 4274623895, ; 248: CommunityToolkit.Mvvm.dll => 0xfec99597 => 37
	i32 4292120959 ; 249: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 71
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [250 x i32] [
	i32 0, ; 0
	i32 9, ; 1
	i32 115, ; 2
	i32 33, ; 3
	i32 51, ; 4
	i32 17, ; 5
	i32 110, ; 6
	i32 32, ; 7
	i32 25, ; 8
	i32 61, ; 9
	i32 79, ; 10
	i32 92, ; 11
	i32 30, ; 12
	i32 57, ; 13
	i32 8, ; 14
	i32 68, ; 15
	i32 55, ; 16
	i32 115, ; 17
	i32 100, ; 18
	i32 34, ; 19
	i32 28, ; 20
	i32 89, ; 21
	i32 67, ; 22
	i32 117, ; 23
	i32 119, ; 24
	i32 6, ; 25
	i32 106, ; 26
	i32 45, ; 27
	i32 27, ; 28
	i32 42, ; 29
	i32 35, ; 30
	i32 65, ; 31
	i32 19, ; 32
	i32 86, ; 33
	i32 111, ; 34
	i32 53, ; 35
	i32 104, ; 36
	i32 97, ; 37
	i32 25, ; 38
	i32 44, ; 39
	i32 107, ; 40
	i32 96, ; 41
	i32 10, ; 42
	i32 24, ; 43
	i32 90, ; 44
	i32 21, ; 45
	i32 14, ; 46
	i32 68, ; 47
	i32 23, ; 48
	i32 89, ; 49
	i32 78, ; 50
	i32 41, ; 51
	i32 58, ; 52
	i32 4, ; 53
	i32 98, ; 54
	i32 70, ; 55
	i32 91, ; 56
	i32 83, ; 57
	i32 119, ; 58
	i32 26, ; 59
	i32 20, ; 60
	i32 16, ; 61
	i32 22, ; 62
	i32 75, ; 63
	i32 37, ; 64
	i32 2, ; 65
	i32 54, ; 66
	i32 66, ; 67
	i32 11, ; 68
	i32 99, ; 69
	i32 31, ; 70
	i32 85, ; 71
	i32 32, ; 72
	i32 78, ; 73
	i32 62, ; 74
	i32 0, ; 75
	i32 6, ; 76
	i32 87, ; 77
	i32 97, ; 78
	i32 59, ; 79
	i32 45, ; 80
	i32 87, ; 81
	i32 96, ; 82
	i32 30, ; 83
	i32 114, ; 84
	i32 72, ; 85
	i32 81, ; 86
	i32 36, ; 87
	i32 64, ; 88
	i32 101, ; 89
	i32 114, ; 90
	i32 112, ; 91
	i32 82, ; 92
	i32 103, ; 93
	i32 113, ; 94
	i32 55, ; 95
	i32 60, ; 96
	i32 1, ; 97
	i32 95, ; 98
	i32 79, ; 99
	i32 42, ; 100
	i32 123, ; 101
	i32 17, ; 102
	i32 67, ; 103
	i32 9, ; 104
	i32 72, ; 105
	i32 83, ; 106
	i32 82, ; 107
	i32 76, ; 108
	i32 43, ; 109
	i32 26, ; 110
	i32 98, ; 111
	i32 8, ; 112
	i32 2, ; 113
	i32 88, ; 114
	i32 13, ; 115
	i32 38, ; 116
	i32 5, ; 117
	i32 70, ; 118
	i32 108, ; 119
	i32 69, ; 120
	i32 4, ; 121
	i32 95, ; 122
	i32 112, ; 123
	i32 105, ; 124
	i32 56, ; 125
	i32 93, ; 126
	i32 49, ; 127
	i32 12, ; 128
	i32 44, ; 129
	i32 43, ; 130
	i32 106, ; 131
	i32 84, ; 132
	i32 101, ; 133
	i32 14, ; 134
	i32 39, ; 135
	i32 77, ; 136
	i32 102, ; 137
	i32 18, ; 138
	i32 121, ; 139
	i32 109, ; 140
	i32 103, ; 141
	i32 12, ; 142
	i32 118, ; 143
	i32 38, ; 144
	i32 13, ; 145
	i32 117, ; 146
	i32 10, ; 147
	i32 93, ; 148
	i32 53, ; 149
	i32 120, ; 150
	i32 122, ; 151
	i32 47, ; 152
	i32 16, ; 153
	i32 11, ; 154
	i32 15, ; 155
	i32 20, ; 156
	i32 84, ; 157
	i32 108, ; 158
	i32 64, ; 159
	i32 15, ; 160
	i32 111, ; 161
	i32 57, ; 162
	i32 59, ; 163
	i32 1, ; 164
	i32 21, ; 165
	i32 48, ; 166
	i32 49, ; 167
	i32 80, ; 168
	i32 27, ; 169
	i32 51, ; 170
	i32 62, ; 171
	i32 80, ; 172
	i32 50, ; 173
	i32 36, ; 174
	i32 121, ; 175
	i32 81, ; 176
	i32 105, ; 177
	i32 92, ; 178
	i32 66, ; 179
	i32 34, ; 180
	i32 7, ; 181
	i32 73, ; 182
	i32 123, ; 183
	i32 90, ; 184
	i32 74, ; 185
	i32 116, ; 186
	i32 60, ; 187
	i32 52, ; 188
	i32 7, ; 189
	i32 104, ; 190
	i32 65, ; 191
	i32 75, ; 192
	i32 24, ; 193
	i32 54, ; 194
	i32 63, ; 195
	i32 122, ; 196
	i32 77, ; 197
	i32 3, ; 198
	i32 40, ; 199
	i32 120, ; 200
	i32 46, ; 201
	i32 22, ; 202
	i32 91, ; 203
	i32 124, ; 204
	i32 23, ; 205
	i32 31, ; 206
	i32 33, ; 207
	i32 99, ; 208
	i32 109, ; 209
	i32 69, ; 210
	i32 28, ; 211
	i32 74, ; 212
	i32 39, ; 213
	i32 124, ; 214
	i32 73, ; 215
	i32 94, ; 216
	i32 3, ; 217
	i32 56, ; 218
	i32 61, ; 219
	i32 88, ; 220
	i32 46, ; 221
	i32 35, ; 222
	i32 113, ; 223
	i32 41, ; 224
	i32 102, ; 225
	i32 110, ; 226
	i32 52, ; 227
	i32 86, ; 228
	i32 63, ; 229
	i32 19, ; 230
	i32 118, ; 231
	i32 76, ; 232
	i32 58, ; 233
	i32 100, ; 234
	i32 48, ; 235
	i32 116, ; 236
	i32 5, ; 237
	i32 50, ; 238
	i32 107, ; 239
	i32 29, ; 240
	i32 40, ; 241
	i32 29, ; 242
	i32 71, ; 243
	i32 94, ; 244
	i32 85, ; 245
	i32 18, ; 246
	i32 47, ; 247
	i32 37, ; 248
	i32 71 ; 249
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.1xx @ af27162bee43b7fecdca59b4f67aa8c175cbc875"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
