.class public final Ldec;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field final synthetic a:Lcom/google/firebase/iid/FirebaseInstanceId;

.field private b:Z

.field private final c:Lddf;

.field private d:Z

.field private e:Lddd;

.field private f:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/google/firebase/iid/FirebaseInstanceId;Lddf;)V
    .locals 0

    iput-object p1, p0, Ldec;->a:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ldec;->c:Lddf;

    return-void
.end method


# virtual methods
.method final declared-synchronized a()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldec;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_1
    const-string v2, "com.google.firebase.messaging.FirebaseMessaging"

    .line 1
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x1

    goto :goto_0

    .line 16
    :catch_0
    move-exception v2

    :try_start_2
    iget-object v2, p0, Ldec;->a:Lcom/google/firebase/iid/FirebaseInstanceId;

    iget-object v2, v2, Lcom/google/firebase/iid/FirebaseInstanceId;->d:Ldbb;

    .line 2
    invoke-virtual {v2}, Ldbb;->a()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.google.firebase.MESSAGING_EVENT"

    .line 3
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1
    :goto_0
    iput-boolean v2, p0, Ldec;->b:Z

    iget-object v2, p0, Ldec;->a:Lcom/google/firebase/iid/FirebaseInstanceId;

    iget-object v2, v2, Lcom/google/firebase/iid/FirebaseInstanceId;->d:Ldbb;

    .line 7
    invoke-virtual {v2}, Ldbb;->a()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.google.firebase.messaging"

    .line 8
    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "auto_init"

    .line 9
    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    const-string v2, "auto_init"

    .line 10
    invoke-interface {v3, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 11
    :cond_1
    :try_start_3
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 12
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    .line 13
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 14
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_2

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "firebase_messaging_auto_init_enabled"

    .line 15
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 16
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "firebase_messaging_auto_init_enabled"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    goto :goto_1

    .line 6
    :catch_1
    move-exception v1

    .line 10
    :goto_1
    :try_start_4
    iput-object v5, p0, Ldec;->f:Ljava/lang/Boolean;

    if-nez v5, :cond_3

    iget-boolean v1, p0, Ldec;->b:Z

    if-eqz v1, :cond_3

    new-instance v1, Ldeb;

    .line 17
    invoke-direct {v1, p0}, Ldeb;-><init>(Ldec;)V

    iput-object v1, p0, Ldec;->e:Lddd;

    iget-object v2, p0, Ldec;->c:Lddf;

    const-class v3, Ldav;

    .line 18
    invoke-interface {v2, v3, v1}, Lddf;->a(Ljava/lang/Class;Lddd;)V

    :cond_3
    iput-boolean v0, p0, Ldec;->d:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    .line 16
    :cond_4
    monitor-exit p0

    return-void

    .line 0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()Z
    .locals 2

    monitor-enter p0

    .line 19
    :try_start_0
    invoke-virtual {p0}, Ldec;->a()V

    iget-object v0, p0, Ldec;->f:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Ldec;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Ldec;->a:Lcom/google/firebase/iid/FirebaseInstanceId;

    iget-object v0, v0, Lcom/google/firebase/iid/FirebaseInstanceId;->d:Ldbb;

    .line 21
    invoke-virtual {v0}, Ldbb;->e()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :cond_2
    :goto_0
    nop

    .line 20
    :goto_1
    monitor-exit p0

    return v1

    .line 18
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
