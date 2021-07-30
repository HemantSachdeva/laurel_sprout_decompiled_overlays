.class public abstract Lctx;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lcuz;


# direct methods
.method protected constructor <init>(Lcuz;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    const-string v0, "backend"

    invoke-static {p1, v0}, Ldav;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lctx;->a:Lcuz;

    return-void
.end method


# virtual methods
.method public final a()Lcup;
    .locals 1

    .line 6
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p0, v0}, Lctx;->a(Ljava/util/logging/Level;)Lcup;

    move-result-object v0

    return-object v0
.end method

.method public abstract a(Ljava/util/logging/Level;)Lcup;
.end method

.method public final b()Lcup;
    .locals 1

    .line 7
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {p0, v0}, Lctx;->a(Ljava/util/logging/Level;)Lcup;

    move-result-object v0

    return-object v0
.end method

.method protected final b(Ljava/util/logging/Level;)Z
    .locals 1

    iget-object v0, p0, Lctx;->a:Lcuz;

    .line 8
    invoke-virtual {v0, p1}, Lcuz;->a(Ljava/util/logging/Level;)Z

    move-result p1

    return p1
.end method

.method public final c()Lcup;
    .locals 1

    .line 5
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {p0, v0}, Lctx;->a(Ljava/util/logging/Level;)Lcup;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcup;
    .locals 1

    .line 2
    sget-object v0, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {p0, v0}, Lctx;->a(Ljava/util/logging/Level;)Lcup;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lcup;
    .locals 1

    .line 3
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p0, v0}, Lctx;->a(Ljava/util/logging/Level;)Lcup;

    move-result-object v0

    return-object v0
.end method

.method public final f()Lcup;
    .locals 1

    .line 4
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {p0, v0}, Lctx;->a(Ljava/util/logging/Level;)Lcup;

    move-result-object v0

    return-object v0
.end method
