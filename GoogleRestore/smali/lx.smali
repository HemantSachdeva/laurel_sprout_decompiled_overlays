.class final Llx;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lmc;

.field private final b:Lma;


# direct methods
.method public constructor <init>(Lmc;Lma;)V
    .locals 0

    iput-object p1, p0, Llx;->a:Lmc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Llx;->b:Lma;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Llx;->a:Lmc;

    iget-object v0, v0, Lmc;->c:Lkp;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lkp;->b:Lkn;

    if-eqz v0, :cond_0

    .line 1
    invoke-interface {v0}, Lkn;->o()V

    :cond_0
    iget-object v0, p0, Llx;->a:Lmc;

    iget-object v0, v0, Lmc;->f:Llf;

    .line 2
    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Llx;->b:Lma;

    invoke-virtual {v0}, Llb;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Llx;->a:Lmc;

    iget-object v1, p0, Llx;->b:Lma;

    iput-object v1, v0, Lmc;->i:Lma;

    :cond_1
    iget-object v0, p0, Llx;->a:Lmc;

    const/4 v1, 0x0

    iput-object v1, v0, Lmc;->k:Llx;

    return-void
.end method
