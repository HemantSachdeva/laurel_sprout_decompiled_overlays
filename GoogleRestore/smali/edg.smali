.class abstract Ledg;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lebm;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ldvb;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public a(Ldxx;Ldxt;Ldvh;)Lebc;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final a(Lefx;)Ljava/lang/Runnable;
    .locals 1

    invoke-virtual {p0}, Ledg;->c()Lebm;

    move-result-object v0

    .line 3
    invoke-interface {v0, p1}, Lebm;->a(Lefx;)Ljava/lang/Runnable;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ldyv;)V
    .locals 1

    invoke-virtual {p0}, Ledg;->c()Lebm;

    move-result-object v0

    .line 2
    invoke-interface {v0, p1}, Lebm;->a(Ldyv;)V

    return-void
.end method

.method public final b()Ldwp;
    .locals 1

    invoke-virtual {p0}, Ledg;->c()Lebm;

    move-result-object v0

    .line 1
    invoke-interface {v0}, Lebm;->b()Ldwp;

    move-result-object v0

    return-object v0
.end method

.method protected abstract c()Lebm;
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 4
    invoke-static {p0}, Lcqt;->a(Ljava/lang/Object;)Lcqs;

    move-result-object v0

    invoke-virtual {p0}, Ledg;->c()Lebm;

    move-result-object v1

    .line 5
    const-string v2, "delegate"

    invoke-virtual {v0, v2, v1}, Lcqs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    invoke-virtual {v0}, Lcqs;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
