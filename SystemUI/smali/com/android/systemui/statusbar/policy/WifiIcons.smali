.class public Lcom/android/systemui/statusbar/policy/WifiIcons;
.super Ljava/lang/Object;
.source "WifiIcons.java"


# static fields
.field public static final QS_WIFI_4_SIGNAL_STRENGTH:[[I

.field public static final QS_WIFI_5_SIGNAL_STRENGTH:[[I

.field public static final QS_WIFI_6_SIGNAL_STRENGTH:[[I

.field public static final QS_WIFI_SIGNAL_STRENGTH:[[I

.field static final WIFI_4_FULL_ICONS:[I

.field private static final WIFI_4_NO_INTERNET_ICONS:[I

.field static final WIFI_4_SIGNAL_STRENGTH:[[I

.field static final WIFI_5_FULL_ICONS:[I

.field private static final WIFI_5_NO_INTERNET_ICONS:[I

.field static final WIFI_5_SIGNAL_STRENGTH:[[I

.field static final WIFI_6_FULL_ICONS:[I

.field private static final WIFI_6_NO_INTERNET_ICONS:[I

.field static final WIFI_6_SIGNAL_STRENGTH:[[I

.field static final WIFI_FULL_ICONS:[I

.field static final WIFI_LEVEL_COUNT:I

.field private static final WIFI_NO_INTERNET_ICONS:[I

.field static final WIFI_SIGNAL_STRENGTH:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x5

    new-array v1, v0, [I

    .line 23
    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_FULL_ICONS:[I

    new-array v1, v0, [I

    .line 31
    sget v2, Lcom/android/systemui/R$drawable;->ic_qs_wifi_0:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/R$drawable;->ic_qs_wifi_1:I

    const/4 v4, 0x1

    aput v2, v1, v4

    sget v2, Lcom/android/systemui/R$drawable;->ic_qs_wifi_2:I

    const/4 v5, 0x2

    aput v2, v1, v5

    sget v2, Lcom/android/systemui/R$drawable;->ic_qs_wifi_3:I

    const/4 v6, 0x3

    aput v2, v1, v6

    sget v2, Lcom/android/systemui/R$drawable;->ic_qs_wifi_4:I

    const/4 v7, 0x4

    aput v2, v1, v7

    sput-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_NO_INTERNET_ICONS:[I

    new-array v1, v0, [I

    .line 39
    fill-array-data v1, :array_1

    sput-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_4_FULL_ICONS:[I

    new-array v1, v0, [I

    .line 47
    sget v2, Lcom/android/systemui/R$drawable;->ic_qs_wifi_4_0:I

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/R$drawable;->ic_qs_wifi_4_1:I

    aput v2, v1, v4

    sget v2, Lcom/android/systemui/R$drawable;->ic_qs_wifi_4_2:I

    aput v2, v1, v5

    sget v2, Lcom/android/systemui/R$drawable;->ic_qs_wifi_4_3:I

    aput v2, v1, v6

    sget v2, Lcom/android/systemui/R$drawable;->ic_qs_wifi_4_4:I

    aput v2, v1, v7

    sput-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_4_NO_INTERNET_ICONS:[I

    new-array v1, v0, [I

    .line 55
    fill-array-data v1, :array_2

    sput-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_5_FULL_ICONS:[I

    new-array v1, v0, [I

    .line 63
    sget v2, Lcom/android/systemui/R$drawable;->ic_qs_wifi_5_0:I

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/R$drawable;->ic_qs_wifi_5_1:I

    aput v2, v1, v4

    sget v2, Lcom/android/systemui/R$drawable;->ic_qs_wifi_5_2:I

    aput v2, v1, v5

    sget v2, Lcom/android/systemui/R$drawable;->ic_qs_wifi_5_3:I

    aput v2, v1, v6

    sget v2, Lcom/android/systemui/R$drawable;->ic_qs_wifi_5_4:I

    aput v2, v1, v7

    sput-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_5_NO_INTERNET_ICONS:[I

    new-array v1, v0, [I

    .line 71
    fill-array-data v1, :array_3

    sput-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_6_FULL_ICONS:[I

    new-array v0, v0, [I

    .line 79
    sget v1, Lcom/android/systemui/R$drawable;->ic_qs_wifi_6_0:I

    aput v1, v0, v3

    sget v1, Lcom/android/systemui/R$drawable;->ic_qs_wifi_6_1:I

    aput v1, v0, v4

    sget v1, Lcom/android/systemui/R$drawable;->ic_qs_wifi_6_2:I

    aput v1, v0, v5

    sget v1, Lcom/android/systemui/R$drawable;->ic_qs_wifi_6_3:I

    aput v1, v0, v6

    sget v1, Lcom/android/systemui/R$drawable;->ic_qs_wifi_6_4:I

    aput v1, v0, v7

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_6_NO_INTERNET_ICONS:[I

    new-array v1, v5, [[I

    .line 87
    sget-object v2, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_NO_INTERNET_ICONS:[I

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_FULL_ICONS:[I

    aput-object v2, v1, v4

    sput-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    .line 92
    sput-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    new-array v2, v5, [[I

    .line 94
    sget-object v6, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_4_NO_INTERNET_ICONS:[I

    aput-object v6, v2, v3

    sget-object v6, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_4_FULL_ICONS:[I

    aput-object v6, v2, v4

    sput-object v2, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_4_SIGNAL_STRENGTH:[[I

    .line 99
    sput-object v2, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_4_SIGNAL_STRENGTH:[[I

    new-array v2, v5, [[I

    .line 101
    sget-object v6, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_5_NO_INTERNET_ICONS:[I

    aput-object v6, v2, v3

    sget-object v6, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_5_FULL_ICONS:[I

    aput-object v6, v2, v4

    sput-object v2, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_5_SIGNAL_STRENGTH:[[I

    .line 106
    sput-object v2, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_5_SIGNAL_STRENGTH:[[I

    new-array v2, v5, [[I

    aput-object v0, v2, v3

    .line 108
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_6_FULL_ICONS:[I

    aput-object v0, v2, v4

    sput-object v2, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_6_SIGNAL_STRENGTH:[[I

    .line 113
    sput-object v2, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_6_SIGNAL_STRENGTH:[[I

    .line 119
    aget-object v0, v1, v3

    array-length v0, v0

    sput v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    return-void

    :array_0
    .array-data 4
        0x1080565
        0x1080566
        0x1080567
        0x1080568
        0x1080569
    .end array-data

    :array_1
    .array-data 4
        0x1080556
        0x1080557
        0x1080558
        0x1080559
        0x108055a
    .end array-data

    :array_2
    .array-data 4
        0x108055b
        0x108055c
        0x108055d
        0x108055e
        0x108055f
    .end array-data

    :array_3
    .array-data 4
        0x1080560
        0x1080561
        0x1080562
        0x1080563
        0x1080564
    .end array-data
.end method
