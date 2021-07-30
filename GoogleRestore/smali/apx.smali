.class public final Lapx;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Laqd;

.field public static final b:J

.field public static c:Z


# instance fields
.field public final d:Lasl;

.field public final e:Ljava/util/concurrent/ScheduledExecutorService;

.field public final f:Ljava/util/concurrent/ScheduledExecutorService;

.field private final g:Landroid/content/Context;

.field private h:Lczu;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lacw;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "FrpHelper"

    aput-object v4, v2, v3

    .line 1
    invoke-direct {v0, v2}, Lacw;-><init>([Ljava/lang/String;)V

    sput-object v0, Lapx;->a:Laqd;

    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sput-wide v2, Lapx;->b:J

    sput-boolean v1, Lapx;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const/4 v0, 0x1

    const/16 v1, 0x9

    invoke-static {v0, v1}, Laqr;->a(II)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    iput-object v2, p0, Lapx;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 4
    invoke-static {v0, v1}, Laqr;->a(II)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lapx;->f:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lasl;

    .line 5
    invoke-static {p1}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lasl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lapx;->d:Lasl;

    iput-object p1, p0, Lapx;->g:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 6
    const-string v0, "This should be running on the main thread."

    invoke-static {v0}, Laqe;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lapx;->h:Lczu;

    if-eqz v0, :cond_0

    .line 7
    invoke-interface {v0}, Lczu;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lapx;->h:Lczu;

    .line 8
    invoke-interface {v0}, Lczu;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lapx;->h:Lczu;

    const/4 v1, 0x1

    .line 9
    invoke-interface {v0, v1}, Lczu;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 9

    .line 10
    new-instance v6, Laqm;

    new-instance v1, Lapt;

    invoke-direct {v1, p0}, Lapt;-><init>(Lapx;)V

    iget-object v2, p0, Lapx;->e:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v4, Lapu;->a:Laql;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 11
    const-wide/16 v7, 0x3e8

    invoke-static {v7, v8, v0}, Lapa;->a(JLjava/util/concurrent/TimeUnit;)Lapa;

    move-result-object v5

    const/4 v3, 0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Laqm;-><init>(Lcrm;Ljava/util/concurrent/ScheduledExecutorService;ILaql;Lapa;)V

    iput-object v6, p0, Lapx;->h:Lczu;

    if-eqz p1, :cond_0

    sget-object v0, Lapw;->a:Ljava/util/concurrent/Executor;

    .line 12
    invoke-interface {v6, p1, v0}, Lczu;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 3

    .line 13
    const-string v0, "This should be running on the main thread."

    invoke-static {v0}, Laqe;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lapx;->g:Landroid/content/Context;

    .line 14
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 16
    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    sget-boolean v0, Lapx;->c:Z

    if-eqz v0, :cond_0

    return v1

    :goto_0
    return v2
.end method
