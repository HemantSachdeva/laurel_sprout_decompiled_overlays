.class public final Ldfl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lcom/google/firebase/iid/FirebaseInstanceId;

.field private final b:J

.field private final c:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Lcom/google/firebase/iid/FirebaseInstanceId;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldfl;->a:Lcom/google/firebase/iid/FirebaseInstanceId;

    iput-wide p2, p0, Ldfl;->b:J

    .line 1
    invoke-virtual {p0}, Ldfl;->a()Landroid/content/Context;

    move-result-object p1

    const-string p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 2
    const/4 p2, 0x1

    const-string p3, "fiid-sync"

    invoke-virtual {p1, p2, p3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Ldfl;->c:Landroid/os/PowerManager$WakeLock;

    .line 3
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    return-void
.end method


# virtual methods
.method final a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Ldfl;->a:Lcom/google/firebase/iid/FirebaseInstanceId;

    iget-object v0, v0, Lcom/google/firebase/iid/FirebaseInstanceId;->d:Ldbb;

    .line 4
    invoke-virtual {v0}, Ldbb;->a()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method final b()Z
    .locals 2

    .line 5
    invoke-virtual {p0}, Ldfl;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final run()V
    .locals 8

    .line 8
    const-string v0, "FirebaseInstanceId"

    invoke-static {}, Ldfh;->a()Ldfh;

    move-result-object v1

    invoke-virtual {p0}, Ldfl;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Ldfh;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ldfl;->c:Landroid/os/PowerManager$WakeLock;

    .line 9
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Ldfl;->a:Lcom/google/firebase/iid/FirebaseInstanceId;

    .line 10
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/firebase/iid/FirebaseInstanceId;->a(Z)V

    iget-object v2, p0, Ldfl;->a:Lcom/google/firebase/iid/FirebaseInstanceId;

    iget-object v2, v2, Lcom/google/firebase/iid/FirebaseInstanceId;->e:Ldeu;

    .line 11
    invoke-virtual {v2}, Ldeu;->a()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Ldfl;->a:Lcom/google/firebase/iid/FirebaseInstanceId;

    .line 12
    invoke-virtual {v2, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->a(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-static {}, Ldfh;->a()Ldfh;

    move-result-object v0

    invoke-virtual {p0}, Ldfl;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldfh;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    iget-object v0, p0, Ldfl;->c:Landroid/os/PowerManager$WakeLock;

    .line 14
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    return-void

    .line 15
    :cond_2
    :try_start_1
    invoke-static {}, Ldfh;->a()Ldfh;

    move-result-object v2

    invoke-virtual {p0}, Ldfl;->a()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v2, Ldfh;->b:Ljava/lang/Boolean;

    if-nez v5, :cond_4

    const-string v5, "android.permission.ACCESS_NETWORK_STATE"

    .line 16
    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    .line 33
    :cond_3
    const/4 v3, 0x0

    .line 16
    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Ldfh;->b:Ljava/lang/Boolean;

    :cond_4
    iget-object v3, v2, Ldfh;->a:Ljava/lang/Boolean;

    .line 17
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    iget-object v2, v2, Ldfh;->b:Ljava/lang/Boolean;

    .line 18
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 19
    invoke-virtual {p0}, Ldfl;->b()Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v2, Ldfk;

    .line 53
    invoke-direct {v2, p0}, Ldfk;-><init>(Ldfl;)V

    .line 54
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->i()V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 55
    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Ldfk;->a:Ldfl;

    .line 56
    invoke-virtual {v4}, Ldfl;->a()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    invoke-static {}, Ldfh;->a()Ldfh;

    move-result-object v0

    invoke-virtual {p0}, Ldfl;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldfh;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    .line 14
    :cond_5
    return-void

    :cond_6
    :try_start_2
    iget-object v2, p0, Ldfl;->a:Lcom/google/firebase/iid/FirebaseInstanceId;

    .line 20
    invoke-virtual {v2}, Lcom/google/firebase/iid/FirebaseInstanceId;->e()Ldfi;

    move-result-object v2

    iget-object v3, p0, Ldfl;->a:Lcom/google/firebase/iid/FirebaseInstanceId;

    .line 21
    invoke-virtual {v3, v2}, Lcom/google/firebase/iid/FirebaseInstanceId;->a(Ldfi;)Z

    move-result v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_7

    goto/16 :goto_3

    .line 14
    :cond_7
    :try_start_3
    iget-object v3, p0, Ldfl;->a:Lcom/google/firebase/iid/FirebaseInstanceId;

    iget-object v4, v3, Lcom/google/firebase/iid/FirebaseInstanceId;->d:Ldbb;

    .line 22
    invoke-static {v4}, Ldeu;->a(Ldbb;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lcom/google/firebase/iid/FirebaseInstanceId;->d:Ldbb;

    .line 23
    invoke-static {v5}, Lcom/google/firebase/iid/FirebaseInstanceId;->a(Ldbb;)V

    .line 24
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    if-eq v5, v6, :cond_e

    const-string v5, "*"

    const-string v6, "fcm"

    .line 25
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "gcm"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    :cond_8
    const/4 v5, 0x0

    .line 26
    invoke-static {v5}, Lbqb;->a(Ljava/lang/Object;)Lbpi;

    move-result-object v5

    iget-object v6, v3, Lcom/google/firebase/iid/FirebaseInstanceId;->c:Ljava/util/concurrent/Executor;

    new-instance v7, Lddw;

    .line 27
    invoke-direct {v7, v3, v4}, Lddw;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v5, v6, v7}, Lbpi;->b(Ljava/util/concurrent/Executor;Lbom;)Lbpi;

    move-result-object v4

    .line 29
    invoke-virtual {v3, v4}, Lcom/google/firebase/iid/FirebaseInstanceId;->a(Lbpi;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldei;

    iget-object v3, v3, Ldei;->a:Ljava/lang/String;

    if-nez v3, :cond_9

    const-string v2, "Token retrieval failed: null"

    .line 30
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 51
    :cond_9
    if-eqz v2, :cond_a

    iget-object v2, v2, Ldfi;->b:Ljava/lang/String;

    .line 31
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    :cond_a
    const-string v2, "[DEFAULT]"

    iget-object v4, p0, Ldfl;->a:Lcom/google/firebase/iid/FirebaseInstanceId;

    iget-object v4, v4, Lcom/google/firebase/iid/FirebaseInstanceId;->d:Ldbb;

    .line 32
    invoke-virtual {v4}, Ldbb;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "Invoking onNewToken for app: "

    iget-object v4, p0, Ldfl;->a:Lcom/google/firebase/iid/FirebaseInstanceId;

    iget-object v4, v4, Lcom/google/firebase/iid/FirebaseInstanceId;->d:Ldbb;

    .line 33
    invoke-virtual {v4}, Ldbb;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 40
    :cond_b
    new-instance v4, Ljava/lang/String;

    .line 33
    invoke-direct {v4, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :cond_c
    :goto_2
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.google.firebase.messaging.NEW_TOKEN"

    .line 34
    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "token"

    .line 35
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    invoke-virtual {p0}, Ldfl;->a()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;

    .line 37
    invoke-direct {v4, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "com.google.firebase.MESSAGING_EVENT"

    .line 38
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "wrapped_intent"

    .line 39
    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 40
    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 21
    :cond_d
    :goto_3
    :try_start_4
    iget-object v2, p0, Ldfl;->a:Lcom/google/firebase/iid/FirebaseInstanceId;

    .line 41
    invoke-virtual {v2, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->a(Z)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    .line 43
    :cond_e
    :try_start_5
    new-instance v2, Ljava/io/IOException;

    const-string v3, "MAIN_THREAD"

    .line 42
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 48
    :catch_0
    move-exception v2

    :try_start_6
    const-string v2, "Token retrieval failed with SecurityException. Will retry token retrieval"

    .line 43
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 60
    :catch_1
    move-exception v2

    .line 44
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SERVICE_NOT_AVAILABLE"

    .line 45
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    const-string v4, "INTERNAL_SERVER_ERROR"

    .line 46
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    const-string v4, "InternalServerError"

    .line 47
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    goto :goto_4

    .line 49
    :cond_f
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_10

    .line 52
    const-string v2, "Token retrieval failed without exception message. Will retry token retrieval"

    .line 50
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 52
    :cond_10
    throw v2

    .line 47
    :cond_11
    :goto_4
    nop

    .line 48
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x34

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Token retrieval failed: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Will retry token retrieval"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :goto_5
    iget-object v2, p0, Ldfl;->a:Lcom/google/firebase/iid/FirebaseInstanceId;

    iget-wide v3, p0, Ldfl;->b:J

    .line 51
    invoke-virtual {v2, v3, v4}, Lcom/google/firebase/iid/FirebaseInstanceId;->a(J)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 13
    :goto_6
    invoke-static {}, Ldfh;->a()Ldfh;

    move-result-object v0

    invoke-virtual {p0}, Ldfl;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldfh;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto/16 :goto_0

    .line 14
    :catchall_0
    move-exception v0

    goto :goto_7

    .line 33
    :catch_2
    move-exception v2

    .line 57
    :try_start_7
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x5d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Topic sync or token retrieval failed on hard failure exceptions: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Won\'t retry the operation."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 58
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Ldfl;->a:Lcom/google/firebase/iid/FirebaseInstanceId;

    .line 59
    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->a(Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 13
    invoke-static {}, Ldfh;->a()Ldfh;

    move-result-object v0

    invoke-virtual {p0}, Ldfl;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldfh;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto/16 :goto_0

    .line 14
    :cond_12
    return-void

    .line 13
    :goto_7
    invoke-static {}, Ldfh;->a()Ldfh;

    move-result-object v1

    invoke-virtual {p0}, Ldfl;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Ldfh;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Ldfl;->c:Landroid/os/PowerManager$WakeLock;

    .line 14
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 60
    :cond_13
    goto :goto_9

    :goto_8
    throw v0

    :goto_9
    goto :goto_8
.end method
