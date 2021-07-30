.class public Lcom/google/android/gsf/settings/GoogleLocationSettings;
.super Ljava/lang/Object;
.source "GoogleLocationSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/settings/GoogleLocationSettings$LocationSettingsChangedListener;
    }
.end annotation


# direct methods
.method static copyPackagePrefixLists(Landroid/content/ContentResolver;Z)V
    .locals 5

    const-string v0, "locationPackagePrefixBlacklist"

    .line 58
    invoke-static {p0, v0}, Lcom/google/android/gsf/settings/GoogleLocationSettings;->getSecureSettingOrEmpty(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "locationPackagePrefixWhitelist"

    .line 59
    invoke-static {p0, v2}, Lcom/google/android/gsf/settings/GoogleLocationSettings;->getSecureSettingOrEmpty(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez p1, :cond_1

    const-string p1, "masterLocationPackagePrefixBlacklist"

    .line 61
    invoke-static {p0, p1}, Lcom/google/android/gsf/settings/GoogleLocationSettings;->getSecureSettingOrEmpty(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "masterLocationPackagePrefixWhitelist"

    .line 62
    invoke-static {p0, v4}, Lcom/google/android/gsf/settings/GoogleLocationSettings;->getSecureSettingOrEmpty(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 63
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 64
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 66
    :cond_0
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 67
    invoke-static {p0, v2, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    const-string v1, ""

    if-eqz p1, :cond_2

    .line 71
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 73
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_3

    .line 74
    invoke-static {p0, v2, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method private static getSecureSettingOrEmpty(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 53
    invoke-static {p0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method
