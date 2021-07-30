.class public final Larz;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Landroid/content/ComponentName;

.field public static final d:Lbjb;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.google"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "com.google.work"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v4, "cn.google"

    aput-object v4, v0, v1

    sput-object v0, Larz;->a:[Ljava/lang/String;

    .line 62
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 63
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v0, "androidPackageName"

    sput-object v0, Larz;->b:Ljava/lang/String;

    new-instance v0, Landroid/content/ComponentName;

    .line 64
    const-string v1, "com.google.android.gms"

    const-string v4, "com.google.android.gms.auth.GetToken"

    invoke-direct {v0, v1, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Larz;->c:Landroid/content/ComponentName;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "GoogleAuthUtil"

    aput-object v1, v0, v2

    .line 65
    invoke-static {v0}, Larw;->a([Ljava/lang/String;)Lbjb;

    move-result-object v0

    sput-object v0, Larz;->d:Lbjb;

    return-void
.end method

.method public static a(Landroid/os/Bundle;)Lcom/google/android/gms/auth/TokenData;
    .locals 8

    const-class v0, Lcom/google/android/gms/auth/TokenData;

    .line 66
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 67
    const-string v0, "tokenDetails"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 74
    :cond_0
    const-class v1, Lcom/google/android/gms/auth/TokenData;

    .line 68
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 69
    const-string v1, "TokenData"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/TokenData;

    .line 67
    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    .line 70
    :cond_1
    const-string v0, "Error"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    const-string v1, "userRecoveryIntent"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    .line 72
    sget-object p0, Lask;->n:Lask;

    .line 73
    invoke-static {}, Lask;->values()[Lask;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x1

    if-ge v4, v2, :cond_3

    aget-object v6, v1, v4

    .line 74
    iget-object v7, v6, Lask;->ac:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v5, v7, :cond_2

    move-object p0, v6

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 69
    :cond_3
    sget-object v1, Lask;->i:Lask;

    .line 75
    invoke-virtual {v1, p0}, Lask;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lask;->r:Lask;

    .line 76
    invoke-virtual {v1, p0}, Lask;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lask;->u:Lask;

    .line 77
    invoke-virtual {v1, p0}, Lask;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lask;->v:Lask;

    .line 78
    invoke-virtual {v1, p0}, Lask;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lask;->m:Lask;

    .line 79
    invoke-virtual {v1, p0}, Lask;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lask;->x:Lask;

    .line 80
    invoke-virtual {v1, p0}, Lask;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lask;->b:Lask;

    .line 81
    invoke-virtual {v1, p0}, Lask;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lask;->C:Lask;

    .line 82
    invoke-virtual {v1, p0}, Lask;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lask;->D:Lask;

    .line 83
    invoke-virtual {v1, p0}, Lask;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lask;->E:Lask;

    .line 84
    invoke-virtual {v1, p0}, Lask;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lask;->F:Lask;

    .line 85
    invoke-virtual {v1, p0}, Lask;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lask;->G:Lask;

    .line 86
    invoke-virtual {v1, p0}, Lask;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lask;->H:Lask;

    .line 87
    invoke-virtual {v1, p0}, Lask;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lask;->J:Lask;

    .line 88
    invoke-virtual {v1, p0}, Lask;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lask;->B:Lask;

    .line 89
    invoke-virtual {v1, p0}, Lask;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lask;->I:Lask;

    .line 90
    invoke-virtual {v1, p0}, Lask;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 92
    sget-object v1, Lask;->f:Lask;

    .line 93
    invoke-virtual {v1, p0}, Lask;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lask;->g:Lask;

    .line 94
    invoke-virtual {v1, p0}, Lask;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lask;->h:Lask;

    .line 95
    invoke-virtual {v1, p0}, Lask;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 97
    sget-object v1, Lask;->ab:Lask;

    .line 96
    invoke-virtual {v1, p0}, Lask;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_2

    .line 95
    :cond_4
    new-instance p0, Lary;

    .line 98
    invoke-direct {p0, v0}, Lary;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_2
    new-instance p0, Ljava/io/IOException;

    .line 97
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 90
    :cond_6
    sget-object v1, Larz;->d:Lbjb;

    new-array v2, v5, [Ljava/lang/Object;

    .line 91
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1f

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "isUserRecoverableError status: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v3

    const-string p0, "GoogleAuthUtil"

    invoke-virtual {v1, p0, v2}, Lbjb;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p0, Lcom/google/android/gms/auth/UserRecoverableAuthException;

    .line 92
    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/UserRecoverableAuthException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method

.method public static a(Lbpi;)Ljava/lang/Object;
    .locals 5

    const-string v0, "token retrieval"

    .line 99
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0}, Lbqb;->a(Lbpi;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 105
    :catch_0
    move-exception p0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    .line 100
    const-string v0, "Canceled while waiting for the task of %s to finish."

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Larz;->d:Lbjb;

    new-array v2, v2, [Ljava/lang/Object;

    .line 101
    invoke-virtual {v1, v0, v2}, Lbjb;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Ljava/io/IOException;

    .line 102
    invoke-direct {v1, v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 108
    :catch_1
    move-exception p0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    .line 103
    const-string v0, "Interrupted while waiting for the task of %s to finish."

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Larz;->d:Lbjb;

    new-array v2, v2, [Ljava/lang/Object;

    .line 104
    invoke-virtual {v1, v0, v2}, Lbjb;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Ljava/io/IOException;

    .line 105
    invoke-direct {v1, v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 102
    :catch_2
    move-exception p0

    .line 106
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    .line 107
    instance-of v4, v3, Lbep;

    if-eqz v4, :cond_0

    .line 108
    check-cast v3, Lbep;

    throw v3

    .line 99
    :cond_0
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    .line 109
    const-string v0, "Unable to get a result for %s due to ExecutionException."

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Larz;->d:Lbjb;

    new-array v2, v2, [Ljava/lang/Object;

    .line 110
    invoke-virtual {v1, v0, v2}, Lbjb;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Ljava/io/IOException;

    .line 111
    invoke-direct {v1, v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const-string v0, "Error on service connection."

    const-string v1, "GoogleAuthUtil"

    new-instance v2, Landroid/os/Bundle;

    .line 1
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-static {p1}, Larz;->a(Landroid/accounts/Account;)V

    .line 3
    const-string v3, "Calling this from your main thread can lead to deadlock"

    invoke-static {v3}, Lbir;->a(Ljava/lang/String;)V

    .line 4
    const-string v3, "Scope cannot be empty or null."

    invoke-static {p2, v3}, Lbir;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-static {p1}, Larz;->a(Landroid/accounts/Account;)V

    .line 6
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x802c80

    .line 7
    invoke-static {v3, v4}, Lbei;->b(Landroid/content/Context;I)V
    :try_end_0
    .catch Lbeh; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lbeg; {:try_start_0 .. :try_end_0} :catch_4

    new-instance v3, Landroid/os/Bundle;

    .line 11
    invoke-direct {v3, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 13
    const-string v4, "clientPackageName"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Larz;->b:Ljava/lang/String;

    .line 14
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 15
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    nop

    .line 16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-string v2, "service_connection_start_time_millis"

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 17
    invoke-static {p0}, Lccv;->b(Landroid/content/Context;)V

    .line 18
    sget-object v2, Ldsy;->a:Ldsy;

    .line 19
    invoke-virtual {v2}, Ldsy;->b()Ldsz;

    move-result-object v2

    invoke-interface {v2}, Ldsz;->b()Z

    move-result v2

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_3

    .line 20
    sget-object v2, Lbdy;->a:Lbdy;

    const v7, 0x1110e58

    .line 21
    invoke-virtual {v2, p0, v7}, Lbdz;->a(Landroid/content/Context;I)I

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_1

    .line 22
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sget-object v7, Ldsy;->a:Ldsy;

    .line 23
    invoke-virtual {v7}, Ldsy;->b()Ldsz;

    move-result-object v7

    invoke-interface {v7}, Ldsz;->a()Ldpf;

    move-result-object v7

    iget-object v7, v7, Ldpf;->a:Ldkk;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_2

    add-int/lit8 v10, v9, 0x1

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 24
    check-cast v9, Ljava/lang/String;

    .line 25
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    move v9, v10

    goto :goto_0

    .line 26
    :cond_2
    new-instance v2, Lash;

    invoke-direct {v2, p0}, Lash;-><init>(Landroid/content/Context;)V

    .line 27
    const-string v7, "Account name cannot be null!"

    invoke-static {p1, v7}, Lbir;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28
    const-string v7, "Scope cannot be null!"

    invoke-static {p2, v7}, Lbir;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lbha;->a()Lbgz;

    move-result-object v7

    new-array v8, v5, [Lbdv;

    .line 29
    sget-object v9, Larx;->e:Lbdv;

    aput-object v9, v8, v6

    iput-object v8, v7, Lbgz;->b:[Lbdv;

    new-instance v8, Lasf;

    .line 30
    invoke-direct {v8, p1, p2, v3}, Lasf;-><init>(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    iput-object v8, v7, Lbgz;->a:Lbgs;

    .line 31
    invoke-virtual {v7}, Lbgz;->a()Lbha;

    move-result-object v7

    .line 32
    invoke-virtual {v2, v7}, Lbes;->b(Lbha;)Lbpi;

    move-result-object v2

    .line 33
    :try_start_1
    invoke-static {v2}, Larz;->a(Lbpi;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 34
    invoke-static {v2}, Larz;->a(Ljava/lang/Object;)V

    .line 35
    invoke-static {v2}, Larz;->a(Landroid/os/Bundle;)Lcom/google/android/gms/auth/TokenData;

    move-result-object p0
    :try_end_1
    .catch Lbep; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 60
    :catch_0
    move-exception v2

    sget-object v7, Larz;->d:Lbjb;

    new-array v8, v4, [Ljava/lang/Object;

    const-string v9, "token retrieval"

    aput-object v9, v8, v6

    .line 36
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v5

    .line 37
    const-string v2, "%s failed via GoogleAuthServiceClient, falling back to previous approach:\n%s"

    invoke-virtual {v7, v2, v8}, Lbjb;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    :cond_3
    :goto_1
    sget-object v2, Larz;->c:Landroid/content/ComponentName;

    new-instance v7, Lbdr;

    .line 38
    invoke-direct {v7}, Lbdr;-><init>()V

    .line 39
    invoke-static {p0}, Lbid;->a(Landroid/content/Context;)Lbid;

    move-result-object p0

    .line 40
    :try_start_2
    invoke-virtual {p0, v2, v7, v1}, Lbid;->a(Landroid/content/ComponentName;Landroid/content/ServiceConnection;Ljava/lang/String;)Z

    move-result v8
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_3

    if-eqz v8, :cond_6

    .line 43
    :try_start_3
    invoke-virtual {v7}, Lbdr;->a()Landroid/os/IBinder;

    move-result-object v8

    if-nez v8, :cond_4

    const/4 v8, 0x0

    goto :goto_2

    .line 59
    :cond_4
    const-string v9, "com.google.android.auth.IAuthManagerService"

    .line 44
    invoke-interface {v8, v9}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v9

    .line 45
    instance-of v10, v9, Larv;

    if-eqz v10, :cond_5

    .line 46
    move-object v8, v9

    check-cast v8, Larv;

    goto :goto_2

    :cond_5
    new-instance v9, Larv;

    .line 47
    invoke-direct {v9, v8}, Larv;-><init>(Landroid/os/IBinder;)V

    move-object v8, v9

    .line 48
    :goto_2
    invoke-virtual {v8}, Lact;->h()Landroid/os/Parcel;

    move-result-object v9

    .line 49
    invoke-static {v9, p1}, Lacv;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 50
    invoke-virtual {v9, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    invoke-static {v9, v3}, Lacv;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x5

    .line 52
    invoke-virtual {v8, p1, v9}, Lact;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 53
    sget-object p2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, p2}, Lacv;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 55
    invoke-static {p2}, Larz;->a(Ljava/lang/Object;)V

    .line 56
    invoke-static {p2}, Larz;->a(Landroid/os/Bundle;)Lcom/google/android/gms/auth/TokenData;

    move-result-object p1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 59
    invoke-virtual {p0, v2, v7}, Lbid;->a(Landroid/content/ComponentName;Landroid/content/ServiceConnection;)V

    move-object p0, p1

    :goto_3
    iget-object p0, p0, Lcom/google/android/gms/auth/TokenData;->b:Ljava/lang/String;

    return-object p0

    .line 58
    :catchall_0
    move-exception p1

    goto :goto_5

    .line 61
    :catch_1
    move-exception p1

    goto :goto_4

    :catch_2
    move-exception p1

    :goto_4
    :try_start_4
    sget-object p2, Larz;->d:Lbjb;

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v6

    aput-object p1, v3, v5

    iget-object v4, p2, Lbjb;->a:Ljava/lang/String;

    .line 57
    invoke-virtual {p2, v1, v3}, Lbjb;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Ljava/io/IOException;

    .line 58
    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 59
    :goto_5
    invoke-virtual {p0, v2, v7}, Lbid;->a(Landroid/content/ComponentName;Landroid/content/ServiceConnection;)V

    .line 60
    throw p1

    .line 42
    :cond_6
    new-instance p0, Ljava/io/IOException;

    .line 61
    const-string p1, "Could not bind to service."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :catch_3
    move-exception p0

    sget-object p1, Larz;->d:Lbjb;

    new-array p2, v5, [Ljava/lang/Object;

    .line 41
    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v6

    const-string v0, "SecurityException while bind to auth service: %s"

    invoke-virtual {p1, v0, p2}, Lbjb;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Ljava/io/IOException;

    .line 42
    const-string p2, "SecurityException while binding to Auth service."

    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 9
    :catch_4
    move-exception p0

    new-instance p1, Lary;

    .line 8
    invoke-virtual {p0}, Lbeg;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lary;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :catch_5
    move-exception p0

    new-instance p1, Lasa;

    .line 9
    invoke-virtual {p0}, Lbeh;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Landroid/content/Intent;

    iget-object p0, p0, Lbel;->a:Landroid/content/Intent;

    .line 10
    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 9
    invoke-direct {p1, p2}, Lasa;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6
.end method

.method public static a(Landroid/accounts/Account;)V
    .locals 5

    if-eqz p0, :cond_3

    .line 113
    iget-object v0, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 114
    sget-object v0, Larz;->a:[Ljava/lang/String;

    .line 115
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 116
    iget-object v4, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 117
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 116
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 117
    const-string v0, "Account type not supported"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 113
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 114
    const-string v0, "Account name cannot be empty!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 0
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 112
    const-string v0, "Account cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static a(Ljava/lang/Object;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 119
    return-void

    .line 0
    :cond_0
    sget-object p0, Larz;->d:Lbjb;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Service call returned null."

    aput-object v2, v0, v1

    .line 118
    const-string v1, "GoogleAuthUtil"

    invoke-virtual {p0, v1, v0}, Lbjb;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p0, Ljava/io/IOException;

    .line 119
    const-string v0, "Service unavailable."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
