.class public abstract Ldxh;
.super Ldwx;
.source "PG"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldxg;

    invoke-direct {v0}, Ldxg;-><init>()V

    .line 1
    invoke-static {v0}, Ldya;->a(Ljava/lang/Object;)Ldya;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ldwx;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Z
.end method

.method public abstract b()I
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public d()Ldya;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 2
    invoke-static {p0}, Lcqt;->a(Ljava/lang/Object;)Lcqs;

    move-result-object v0

    invoke-virtual {p0}, Ldxh;->c()Ljava/lang/String;

    move-result-object v1

    .line 3
    const-string v2, "policy"

    invoke-virtual {v0, v2, v1}, Lcqs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Ldxh;->b()I

    move-result v1

    .line 4
    const-string v2, "priority"

    invoke-virtual {v0, v2, v1}, Lcqs;->a(Ljava/lang/String;I)V

    invoke-virtual {p0}, Ldxh;->a()Z

    move-result v1

    .line 5
    const-string v2, "available"

    invoke-virtual {v0, v2, v1}, Lcqs;->a(Ljava/lang/String;Z)V

    .line 6
    invoke-virtual {v0}, Lcqs;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
