.class public final Lefh;
.super Ldwy;
.source "PG"


# instance fields
.field public a:Leah;

.field final synthetic b:Lefs;


# direct methods
.method public constructor <init>(Lefs;)V
    .locals 0

    iput-object p1, p0, Lefh;->b:Lefs;

    invoke-direct {p0}, Ldwy;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ldvj;
    .locals 1

    iget-object v0, p0, Lefh;->b:Lefs;

    iget-object v0, v0, Lefs;->A:Ldvj;

    return-object v0
.end method

.method public final a(Ldvx;Ldxe;)V
    .locals 2

    .line 1
    const-string v0, "newState"

    invoke-static {p1, v0}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lefh;->b:Lefs;

    .line 2
    const-string v1, "updateBalancingState()"

    invoke-virtual {v0, v1}, Lefs;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lefh;->b:Lefs;

    iget-object v0, v0, Lefs;->k:Ldzb;

    new-instance v1, Lefg;

    .line 3
    invoke-direct {v1, p0, p2, p1}, Lefg;-><init>(Lefh;Ldxe;Ldvx;)V

    invoke-virtual {v0, v1}, Ldzb;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
