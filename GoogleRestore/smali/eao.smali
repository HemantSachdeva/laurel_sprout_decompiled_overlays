.class final Leao;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lebh;


# instance fields
.field public final a:Lebh;

.field public final b:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lebh;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leao;->a:Lebh;

    .line 1
    const-string p1, "appExecutor"

    invoke-static {p2, p1}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, Leao;->b:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    iget-object v0, p0, Leao;->a:Lebh;

    check-cast v0, Ldzj;

    iget-object v0, v0, Ldzj;->a:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Leao;->a:Lebh;

    .line 2
    invoke-interface {v0}, Lebh;->close()V

    return-void
.end method
