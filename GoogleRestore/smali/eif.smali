.class public abstract Leif;
.super Leih;
.source "PG"


# direct methods
.method protected constructor <init>(Ldvi;Ldvh;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Leih;-><init>(Ldvi;Ldvh;)V

    return-void
.end method

.method public static a(Leig;Ldvi;)Leih;
    .locals 3

    .line 2
    sget-object v0, Ldvh;->a:Ldvh;

    .line 3
    sget-object v1, Leil;->a:Ldvg;

    sget-object v2, Leij;->a:Leij;

    .line 4
    invoke-virtual {v0, v1, v2}, Ldvh;->a(Ldvg;Ljava/lang/Object;)Ldvh;

    move-result-object v0

    .line 3
    invoke-interface {p0, p1, v0}, Leig;->a(Ldvi;Ldvh;)Leih;

    move-result-object p0

    return-object p0
.end method
