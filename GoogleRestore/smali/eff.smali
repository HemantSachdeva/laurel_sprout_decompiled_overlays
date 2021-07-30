.class final Leff;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lefs;


# direct methods
.method public constructor <init>(Lefs;)V
    .locals 0

    iput-object p1, p0, Leff;->a:Lefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Leff;->a:Lefs;

    .line 1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lefs;->a(Z)V

    iget-object v1, v0, Lefs;->t:Lebx;

    .line 2
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lebx;->a(Ldxe;)V

    iget-object v1, v0, Lefs;->A:Ldvj;

    .line 3
    const/4 v2, 0x2

    const-string v3, "Entering IDLE state"

    invoke-virtual {v1, v2, v3}, Ldvj;->a(ILjava/lang/String;)V

    iget-object v1, v0, Lefs;->n:Lebo;

    .line 4
    sget-object v2, Ldvx;->d:Ldvx;

    invoke-virtual {v1, v2}, Lebo;->a(Ldvx;)V

    iget-object v1, v0, Lefs;->F:Ledt;

    .line 5
    invoke-virtual {v1}, Ledt;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v0}, Lefs;->d()V

    :cond_0
    return-void
.end method
