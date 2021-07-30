.class public Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreService;
.super Landroid/app/Service;
.source "PG"


# static fields
.field public static final a:Lacw;


# instance fields
.field public b:Lbmy;

.field public c:Lacy;

.field private d:Ljava/util/Set;

.field private e:Lahg;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lacw;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "CloudRestoreService"

    aput-object v3, v1, v2

    .line 1
    invoke-direct {v0, v1}, Lacw;-><init>([Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreService;->a:Lacw;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 3

    sget-object v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreService;->a:Lacw;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 16
    const-string v2, "Trigger sync adapter to restore Google contacts."

    invoke-virtual {v0, v2, v1}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/os/Bundle;

    .line 17
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 18
    const-string v1, "expedited"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 19
    const-string v1, "force"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 20
    const/4 v1, 0x0

    const-string v2, "com.android.contacts"

    invoke-static {v1, v2, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static a(Lahk;Z)V
    .locals 2

    .line 13
    invoke-static {}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreService;->a()V

    .line 14
    :try_start_0
    invoke-interface {p0, p1}, Lahk;->a(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    sget-object p1, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreService;->a:Lacw;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 15
    const-string v1, "Exception happened when returning contacts restore result to bound Activity."

    invoke-virtual {p1, v1, p0, v0}, Laqd;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreService;->e:Lahg;

    return-object p1
.end method

.method public final onCreate()V
    .locals 4

    sget-object v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreService;->a:Lacw;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    .line 3
    const-string v3, "onCreate"

    invoke-virtual {v0, v3, v2}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    iget-object v2, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreService;->e:Lahg;

    if-nez v2, :cond_0

    new-instance v2, Lahg;

    .line 5
    invoke-direct {v2, p0}, Lahg;-><init>(Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreService;)V

    iput-object v2, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreService;->e:Lahg;

    .line 6
    :cond_0
    invoke-static {p0}, Lbms;->a(Landroid/content/Context;)Lbmy;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreService;->b:Lbmy;

    iget-object v2, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreService;->d:Ljava/util/Set;

    if-nez v2, :cond_1

    .line 7
    new-instance v2, Lanp;

    invoke-direct {v2, p0}, Lanp;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lanp;->a()Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreService;->d:Ljava/util/Set;

    :cond_1
    invoke-static {p0}, Lacy;->a(Landroid/content/Context;)Lacy;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreService;->c:Lacy;

    new-array v1, v1, [Ljava/lang/Object;

    .line 8
    const-string v2, "User selected cloud restore - switching to GMS transport."

    invoke-virtual {v0, v2, v1}, Laqd;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    sget-object v0, Lart;->e:Lart;

    .line 10
    invoke-virtual {v0, p0}, Lart;->a(Landroid/content/Context;)Lczu;

    move-result-object v0

    new-instance v1, Laem;

    iget-object v2, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreService;->c:Lacy;

    .line 11
    invoke-direct {v1, v2}, Laem;-><init>(Lacy;)V

    .line 12
    sget-object v2, Lczj;->a:Lczj;

    .line 11
    invoke-static {v0, v1, v2}, Ldab;->a(Lczu;Lczm;Ljava/util/concurrent/Executor;)V

    return-void
.end method
