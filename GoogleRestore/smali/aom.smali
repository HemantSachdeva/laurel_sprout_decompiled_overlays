.class public final Laom;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final synthetic a:I

.field private static final b:Lacw;

.field private static c:Ljava/lang/Long;

.field private static d:Lcrm;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lacw;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "AndroidUtils"

    aput-object v3, v1, v2

    .line 1
    invoke-direct {v0, v1}, Lacw;-><init>([Ljava/lang/String;)V

    sput-object v0, Laom;->b:Lacw;

    const/4 v0, 0x0

    sput-object v0, Laom;->c:Ljava/lang/Long;

    sput-object v0, Laom;->d:Lcrm;

    return-void
.end method

.method public static a(Landroid/content/Context;)J
    .locals 5

    .line 2
    sget-object v0, Land;->ao:Lccv;

    invoke-virtual {v0}, Lccv;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Land;->c:Lccv;

    .line 3
    invoke-virtual {p0}, Lccv;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    sget-object v0, Laom;->c:Ljava/lang/Long;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    goto :goto_0

    .line 15
    :cond_1
    sget-object p0, Laom;->c:Ljava/lang/Long;

    .line 17
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 4
    :cond_2
    :goto_0
    nop

    .line 5
    const-string v0, "Must not be called on the main application thread"

    invoke-static {v0}, Laqe;->b(Ljava/lang/String;)V

    sget-object v0, Laom;->d:Lcrm;

    if-nez v0, :cond_3

    new-instance v0, Laol;

    .line 6
    invoke-direct {v0, p0}, Laol;-><init>(Landroid/content/Context;)V

    sput-object v0, Laom;->d:Lcrm;

    :cond_3
    :try_start_0
    sget-object p0, Laom;->d:Lcrm;

    .line 7
    invoke-interface {p0}, Lcrm;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbcy;

    new-instance v0, Lbcx;

    .line 8
    invoke-direct {v0}, Lbcx;-><init>()V

    invoke-virtual {p0, v0}, Lbes;->a(Lbha;)Lbpi;

    move-result-object p0

    const-wide/16 v3, 0x3e8

    .line 9
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v3, v4, v0}, Lbqb;->a(Lbpi;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 10
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    sput-object p0, Laom;->c:Ljava/lang/Long;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 17
    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_1

    :catch_3
    move-exception p0

    :goto_1
    sget-object v0, Laom;->b:Lacw;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 11
    const-string v4, ""

    invoke-virtual {v0, v4, p0, v3}, Laqd;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 12
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    sput-object p0, Laom;->c:Ljava/lang/Long;

    .line 10
    :goto_2
    sget-object p0, Laom;->c:Ljava/lang/Long;

    if-eqz p0, :cond_4

    .line 13
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long p0, v3, v1

    if-nez p0, :cond_5

    :cond_4
    sget-object p0, Land;->ap:Lccv;

    .line 14
    invoke-virtual {p0}, Lccv;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_5

    sget-object p0, Land;->c:Lccv;

    .line 16
    invoke-virtual {p0}, Lccv;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    sput-object p0, Laom;->c:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_5
    sget-object p0, Laom;->c:Ljava/lang/Long;

    .line 15
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method
