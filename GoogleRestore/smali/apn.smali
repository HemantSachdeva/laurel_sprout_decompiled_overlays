.class public final Lapn;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field static final a:Lctr;

.field private static final b:Lacw;

.field private static final c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lacw;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "CidGenerator"

    aput-object v3, v1, v2

    .line 1
    invoke-direct {v0, v1}, Lacw;-><init>([Ljava/lang/String;)V

    sput-object v0, Lapn;->b:Lacw;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lapn;->c:Ljava/lang/Object;

    new-instance v0, Lcsa;

    new-instance v1, Ljava/util/LinkedHashMap;

    .line 2
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v0, v1}, Lcsa;-><init>(Ljava/util/Map;)V

    sput-object v0, Lapn;->a:Lctr;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v2, v1

    goto :goto_0

    .line 3
    :cond_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, -0x2

    and-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v4, "%016x"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 0
    :goto_0
    if-nez v2, :cond_1

    return-object v1

    :cond_1
    sget-object v3, Lapn;->c:Ljava/lang/Object;

    .line 4
    monitor-enter v3

    :try_start_0
    sget-object v4, Lapn;->a:Lctr;

    if-eqz p0, :cond_3

    check-cast v4, Lcrv;

    .line 5
    invoke-virtual {v4}, Lcrv;->e()Ljava/util/Map;

    move-result-object v4

    invoke-static {v4, p0}, Lcsy;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-nez v4, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    invoke-static {v4, p1}, Lcsy;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :cond_3
    nop

    .line 7
    :goto_1
    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_4

    .line 8
    :try_start_1
    invoke-static {p0, v2}, Lbun;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v0

    goto :goto_2

    .line 12
    :catch_0
    move-exception v2

    :try_start_2
    sget-object v4, Lapn;->b:Lacw;

    .line 9
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v2, v0}, Laqd;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 8
    :goto_2
    if-eqz v1, :cond_4

    sget-object v0, Lapn;->a:Lctr;

    .line 10
    invoke-interface {v0, p0, p1, v1}, Lctr;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 11
    :cond_4
    nop

    :goto_3
    monitor-exit v3

    return-object v1

    .line 3
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
