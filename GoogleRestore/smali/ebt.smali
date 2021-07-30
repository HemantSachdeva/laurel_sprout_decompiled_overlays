.class final Lebt;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lefx;


# direct methods
.method public constructor <init>(Lefx;)V
    .locals 0

    iput-object p1, p0, Lebt;->a:Lefx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lebt;->a:Lefx;

    check-cast v0, Lefc;

    iget-object v1, v0, Lefc;->a:Lefs;

    iget-object v1, v1, Lefs;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const-string v2, "Channel must have been shut down"

    invoke-static {v1, v2}, Lcrj;->b(ZLjava/lang/Object;)V

    iget-object v1, v0, Lefc;->a:Lefs;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lefs;->w:Z

    iget-object v1, v0, Lefc;->a:Lefs;

    .line 2
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lefs;->a(Z)V

    iget-object v0, v0, Lefc;->a:Lefs;

    .line 3
    invoke-virtual {v0}, Lefs;->i()V

    return-void
.end method
