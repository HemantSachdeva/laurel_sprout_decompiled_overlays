.class Lcom/android/systemui/statusbar/policy/TelephonyIcons;
.super Ljava/lang/Object;
.source "TelephonyIcons.java"


# static fields
.field static final CARRIER_NETWORK_CHANGE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final CLA_H:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final CLA_ICON_H:I

.field static final DATA_DISABLED:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FIVE_G_BASIC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FIVE_G_SA:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FIVE_G_UWB:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FLIGHT_MODE_ICON:I

.field static final FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FOUR_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final H:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final H_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final ICON_1X:I

.field static final ICON_3G:I

.field static final ICON_4G:I

.field static final ICON_4G_PLUS:I

.field static final ICON_5G:I

.field static final ICON_5G_BASIC:I

.field static final ICON_5G_E:I

.field static final ICON_5G_PLUS:I

.field static final ICON_5G_SA:I

.field static final ICON_5G_UWB:I

.field static final ICON_E:I

.field static final ICON_G:I

.field static final ICON_H:I

.field static final ICON_H_PLUS:I

.field static final ICON_LTE:I

.field static final ICON_LTE_PLUS:I

.field static final ICON_NAME_TO_ICON:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;",
            ">;"
        }
    .end annotation
.end field

.field static final ICON_VOWIFI:I

.field static final ICON_VOWIFI_CALLING:I

.field static final LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final LTE_CA_5G_E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final LTE_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final NOT_DEFAULT_DATA:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final NR_5G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final NR_5G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final ONE_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final TELCEL_FOUR_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final TELCEL_ICON_4G_PLUS:I

.field static final THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final VOWIFI:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final VOWIFI_CALLING:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final WFC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 28

    .line 27
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_airplane_mode:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FLIGHT_MODE_ICON:I

    .line 29
    sget v0, Lcom/android/systemui/R$drawable;->ic_lte_mobiledata:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_LTE:I

    .line 30
    sget v0, Lcom/android/systemui/R$drawable;->ic_lte_plus_mobiledata:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_LTE_PLUS:I

    .line 31
    sget v0, Lcom/android/systemui/R$drawable;->ic_g_mobiledata:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_G:I

    .line 32
    sget v0, Lcom/android/systemui/R$drawable;->ic_e_mobiledata:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_E:I

    .line 33
    sget v0, Lcom/android/systemui/R$drawable;->ic_h_mobiledata:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_H:I

    .line 34
    sget v0, Lcom/android/systemui/R$drawable;->ic_h_plus_mobiledata:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_H_PLUS:I

    .line 35
    sget v0, Lcom/android/systemui/R$drawable;->ic_3g_mobiledata:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_3G:I

    .line 36
    sget v0, Lcom/android/systemui/R$drawable;->ic_4g_mobiledata:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_4G:I

    .line 37
    sget v0, Lcom/android/systemui/R$drawable;->ic_4g_plus_mobiledata:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_4G_PLUS:I

    .line 38
    sget v0, Lcom/android/systemui/R$drawable;->ic_5g_e_mobiledata:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_5G_E:I

    .line 39
    sget v0, Lcom/android/systemui/R$drawable;->ic_1x_mobiledata:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_1X:I

    .line 40
    sget v0, Lcom/android/systemui/R$drawable;->ic_5g_mobiledata:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_5G:I

    .line 41
    sget v0, Lcom/android/systemui/R$drawable;->ic_5g_plus_mobiledata:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_5G_PLUS:I

    .line 42
    sget v0, Lcom/android/systemui/R$drawable;->ic_5g_mobiledata:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_5G_SA:I

    .line 43
    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_5G_BASIC:I

    .line 44
    sget v0, Lcom/android/systemui/R$drawable;->ic_5g_uwb_mobiledata:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_5G_UWB:I

    .line 45
    sget v0, Lcom/android/systemui/R$drawable;->ic_vowifi:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_VOWIFI:I

    .line 46
    sget v0, Lcom/android/systemui/R$drawable;->ic_vowifi_calling:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_VOWIFI_CALLING:I

    .line 48
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v14, 0x0

    aget v10, v5, v14

    sget v11, Lcom/android/systemui/R$string;->carrier_network_change_mode:I

    const-string v2, "CARRIER_NETWORK_CHANGE"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->CARRIER_NETWORK_CHANGE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 61
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v19, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v24, v19, v14

    sget v25, Lcom/android/systemui/R$string;->data_connection_3g:I

    sget v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_3G:I

    const-string v16, "3G"

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v27, 0x1

    move-object v15, v0

    invoke-direct/range {v15 .. v27}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 74
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v10, v5, v14

    const-string v2, "WFC"

    const/4 v11, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->WFC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 85
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v19, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v24, v19, v14

    const-string v16, "Unknown"

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object v15, v0

    invoke-direct/range {v15 .. v27}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 96
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v10, v5, v14

    sget v11, Lcom/android/systemui/R$string;->data_connection_edge:I

    sget v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_E:I

    const-string v2, "E"

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 109
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v19, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v24, v19, v14

    sget v25, Lcom/android/systemui/R$string;->data_connection_cdma:I

    sget v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_1X:I

    const-string v16, "1X"

    const/16 v27, 0x1

    move-object v15, v0

    invoke-direct/range {v15 .. v27}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONE_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 122
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v10, v5, v14

    sget v11, Lcom/android/systemui/R$string;->data_connection_gprs:I

    sget v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_G:I

    const-string v2, "G"

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 135
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v19, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v24, v19, v14

    sget v25, Lcom/android/systemui/R$string;->data_connection_3_5g:I

    sget v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_H:I

    const-string v16, "H"

    const/16 v27, 0x0

    move-object v15, v0

    invoke-direct/range {v15 .. v27}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 148
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v10, v5, v14

    sget v11, Lcom/android/systemui/R$string;->data_connection_3_5g_plus:I

    sget v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_H_PLUS:I

    const-string v2, "H+"

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 161
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v19, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v24, v19, v14

    sget v25, Lcom/android/systemui/R$string;->data_connection_4g:I

    sget v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_4G:I

    const-string v16, "4G"

    const/16 v27, 0x1

    move-object v15, v0

    invoke-direct/range {v15 .. v27}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 174
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v10, v5, v14

    sget v11, Lcom/android/systemui/R$string;->telcel_data_connection_4g_plus:I

    sget v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_4G_PLUS:I

    const-string v2, "4G+"

    const/4 v13, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 187
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v19, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v24, v19, v14

    sget v25, Lcom/android/systemui/R$string;->data_connection_lte:I

    sget v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_LTE:I

    const-string v16, "LTE"

    move-object v15, v0

    invoke-direct/range {v15 .. v27}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 200
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v10, v5, v14

    sget v11, Lcom/android/systemui/R$string;->data_connection_lte_plus:I

    sget v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_LTE_PLUS:I

    const-string v2, "LTE+"

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 213
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v19, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v24, v19, v14

    sget v25, Lcom/android/systemui/R$string;->data_connection_5ge_html:I

    sget v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_5G_E:I

    const-string v16, "5Ge"

    move-object v15, v0

    invoke-direct/range {v15 .. v27}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_CA_5G_E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 226
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v10, v5, v14

    sget v11, Lcom/android/systemui/R$string;->data_connection_5g:I

    sget v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_5G:I

    const-string v2, "5G"

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->NR_5G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 240
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v19, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v24, v19, v14

    sget v25, Lcom/android/systemui/R$string;->data_connection_5g_plus:I

    sget v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_5G_PLUS:I

    const-string v16, "5G_PLUS"

    move-object v15, v0

    invoke-direct/range {v15 .. v27}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->NR_5G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 254
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v10, v5, v14

    sget v11, Lcom/android/systemui/R$string;->cell_data_off_content_description:I

    const-string v2, "DataDisabled"

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DISABLED:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 267
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v19, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v24, v19, v14

    sget v25, Lcom/android/systemui/R$string;->not_default_data_content_description:I

    const-string v16, "NotDefaultData"

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object v15, v0

    invoke-direct/range {v15 .. v27}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->NOT_DEFAULT_DATA:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 283
    sget-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v0, v0, v14

    .line 296
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v10, v5, v14

    sget v11, Lcom/android/systemui/R$string;->data_connection_5g_basic:I

    sget v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_5G_BASIC:I

    const-string v2, "5GBasic"

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FIVE_G_BASIC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 309
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v19, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v24, v19, v14

    sget v25, Lcom/android/systemui/R$string;->data_connection_5g_uwb:I

    sget v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_5G_UWB:I

    const-string v16, "5GUWB"

    move-object v15, v0

    invoke-direct/range {v15 .. v27}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FIVE_G_UWB:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 322
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v10, v5, v14

    sget v11, Lcom/android/systemui/R$string;->data_connection_5g_sa:I

    sget v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_5G_SA:I

    const-string v2, "5GSA"

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FIVE_G_SA:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 335
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v19, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v24, v19, v14

    sget v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_VOWIFI:I

    const-string v16, "VoWIFI"

    const/16 v25, 0x0

    move-object v15, v0

    invoke-direct/range {v15 .. v27}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->VOWIFI:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 348
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v10, v5, v14

    sget v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_VOWIFI_CALLING:I

    const-string v2, "VoWIFICall"

    const/4 v11, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->VOWIFI_CALLING:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 364
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    .line 365
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->CARRIER_NETWORK_CHANGE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v2, "carrier_network_change"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v2, "3g"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->WFC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v2, "wfc"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v2, "unknown"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v2, "e"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONE_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v2, "1x"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v2, "g"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v2, "h"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v2, "h+"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v2, "4g"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v2, "4g+"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_CA_5G_E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v2, "5ge"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v2, "lte"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v2, "lte+"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->NR_5G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v2, "5g"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->NR_5G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v2, "5g_plus"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FIVE_G_UWB:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v2, "5guwb"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DISABLED:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v2, "datadisable"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->NOT_DEFAULT_DATA:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v2, "notdefaultdata"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    sget v0, Lcom/android/systemui/R$drawable;->cla_ic_h_mobiledata:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->CLA_ICON_H:I

    .line 388
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v10, v5, v14

    sget v11, Lcom/android/systemui/R$string;->data_connection_3_5g:I

    sget v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->CLA_ICON_H:I

    const-string v2, "H"

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->CLA_H:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 403
    sget v0, Lcom/android/systemui/R$drawable;->telcel_ic_4g_plus_mobiledata:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELCEL_ICON_4G_PLUS:I

    .line 404
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v10, v5, v14

    sget v11, Lcom/android/systemui/R$string;->telcel_data_connection_4g_plus:I

    sget v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELCEL_ICON_4G_PLUS:I

    const-string v2, "4G+"

    const/4 v13, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELCEL_FOUR_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    return-void
.end method
