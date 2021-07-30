.class public final Ldza;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ldyz;

.field private final b:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method public constructor <init>(Ldyz;Ljava/util/concurrent/ScheduledFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldza;->a:Ldyz;

    .line 1
    const-string p1, "future"

    invoke-static {p2, p1}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, Ldza;->b:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Ldza;->a:Ldyz;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ldyz;->b:Z

    iget-object v0, p0, Ldza;->b:Ljava/util/concurrent/ScheduledFuture;

    .line 2
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    return-void
.end method
