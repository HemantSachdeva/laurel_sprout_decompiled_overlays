.class public final Lego;
.super Ldxh;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ldxh;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ldwy;)Ldxf;
    .locals 1

    .line 1
    new-instance v0, Legn;

    invoke-direct {v0, p1}, Legn;-><init>(Ldwy;)V

    return-object v0
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    const-string v0, "pick_first"

    return-object v0
.end method

.method public final d()Ldya;
    .locals 1

    .line 2
    const-string v0, "no service config"

    invoke-static {v0}, Ldya;->a(Ljava/lang/Object;)Ldya;

    move-result-object v0

    return-object v0
.end method
