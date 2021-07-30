.class public final Ldez;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/util/Map;

.field private final b:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    new-instance v0, Lth;

    invoke-direct {v0}, Lth;-><init>()V

    iput-object v0, p0, Ldez;->a:Ljava/util/Map;

    iput-object p1, p0, Ldez;->b:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method final declared-synchronized a(Ljava/lang/String;Lddz;)Lbpi;
    .locals 6

    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/util/Pair;

    const-string v1, "*"

    .line 2
    invoke-direct {v0, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Ldez;->a:Ljava/util/Map;

    .line 3
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbpi;

    const/4 v1, 0x3

    if-eqz p1, :cond_1

    const-string p2, "FirebaseInstanceId"

    invoke-static {p2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1d

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Joining ongoing request for: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object p1

    :cond_1
    :try_start_1
    const-string p1, "FirebaseInstanceId"

    invoke-static {p1, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x18

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Making new request for: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_2
    iget-object p1, p2, Lddz;->a:Lcom/google/firebase/iid/FirebaseInstanceId;

    iget-object v1, p2, Lddz;->b:Ljava/lang/String;

    iget-object p2, p2, Lddz;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/firebase/iid/FirebaseInstanceId;->f:Ldef;

    new-instance v3, Landroid/os/Bundle;

    .line 6
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "scope"

    const-string v5, "*"

    .line 7
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "sender"

    .line 8
    invoke-virtual {v3, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "subtype"

    .line 9
    invoke-virtual {v3, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "appid"

    .line 10
    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "gmp_app_id"

    iget-object v4, v2, Ldef;->a:Ldbb;

    .line 11
    invoke-virtual {v4}, Ldbb;->c()Ldbd;

    move-result-object v4

    iget-object v4, v4, Ldbd;->b:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "gmsv"

    iget-object v4, v2, Ldef;->b:Ldeu;

    .line 12
    invoke-virtual {v4}, Ldeu;->e()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "osv"

    .line 13
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "app_ver"

    iget-object v4, v2, Ldef;->b:Ldeu;

    .line 14
    invoke-virtual {v4}, Ldeu;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "app_ver_name"

    iget-object v4, v2, Ldef;->b:Ldeu;

    .line 15
    invoke-virtual {v4}, Ldeu;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "firebase-app-name-hash"

    .line 16
    invoke-virtual {v2}, Ldef;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, v2, Ldef;->f:Ldga;

    .line 17
    invoke-interface {v1}, Ldga;->f()Lbpi;

    move-result-object v1

    invoke-static {v1}, Lbqb;->a(Lbpi;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldgg;

    iget-object v1, v1, Ldgg;->a:Ljava/lang/String;

    .line 18
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "Goog-Firebase-Installations-Auth"

    .line 19
    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 31
    :cond_3
    const-string v1, "FirebaseInstanceId"

    const-string v4, "FIS auth token is empty"

    .line 20
    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_0
    :try_start_3
    const-string v4, "FirebaseInstanceId"

    const-string v5, "Failed to get FIS auth token"

    .line 21
    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19
    :goto_1
    const-string v1, "cliv"

    const-string v4, "fiid-20.2.5"

    .line 22
    invoke-virtual {v3, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v2, Ldef;->e:Lddi;

    const-string v4, "fire-iid"

    .line 23
    invoke-interface {v1, v4}, Lddi;->a(Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x1

    if-eq v1, v4, :cond_4

    const-string v4, "Firebase-Client-Log-Type"

    invoke-static {v1}, Ldgy;->a(I)I

    move-result v1

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Firebase-Client"

    iget-object v4, v2, Ldef;->d:Ldgz;

    .line 25
    invoke-interface {v4}, Ldgz;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v1, v2, Ldef;->c:Ldfg;

    iget-object v2, v1, Ldfg;->c:Ldeu;

    .line 26
    invoke-virtual {v2}, Ldeu;->e()I

    move-result v2

    const v4, 0xb71b00

    if-lt v2, v4, :cond_5

    iget-object v1, v1, Ldfg;->b:Landroid/content/Context;

    .line 32
    invoke-static {v1}, Ldet;->a(Landroid/content/Context;)Ldet;

    move-result-object v1

    new-instance v2, Lder;

    .line 33
    invoke-virtual {v1}, Ldet;->a()I

    move-result v4

    .line 34
    invoke-direct {v2, v4, v3}, Lder;-><init>(ILandroid/os/Bundle;)V

    .line 33
    invoke-virtual {v1, v2}, Ldet;->a(Lder;)Lbpi;

    move-result-object v1

    sget-object v2, Lddr;->a:Ljava/util/concurrent/Executor;

    sget-object v3, Ldfa;->a:Lbom;

    .line 35
    invoke-virtual {v1, v2, v3}, Lbpi;->a(Ljava/util/concurrent/Executor;Lbom;)Lbpi;

    move-result-object v1

    goto :goto_2

    .line 40
    :cond_5
    iget-object v2, v1, Ldfg;->c:Ldeu;

    .line 27
    invoke-virtual {v2}, Ldeu;->a()Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v1, Ljava/io/IOException;

    const-string v2, "MISSING_INSTANCEID_SERVICE"

    .line 28
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lbqb;->a(Ljava/lang/Exception;)Lbpi;

    move-result-object v1

    goto :goto_2

    .line 29
    :cond_6
    invoke-virtual {v1, v3}, Ldfg;->b(Landroid/os/Bundle;)Lbpi;

    move-result-object v2

    sget-object v4, Lddr;->a:Ljava/util/concurrent/Executor;

    new-instance v5, Ldfb;

    .line 30
    invoke-direct {v5, v1, v3}, Ldfb;-><init>(Ldfg;Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {v2, v4, v5}, Lbpi;->b(Ljava/util/concurrent/Executor;Lbom;)Lbpi;

    move-result-object v1

    .line 35
    :goto_2
    sget-object v2, Lddr;->a:Ljava/util/concurrent/Executor;

    new-instance v3, Ldee;

    invoke-direct {v3}, Ldee;-><init>()V

    .line 36
    invoke-virtual {v1, v2, v3}, Lbpi;->a(Ljava/util/concurrent/Executor;Lbom;)Lbpi;

    move-result-object v1

    iget-object v2, p1, Lcom/google/firebase/iid/FirebaseInstanceId;->c:Ljava/util/concurrent/Executor;

    new-instance v3, Ldea;

    .line 37
    invoke-direct {v3, p1, p2}, Ldea;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lbpi;->a(Ljava/util/concurrent/Executor;Lbph;)Lbpi;

    move-result-object p1

    iget-object p2, p0, Ldez;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Ldey;

    .line 38
    invoke-direct {v1, p0, v0}, Ldey;-><init>(Ldez;Landroid/util/Pair;)V

    .line 39
    invoke-virtual {p1, p2, v1}, Lbpi;->b(Ljava/util/concurrent/Executor;Lbom;)Lbpi;

    move-result-object p1

    iget-object p2, p0, Ldez;->a:Ljava/util/Map;

    .line 40
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    .line 1
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
