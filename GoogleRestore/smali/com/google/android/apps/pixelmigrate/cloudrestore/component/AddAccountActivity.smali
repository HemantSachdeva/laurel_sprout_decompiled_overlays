.class public Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AddAccountActivity;
.super Landroid/app/Activity;
.source "PG"


# static fields
.field private static final a:Lacw;


# instance fields
.field private b:Lade;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lacw;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "AddAccountActivity"

    aput-object v3, v1, v2

    .line 1
    invoke-direct {v0, v1}, Lacw;-><init>([Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AddAccountActivity;->a:Lacw;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lade;

    .line 3
    invoke-direct {v0, p0}, Lade;-><init>(Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AddAccountActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AddAccountActivity;->b:Lade;

    return-void
.end method

.method private static a(Landroid/accounts/Account;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    .line 6
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 7
    const-string v1, "com.google.android.apps.restore.APP_PICKER_ADD_ACCOUNT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    const-string v1, "account"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method private final a()V
    .locals 1

    .line 4
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AddAccountActivity;->setResult(I)V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AddAccountActivity;->finish()V

    return-void
.end method


# virtual methods
.method protected final onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    sget-object p3, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AddAccountActivity;->a:Lacw;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "onActivityResult requestCode = %d, resultCode = %d"

    invoke-virtual {p3, p1, v0}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    invoke-direct {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AddAccountActivity;->a()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 11
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 12
    invoke-virtual {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AddAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "account"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/accounts/Account;

    .line 13
    sget-object v1, Ldtr;->a:Ldtr;

    .line 14
    invoke-virtual {v1}, Ldtr;->b()Ldts;

    move-result-object v1

    invoke-interface {v1}, Ldts;->b()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    sget-object v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AddAccountActivity;->a:Lacw;

    new-array v1, v2, [Ljava/lang/Object;

    .line 15
    const-string v4, "Activity is disabled by backupEnableCloudRestoreAfterAddAccount flag."

    invoke-virtual {v0, v4, v1}, Laqd;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    invoke-virtual {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AddAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "can_show_app_picker"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    new-array v1, v2, [Ljava/lang/Object;

    .line 17
    const-string v2, "Falling back to AppPickerHostActivity because EXTRA_CAN_SHOW_APP_PICKER not false."

    invoke-virtual {v0, v2, v1}, Laqd;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    invoke-static {p1}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AddAccountActivity;->a(Landroid/accounts/Account;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1, v3}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AddAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 19
    :cond_0
    invoke-direct {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AddAccountActivity;->a()V

    return-void

    :cond_1
    if-eqz p1, :cond_4

    .line 20
    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    if-nez v1, :cond_2

    goto :goto_0

    .line 22
    :cond_2
    iget-object v1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AddAccountActivity;->b:Lade;

    iget-object v1, v1, Lade;->a:Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AddAccountActivity;

    .line 23
    new-instance v4, Lapj;

    invoke-direct {v4, v1}, Lapj;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-virtual {v4}, Lapj;->b()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_3

    sget-object v1, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AddAccountActivity;->a:Lacw;

    new-array v2, v2, [Ljava/lang/Object;

    .line 25
    const-string v4, "Device has not done a restore before, launching cloud restore."

    invoke-virtual {v1, v4, v2}, Laqd;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Landroid/content/Intent;

    .line 26
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 27
    const-string v2, "com.google.android.apps.restore.ACTION_CLOUD_RESTORE_FLOW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    iget-object p1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    const-string p1, "should_call_system_restore"

    invoke-virtual {v1, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 30
    const-string p1, "deferredSetup"

    invoke-virtual {v1, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 31
    invoke-virtual {p0, v1, v3}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AddAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_3
    sget-object v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AddAccountActivity;->a:Lacw;

    new-array v1, v2, [Ljava/lang/Object;

    .line 32
    const-string v2, "Device has done restore before, launching app picker."

    invoke-virtual {v0, v2, v1}, Laqd;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    invoke-static {p1}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AddAccountActivity;->a(Landroid/accounts/Account;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1, v3}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AddAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 20
    :cond_4
    :goto_0
    sget-object p1, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AddAccountActivity;->a:Lacw;

    new-array v0, v2, [Ljava/lang/Object;

    .line 21
    const-string v1, "Account is empty, quitting."

    invoke-virtual {p1, v1, v0}, Laqd;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    invoke-direct {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AddAccountActivity;->a()V

    return-void
.end method
