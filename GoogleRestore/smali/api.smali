.class public final Lapi;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Laqd;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lacw;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "BackupHttpRequestUtil"

    aput-object v3, v1, v2

    .line 1
    invoke-direct {v0, v1}, Lacw;-><init>([Ljava/lang/String;)V

    sput-object v0, Lapi;->a:Laqd;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    .line 87
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget v0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lapi;->a:Laqd;

    .line 88
    invoke-virtual {p1, p0}, Laqd;->a(Ljava/lang/Throwable;)V

    .line 87
    :goto_0
    return v0
.end method

.method public static a()Lapi;
    .locals 1

    new-instance v0, Lapi;

    invoke-direct {v0}, Lapi;-><init>()V

    return-object v0
.end method

.method private static final a(Landroid/content/Context;Ljava/lang/String;[B)Laua;
    .locals 12

    .line 2
    const-string v0, "GoogleHttpServiceClient"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v3, Lblk;

    .line 3
    invoke-direct {v3, p0}, Lblk;-><init>(Landroid/content/Context;)V

    iget-object v4, v3, Lblg;->b:Lblf;

    sget-object v5, Lblf;->c:Lblf;

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-ne v4, v5, :cond_0

    goto/16 :goto_3

    .line 49
    :cond_0
    iget-object v4, v3, Lblg;->a:Lblj;

    .line 4
    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5
    invoke-virtual {v4}, Lblj;->a()Z

    move-result v8

    if-nez v8, :cond_1

    .line 19
    invoke-virtual {v4}, Lblj;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v8, v1

    goto/16 :goto_2

    .line 26
    :cond_1
    :try_start_1
    iget-object v8, v4, Lblj;->b:Lbll;

    if-nez v8, :cond_2

    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    if-eq v8, v9, :cond_2

    iget-object v8, v4, Lblj;->a:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v9, 0x1f4

    .line 7
    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v9, v10, v11}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v8

    if-nez v8, :cond_2

    new-instance v8, Ljava/lang/Throwable;

    .line 8
    invoke-direct {v8}, Ljava/lang/Throwable;-><init>()V

    const-string v9, "Timeout on service connection"

    invoke-static {v0, v9, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v8, v4, Lblj;->a:Ljava/util/concurrent/CountDownLatch;

    .line 9
    invoke-virtual {v8}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_2
    iget-object v8, v4, Lblj;->b:Lbll;

    if-eqz v8, :cond_3

    iget-object v8, v4, Lblj;->b:Lbll;

    .line 10
    invoke-virtual {v8}, Lact;->h()Landroid/os/Parcel;

    move-result-object v9

    .line 11
    invoke-virtual {v9, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v8, v7, v9}, Lact;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v5

    .line 13
    sget-object v8, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v5, v8}, Lacv;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    .line 14
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 16
    :cond_3
    move-object v8, v1

    :goto_0
    :try_start_2
    invoke-virtual {v4}, Lblj;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_8

    :catch_0
    move-exception v5

    .line 15
    :try_start_3
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x20

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Interrupted waiting for binder: "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 78
    :catch_1
    move-exception v5

    const-string v8, "Exception in Google Http Service: "

    .line 17
    invoke-static {v0, v8, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 16
    :goto_1
    :try_start_4
    invoke-virtual {v4}, Lblj;->b()V

    move-object v8, v1

    .line 19
    :goto_2
    if-eqz v8, :cond_6

    const-string v0, "block"

    .line 20
    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const-string v4, "GoogleURLConnFactory"

    if-nez v0, :cond_7

    .line 22
    :try_start_5
    iget-object v0, v3, Lblg;->b:Lblf;

    sget-object v5, Lblf;->a:Lblf;

    if-ne v0, v5, :cond_6

    const-string v0, "rewrite"

    .line 23
    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 24
    invoke-static {v0}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v0}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_4
    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 25
    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xc

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Rewrote "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_5
    new-instance v2, Ljava/net/URL;

    .line 26
    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    :cond_6
    goto :goto_3

    .line 20
    :cond_7
    const-string p0, "name"

    .line 21
    invoke-virtual {v8, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0xd

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Blocked by "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lblh;

    .line 22
    invoke-direct {p0, v8}, Lblh;-><init>(Landroid/os/Bundle;)V

    throw p0

    .line 27
    :goto_3
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 28
    const v2, 0xea60

    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 29
    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 30
    instance-of v2, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v2, :cond_8

    iget-object v2, v3, Lblk;->c:Ljavax/net/ssl/SSLSocketFactory;

    .line 31
    move-object v3, v0

    check-cast v3, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v3, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 32
    :cond_8
    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    const-string v1, "POST"

    .line 33
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v1, "User-Agent"

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lapi;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const-string v3, "com.google.android.gms"

    .line 35
    invoke-static {p0, v3}, Lapi;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x2e

    .line 36
    invoke-static {v4}, Lcrd;->a(C)Lcrd;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 37
    invoke-static {p0}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-virtual {v4, p0}, Lcrd;->b(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p0

    new-instance v4, Ljava/util/ArrayList;

    .line 39
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 40
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 41
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 42
    :cond_9
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 43
    instance-of v4, p0, Ljava/util/List;

    if-eqz v4, :cond_b

    .line 44
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a

    .line 45
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_5

    .line 86
    :cond_a
    new-instance p0, Ljava/util/NoSuchElementException;

    .line 46
    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    .line 47
    :cond_b
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 48
    :cond_c
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 49
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_c

    move-object p0, v4

    .line 50
    :goto_5
    check-cast p0, Ljava/lang/String;

    .line 51
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v5, v6, [Ljava/lang/Object;

    .line 52
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x0

    aput-object v3, v5, v6

    aput-object p0, v5, v7

    const/4 p0, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, p0

    const-string p0, "Gms-Backup/%s (gzip), %s/%d"

    .line 51
    invoke-static {v4, p0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 53
    invoke-virtual {v0, v1, p0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Content-Type"

    const-string v1, "application/octet-stream"

    .line 54
    invoke-virtual {v0, p0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 56
    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 57
    new-instance p0, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 58
    invoke-virtual {p0, p2}, Ljava/io/DataOutputStream;->write([B)V

    .line 59
    invoke-virtual {p0}, Ljava/io/DataOutputStream;->flush()V

    .line 60
    invoke-virtual {p0}, Ljava/io/DataOutputStream;->close()V

    sget-object p0, Lapi;->a:Laqd;

    new-array p2, v7, [Ljava/lang/Object;

    aput-object p1, p2, v6

    const-string p1, "Calling getResponseCode for connection to url: %s"

    .line 61
    invoke-virtual {p0, p1, p2}, Laqd;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    new-array p2, v7, [Ljava/lang/Object;

    .line 63
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v6

    const-string v1, "Http Response Code: %d"

    invoke-virtual {p0, v1, p2}, Laqd;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    new-array p2, v7, [Ljava/lang/Object;

    .line 64
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    aput-object v1, p2, v6

    const-string v1, "Http Response Headers: %s"

    invoke-virtual {p0, v1, p2}, Laqd;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 p0, 0x1f7

    if-ne p1, p0, :cond_e

    const-string p1, "Retry-After"

    .line 65
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_d

    const/16 p1, 0x1f7

    goto :goto_6

    .line 85
    :cond_d
    const/16 p1, 0x1f7

    .line 65
    :cond_e
    :goto_6
    const/16 p0, 0xc8

    if-eq p1, p0, :cond_10

    new-instance p0, Lape;

    const-string p2, "Server rejected http request: "

    new-instance v1, Ljava/lang/String;

    .line 66
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcxg;->a(Ljava/io/InputStream;)[B

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 67
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {p2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_7

    .line 46
    :cond_f
    new-instance v1, Ljava/lang/String;

    .line 67
    invoke-direct {v1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p2, v1

    :goto_7
    invoke-direct {p0, p2, p1}, Lape;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 68
    :cond_10
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 70
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lcxg;->a(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-static {p0}, Ldie;->a([B)Ldie;

    move-result-object p0

    .line 71
    invoke-static {}, Ldjr;->b()Ldjr;

    move-result-object p1

    .line 72
    sget-object p2, Laua;->e:Laua;

    const/4 v1, 0x4

    .line 73
    invoke-virtual {p2, v1}, Ldkd;->b(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ldkd;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 74
    :try_start_7
    sget-object v1, Ldls;->a:Ldls;

    invoke-virtual {v1, p2}, Ldls;->a(Ljava/lang/Object;)Ldlw;

    move-result-object v1

    .line 75
    invoke-static {p0}, Ldif;->a(Ldie;)Ldif;

    move-result-object p0

    invoke-interface {v1, p2, p0, p1}, Ldlw;->a(Ljava/lang/Object;Ldlv;Ldjr;)V

    .line 76
    invoke-interface {v1, p2}, Ldlw;->d(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 83
    :try_start_8
    invoke-static {p2}, Ldkd;->a(Ldkd;)V

    .line 84
    check-cast p2, Laua;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v0, :cond_11

    .line 85
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_11
    return-object p2

    .line 81
    :catch_2
    move-exception p0

    .line 77
    :try_start_9
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Ldkn;

    if-eqz p1, :cond_12

    .line 78
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ldkn;

    throw p0

    .line 79
    :cond_12
    throw p0

    .line 67
    :catch_3
    move-exception p0

    .line 80
    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Ldkn;

    if-eqz p1, :cond_13

    .line 81
    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ldkn;

    throw p0

    .line 72
    :cond_13
    new-instance p1, Ldkn;

    .line 82
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ldkn;-><init>(Ljava/lang/String;)V

    throw p1

    .line 68
    :cond_14
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Missing response body"

    .line 69
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 86
    :catchall_1
    move-exception p0

    move-object v1, v0

    goto :goto_9

    .line 16
    :goto_8
    :try_start_a
    invoke-virtual {v4}, Lblj;->b()V

    .line 18
    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 16
    :catchall_2
    move-exception p0

    :goto_9
    if-eqz v1, :cond_15

    .line 85
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 86
    :cond_15
    goto :goto_b

    :goto_a
    throw p0

    :goto_b
    goto :goto_a
.end method

.method private static a(Ljava/lang/Exception;Lapk;I)V
    .locals 3

    sget-object v0, Lapi;->a:Laqd;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 89
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    .line 90
    const-string p1, "Transient error encountered during %s. Will retry %d more times."

    invoke-virtual {v0, p1, p0, v1}, Laqd;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Latq;)Laua;
    .locals 7

    .line 91
    invoke-virtual {p2}, Ldhi;->b()[B

    move-result-object v0

    .line 92
    invoke-static {p2}, Lapk;->a(Latq;)Lapk;

    move-result-object p2

    sget-object v1, Lapi;->a:Laqd;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    .line 93
    array-length v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v3, v6

    const-string v5, "sending request of type %s: %d bytes"

    invoke-virtual {v1, v5, v3}, Laqd;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    invoke-static {p1}, Land;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 95
    invoke-virtual {p2}, Lapk;->ordinal()I

    move-result v5

    if-eqz v5, :cond_3

    if-eq v5, v6, :cond_2

    if-eq v5, v2, :cond_1

    const/4 v2, 0x3

    if-eq v5, v2, :cond_0

    new-array v2, v6, [Ljava/lang/Object;

    .line 100
    invoke-virtual {p2}, Lapk;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 101
    const-string v4, "Unknown type of BackupRequest encountered when attempting to route url: %s"

    invoke-virtual {v1, v4, v2}, Laqd;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 105
    :cond_0
    nop

    .line 96
    const-string v1, "/cleardevice"

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    nop

    .line 97
    const-string v1, "/listdevices"

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    nop

    .line 98
    const-string v1, "/restore"

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    nop

    .line 99
    const-string v1, "/backup"

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 101
    :goto_0
    sget-object v1, Lapk;->c:Lapk;

    if-ne p2, v1, :cond_4

    sget-object v1, Land;->G:Lccv;

    .line 102
    invoke-virtual {v1}, Lccv;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_1

    .line 110
    :cond_4
    sget-object v1, Lapk;->a:Lapk;

    if-ne p2, v1, :cond_5

    sget-object v1, Land;->H:Lccv;

    .line 103
    invoke-virtual {v1}, Lccv;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_1

    :cond_5
    sget-object v1, Lapk;->b:Lapk;

    if-ne p2, v1, :cond_6

    sget-object v1, Land;->I:Lccv;

    .line 104
    invoke-virtual {v1}, Lccv;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_1

    :cond_6
    sget-object v1, Lapk;->d:Lapk;

    if-ne p2, v1, :cond_7

    sget-object v1, Land;->J:Lccv;

    .line 105
    invoke-virtual {v1}, Lccv;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_1

    :cond_7
    nop

    .line 102
    :goto_1
    add-int/lit8 v6, v6, -0x1

    :goto_2
    if-lez v6, :cond_9

    .line 106
    :try_start_0
    invoke-static {p1, v3, v0}, Lapi;->a(Landroid/content/Context;Ljava/lang/String;[B)Laua;

    move-result-object p1
    :try_end_0
    .catch Lape; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 109
    :catch_0
    move-exception v1

    .line 107
    invoke-static {v1, p2, v6}, Lapi;->a(Ljava/lang/Exception;Lapk;I)V

    goto :goto_3

    .line 99
    :catch_1
    move-exception v1

    iget v2, v1, Lape;->a:I

    const/16 v4, 0x1f7

    if-eq v2, v4, :cond_8

    .line 108
    invoke-static {v1, p2, v6}, Lapi;->a(Ljava/lang/Exception;Lapk;I)V

    .line 107
    :goto_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 109
    :cond_8
    throw v1

    .line 110
    :cond_9
    invoke-static {p1, v3, v0}, Lapi;->a(Landroid/content/Context;Ljava/lang/String;[B)Laua;

    move-result-object p1

    return-object p1
.end method
