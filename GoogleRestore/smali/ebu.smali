.class final Lebu;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lebx;


# direct methods
.method public constructor <init>(Lebx;)V
    .locals 0

    iput-object p1, p0, Lebu;->a:Lebx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lebu;->a:Lebx;

    iget-object v0, v0, Lebx;->f:Lefx;

    check-cast v0, Lefc;

    iget-object v0, v0, Lefc;->a:Lefs;

    iget-object v0, v0, Lefs;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "Channel must have been shut down"

    invoke-static {v0, v1}, Lcrj;->b(ZLjava/lang/Object;)V

    return-void
.end method
