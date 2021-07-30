.class abstract Ledf;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lebe;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    invoke-virtual {p0}, Ledf;->b()Lebe;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Lebe;->a()V

    return-void
.end method

.method public final a(Ldxt;)V
    .locals 1

    invoke-virtual {p0}, Ledf;->b()Lebe;

    move-result-object v0

    .line 1
    invoke-interface {v0, p1}, Lebe;->a(Ldxt;)V

    return-void
.end method

.method public a(Ldyv;Ldxt;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public a(Ldyv;Lebd;Ldxt;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final a(Lega;)V
    .locals 1

    invoke-virtual {p0}, Ledf;->b()Lebe;

    move-result-object v0

    .line 2
    invoke-interface {v0, p1}, Lebe;->a(Lega;)V

    return-void
.end method

.method protected abstract b()Lebe;
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 4
    invoke-static {p0}, Lcqt;->a(Ljava/lang/Object;)Lcqs;

    move-result-object v0

    invoke-virtual {p0}, Ledf;->b()Lebe;

    move-result-object v1

    .line 5
    const-string v2, "delegate"

    invoke-virtual {v0, v2, v1}, Lcqs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    invoke-virtual {v0}, Lcqs;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
