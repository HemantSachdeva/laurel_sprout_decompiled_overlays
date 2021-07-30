.class final synthetic Lapt;
.super Ljava/lang/Object;

# interfaces
.implements Lcrm;


# instance fields
.field private final a:Lapx;


# direct methods
.method public constructor <init>(Lapx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lapt;->a:Lapx;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lapt;->a:Lapx;

    sget-object v1, Lapx;->a:Laqd;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Start loading FRP status"

    invoke-virtual {v1, v3, v2}, Laqd;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v0, Lapx;->e:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v1}, Ldab;->a(Ljava/util/concurrent/ScheduledExecutorService;)Lczw;

    move-result-object v1

    new-instance v2, Lapv;

    invoke-direct {v2, v0}, Lapv;-><init>(Lapx;)V

    invoke-interface {v1, v2}, Lczv;->a(Ljava/util/concurrent/Callable;)Lczu;

    move-result-object v1

    sget-wide v2, Lapx;->b:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v0, v0, Lapx;->f:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v1, v2, v3, v4, v0}, Ldab;->a(Lczu;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lczu;

    move-result-object v0

    return-object v0
.end method
