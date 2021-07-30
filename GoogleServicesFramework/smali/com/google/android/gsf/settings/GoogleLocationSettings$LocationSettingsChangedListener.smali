.class public Lcom/google/android/gsf/settings/GoogleLocationSettings$LocationSettingsChangedListener;
.super Landroid/content/BroadcastReceiver;
.source "GoogleLocationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/settings/GoogleLocationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocationSettingsChangedListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 89
    invoke-static {p1}, Lcom/google/android/gsf/settings/GoogleLocationSettingHelper;->getUseLocationForServices(Landroid/content/Context;)I

    move-result p0

    const/4 p2, 0x1

    if-ne p0, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 91
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 92
    invoke-static {p0, p2}, Lcom/google/android/gsf/settings/GoogleLocationSettings;->copyPackagePrefixLists(Landroid/content/ContentResolver;Z)V

    return-void
.end method
