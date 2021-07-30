.class public final Lafv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lafq;


# static fields
.field public static final a:Lcua;

.field private static final g:J


# instance fields
.field public b:Ldqf;

.field public c:Ldqo;

.field public final d:Ljava/util/concurrent/ScheduledExecutorService;

.field public final e:Lafu;

.field public final f:Laft;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lafv;->g:J

    const-string v0, "com/google/android/apps/pixelmigrate/cloudrestore/googleone/GoogleOneGrpcHelperImpl"

    invoke-static {v0}, Lcua;->a(Ljava/lang/String;)Lcua;

    move-result-object v0

    sput-object v0, Lafv;->a:Lcua;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lafu;

    .line 2
    invoke-direct {v0, p0}, Lafu;-><init>(Lafv;)V

    iput-object v0, p0, Lafv;->e:Lafu;

    new-instance v0, Laft;

    .line 3
    invoke-direct {v0, p0}, Laft;-><init>(Lafv;)V

    iput-object v0, p0, Lafv;->f:Laft;

    .line 4
    const/4 v0, 0x2

    const/16 v1, 0x9

    invoke-static {v0, v1}, Laqr;->a(II)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lafv;->d:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/accounts/Account;)Ldvo;
    .locals 5

    :try_start_0
    new-instance v0, Lcpw;

    const-string v1, "oauth2:"

    .line 5
    sget-object v2, Ldtv;->a:Ldtv;

    .line 6
    invoke-virtual {v2}, Ldtv;->e()Ldtw;

    move-result-object v2

    invoke-interface {v2}, Ldtw;->d()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 11
    :cond_0
    new-instance v2, Ljava/lang/String;

    .line 5
    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 7
    :goto_0
    invoke-static {p0, p1, v1}, Larz;->a(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/util/Date;

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lafv;->g:J

    add-long/2addr v1, v3

    invoke-direct {p1, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-direct {v0, p0, p1}, Lcpw;-><init>(Ljava/lang/String;Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lary; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 5
    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    :goto_1
    sget-object p1, Lafv;->a:Lcua;

    invoke-virtual {p1}, Lctx;->a()Lcup;

    move-result-object p1

    .line 9
    check-cast p1, Lctz;

    invoke-interface {p1, p0}, Lctz;->a(Ljava/lang/Throwable;)V

    const/16 p0, 0xce

    const-string v0, "com/google/android/apps/pixelmigrate/cloudrestore/googleone/GoogleOneGrpcHelperImpl"

    const-string v1, "getGoogleOneOauthCredentials"

    const-string v2, "GoogleOneGrpcHelperImpl.java"

    invoke-interface {p1, v0, v1, p0, v2}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string p0, "Exception while getting access token"

    invoke-interface {p1, p0}, Lctz;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 8
    :goto_2
    new-instance p0, Lcpz;

    invoke-direct {p0}, Lcpz;-><init>()V

    iput-object v0, p0, Lcpz;->a:Lcpw;

    new-instance p1, Lcqa;

    iget-object p0, p0, Lcpz;->a:Lcpw;

    .line 10
    invoke-direct {p1, p0}, Lcqa;-><init>(Lcpw;)V

    .line 11
    new-instance p0, Ldzg;

    invoke-direct {p0, p1}, Ldzg;-><init>(Lcpv;)V

    return-object p0
.end method
