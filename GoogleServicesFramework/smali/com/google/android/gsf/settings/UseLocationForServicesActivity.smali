.class public Lcom/google/android/gsf/settings/UseLocationForServicesActivity;
.super Landroid/app/Activity;
.source "UseLocationForServicesActivity.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private setUseLocationForServices(Z)V
    .locals 0

    .line 47
    invoke-static {p0, p1}, Lcom/google/android/gsf/UseLocationForServices;->setUseLocationForServices(Landroid/content/Context;Z)Z

    return-void
.end method


# virtual methods
.method protected onResume()V
    .locals 3

    .line 37
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "disable"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 41
    invoke-direct {p0, v0}, Lcom/google/android/gsf/settings/UseLocationForServicesActivity;->setUseLocationForServices(Z)V

    const/4 v0, -0x1

    .line 42
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 43
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
