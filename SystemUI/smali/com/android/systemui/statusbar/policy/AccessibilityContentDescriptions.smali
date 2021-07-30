.class public Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;
.super Ljava/lang/Object;
.source "AccessibilityContentDescriptions.java"


# static fields
.field static final ETHERNET_CONNECTION_VALUES:[I

.field static final PHONE_SIGNAL_STRENGTH:[I

.field static final WIFI_CONNECTION_STRENGTH:[I

.field static final WIFI_NO_CONNECTION:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x5

    new-array v1, v0, [I

    .line 13
    sget v2, Lcom/android/systemui/R$string;->accessibility_no_phone:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/R$string;->accessibility_phone_one_bar:I

    const/4 v4, 0x1

    aput v2, v1, v4

    sget v2, Lcom/android/systemui/R$string;->accessibility_phone_two_bars:I

    const/4 v5, 0x2

    aput v2, v1, v5

    sget v2, Lcom/android/systemui/R$string;->accessibility_phone_three_bars:I

    const/4 v6, 0x3

    aput v2, v1, v6

    sget v2, Lcom/android/systemui/R$string;->accessibility_phone_signal_full:I

    const/4 v7, 0x4

    aput v2, v1, v7

    sput-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    new-array v0, v0, [I

    .line 29
    sget v1, Lcom/android/systemui/R$string;->accessibility_no_wifi:I

    aput v1, v0, v3

    sget v1, Lcom/android/systemui/R$string;->accessibility_wifi_one_bar:I

    aput v1, v0, v4

    sget v1, Lcom/android/systemui/R$string;->accessibility_wifi_two_bars:I

    aput v1, v0, v5

    sget v1, Lcom/android/systemui/R$string;->accessibility_wifi_three_bars:I

    aput v1, v0, v6

    sget v1, Lcom/android/systemui/R$string;->accessibility_wifi_signal_full:I

    aput v1, v0, v7

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    .line 37
    sget v0, Lcom/android/systemui/R$string;->accessibility_no_wifi:I

    sput v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_NO_CONNECTION:I

    new-array v0, v5, [I

    .line 39
    sget v1, Lcom/android/systemui/R$string;->accessibility_ethernet_disconnected:I

    aput v1, v0, v3

    sget v1, Lcom/android/systemui/R$string;->accessibility_ethernet_connected:I

    aput v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->ETHERNET_CONNECTION_VALUES:[I

    return-void
.end method
