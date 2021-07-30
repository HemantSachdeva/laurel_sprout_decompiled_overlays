.class final Lefe;
.super Ledt;
.source "PG"


# instance fields
.field final synthetic a:Lefs;


# direct methods
.method public constructor <init>(Lefs;)V
    .locals 0

    iput-object p1, p0, Lefe;->a:Lefs;

    .line 1
    invoke-direct {p0}, Ledt;-><init>()V

    return-void
.end method


# virtual methods
.method protected final b()V
    .locals 1

    iget-object v0, p0, Lefe;->a:Lefs;

    .line 2
    invoke-virtual {v0}, Lefs;->d()V

    return-void
.end method

.method protected final c()V
    .locals 1

    iget-object v0, p0, Lefe;->a:Lefs;

    iget-object v0, v0, Lefs;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lefe;->a:Lefs;

    .line 4
    invoke-virtual {v0}, Lefs;->e()V

    return-void
.end method
