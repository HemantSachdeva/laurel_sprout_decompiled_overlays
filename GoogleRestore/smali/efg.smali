.class final Lefg;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ldxe;

.field final synthetic b:Ldvx;

.field final synthetic c:Lefh;


# direct methods
.method public constructor <init>(Lefh;Ldxe;Ldvx;)V
    .locals 0

    iput-object p1, p0, Lefg;->c:Lefh;

    iput-object p2, p0, Lefg;->a:Ldxe;

    iput-object p3, p0, Lefg;->b:Ldvx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lefg;->c:Lefh;

    iget-object v1, v0, Lefh;->b:Lefs;

    iget-object v2, v1, Lefs;->p:Lefh;

    if-eq v0, v2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lefg;->a:Ldxe;

    .line 1
    invoke-virtual {v1, v0}, Lefs;->a(Ldxe;)V

    iget-object v0, p0, Lefg;->b:Ldvx;

    .line 2
    sget-object v1, Ldvx;->e:Ldvx;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lefg;->c:Lefh;

    iget-object v0, v0, Lefh;->b:Lefs;

    iget-object v0, v0, Lefs;->A:Ldvj;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lefg;->b:Ldvx;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lefg;->a:Ldxe;

    aput-object v4, v2, v3

    .line 3
    const-string v3, "Entering {0} state with picker: {1}"

    invoke-virtual {v0, v1, v3, v2}, Ldvj;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lefg;->c:Lefh;

    iget-object v0, v0, Lefh;->b:Lefs;

    iget-object v0, v0, Lefs;->n:Lebo;

    iget-object v1, p0, Lefg;->b:Ldvx;

    .line 4
    invoke-virtual {v0, v1}, Lebo;->a(Ldvx;)V

    :cond_1
    return-void
.end method
