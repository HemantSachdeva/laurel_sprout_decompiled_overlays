.class public Lcom/android/dynsystem/VerificationActivity;
.super Landroid/app/Activity;
.source "VerificationActivity.java"


# static fields
.field private static final REQUEST_CODE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VerificationActivity"

.field private static sVerifiedUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private featureFlagEnabled()Z
    .locals 2

    .line 105
    const-string v0, "persist.sys.fflag.override.settings_dynamic_system"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static isVerified(Ljava/lang/String;)Z
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .line 110
    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 111
    :cond_0
    sget-object v1, Lcom/android/dynsystem/VerificationActivity;->sVerifiedUrl:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private startInstallationService()V
    .locals 5

    .line 85
    invoke-virtual {p0}, Lcom/android/dynsystem/VerificationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 86
    .local v0, "callingIntent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 88
    .local v1, "url":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/dynsystem/VerificationActivity;->sVerifiedUrl:Ljava/lang/String;

    .line 93
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/dynsystem/DynamicSystemInstallationService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 95
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 97
    :cond_1
    const-string v3, "android.os.image.action.START_INSTALL"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 100
    const-string v3, "VerificationActivity"

    const-string v4, "Starting Installation Service"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, v3}, Lcom/android/dynsystem/VerificationActivity;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 102
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 76
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 77
    invoke-direct {p0}, Lcom/android/dynsystem/VerificationActivity;->startInstallationService()V

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/android/dynsystem/VerificationActivity;->finish()V

    .line 81
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-direct {p0}, Lcom/android/dynsystem/VerificationActivity;->featureFlagEnabled()Z

    move-result v0

    const-string v1, "VerificationActivity"

    if-nez v0, :cond_0

    .line 50
    const-string v0, "settings_dynamic_system not enabled; activity aborted."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-virtual {p0}, Lcom/android/dynsystem/VerificationActivity;->finish()V

    .line 52
    return-void

    .line 55
    :cond_0
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/android/dynsystem/VerificationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 57
    .local v0, "km":Landroid/app/KeyguardManager;
    if-eqz v0, :cond_2

    .line 58
    const v2, 0x7f020003

    invoke-virtual {p0, v2}, Lcom/android/dynsystem/VerificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "title":Ljava/lang/String;
    const v3, 0x7f020002

    invoke-virtual {p0, v3}, Lcom/android/dynsystem/VerificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 60
    .local v3, "description":Ljava/lang/String;
    invoke-virtual {v0, v2, v3}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    .line 62
    .local v4, "intent":Landroid/content/Intent;
    if-nez v4, :cond_1

    .line 63
    const-string v5, "This device is not protected by a password/pin"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-direct {p0}, Lcom/android/dynsystem/VerificationActivity;->startInstallationService()V

    .line 65
    invoke-virtual {p0}, Lcom/android/dynsystem/VerificationActivity;->finish()V

    goto :goto_0

    .line 67
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v4, v1}, Lcom/android/dynsystem/VerificationActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 69
    .end local v2    # "title":Ljava/lang/String;
    .end local v3    # "description":Ljava/lang/String;
    .end local v4    # "intent":Landroid/content/Intent;
    :goto_0
    goto :goto_1

    .line 70
    :cond_2
    invoke-virtual {p0}, Lcom/android/dynsystem/VerificationActivity;->finish()V

    .line 72
    :goto_1
    return-void
.end method
