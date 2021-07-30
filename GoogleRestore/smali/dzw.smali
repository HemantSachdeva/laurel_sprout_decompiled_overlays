.class public abstract Ldzw;
.super Lead;
.source "PG"

# interfaces
.implements Lebc;
.implements Legf;


# static fields
.field public static final q:Ljava/util/logging/Logger;


# instance fields
.field private final a:Ledi;

.field private b:Ldxt;

.field private volatile c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ldzw;

    .line 1
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ldzw;->q:Ljava/util/logging/Logger;

    return-void
.end method

.method protected constructor <init>(Ldzt;Leht;Ldxt;Ldvh;)V
    .locals 1

    invoke-direct {p0}, Lead;-><init>()V

    .line 2
    const-string v0, "headers"

    invoke-static {p3, v0}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    invoke-static {p4}, Ledp;->a(Ldvh;)V

    new-instance p4, Legg;

    .line 4
    invoke-direct {p4, p0, p1, p2}, Legg;-><init>(Legf;Ldzt;Leht;)V

    iput-object p4, p0, Ldzw;->a:Ledi;

    iput-object p3, p0, Ldzw;->b:Ldxt;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    iget-object v0, p0, Ldzw;->a:Ledi;

    check-cast v0, Legg;

    iget v1, v0, Legg;->a:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 17
    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "max size already set"

    invoke-static {v1, v2}, Lcrj;->b(ZLjava/lang/Object;)V

    iput p1, v0, Legg;->a:I

    return-void
.end method

.method public final a(Ldwc;)V
    .locals 4

    iget-object v0, p0, Ldzw;->b:Ldxt;

    .line 12
    sget-object v1, Ledp;->a:Ldxp;

    invoke-virtual {v0, v1}, Ldxt;->b(Ldxp;)V

    .line 13
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0}, Ldwc;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-object p1, p0, Ldzw;->b:Ldxt;

    sget-object v2, Ledp;->a:Ldxp;

    .line 14
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Ldxt;->a(Ldxp;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ldwf;)V
    .locals 3

    invoke-virtual {p0}, Ldzw;->d()Leac;

    move-result-object v0

    iget-object v1, v0, Leac;->i:Lebe;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    const-string v2, "Already called start"

    invoke-static {v1, v2}, Lcrj;->b(ZLjava/lang/Object;)V

    .line 16
    const-string v1, "decompressorRegistry"

    invoke-static {p1, v1}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, v0, Leac;->j:Ldwf;

    return-void
.end method

.method public final a(Ldzs;ZZ)V
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    nop

    .line 9
    :goto_0
    const-string v1, "null frame before EOS"

    invoke-static {v0, v1}, Lcrj;->a(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Ldzw;->b()Ldzu;

    move-result-object v0

    .line 10
    invoke-interface {v0, p1, p2, p3}, Ldzu;->a(Ldzs;ZZ)V

    return-void
.end method

.method public final a(Lebe;)V
    .locals 3

    invoke-virtual {p0}, Ldzw;->d()Leac;

    move-result-object v0

    iget-object v1, v0, Leac;->i:Lebe;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 18
    :goto_0
    const-string v2, "Already called setListener"

    invoke-static {v1, v2}, Lcrj;->b(ZLjava/lang/Object;)V

    iput-object p1, v0, Leac;->i:Lebe;

    invoke-virtual {p0}, Ldzw;->b()Ldzu;

    move-result-object p1

    .line 19
    invoke-interface {p1}, Ldzu;->a()V

    const/4 p1, 0x0

    iput-object p1, p0, Ldzw;->b:Ldxt;

    return-void
.end method

.method public final a(Ledu;)V
    .locals 2

    .line 5
    invoke-virtual {p0}, Ldzw;->a()Ldvb;

    move-result-object v0

    .line 6
    sget-object v1, Ldwh;->a:Ldva;

    invoke-virtual {v0, v1}, Ldvb;->a(Ldva;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "remote_addr"

    invoke-virtual {p1, v1, v0}, Ledu;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected abstract b()Ldzu;
.end method

.method public final b(I)V
    .locals 1

    invoke-virtual {p0}, Ldzw;->d()Leac;

    move-result-object v0

    iget-object v0, v0, Leac;->a:Lebq;

    check-cast v0, Legc;

    iput p1, v0, Legc;->b:I

    return-void
.end method

.method public final b(Ldyv;)V
    .locals 3

    .line 7
    invoke-virtual {p1}, Ldyv;->a()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Should not cancel with OK status"

    invoke-static {v0, v2}, Lcrj;->a(ZLjava/lang/Object;)V

    iput-boolean v1, p0, Ldzw;->c:Z

    invoke-virtual {p0}, Ldzw;->b()Ldzu;

    move-result-object v0

    .line 8
    invoke-interface {v0, p1}, Ldzu;->a(Ldyv;)V

    return-void
.end method

.method public bridge synthetic c()Leac;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method protected abstract d()Leac;
.end method

.method protected final e()Ledi;
    .locals 1

    iget-object v0, p0, Ldzw;->a:Ledi;

    return-object v0
.end method

.method public final f()V
    .locals 2

    invoke-virtual {p0}, Ldzw;->d()Leac;

    move-result-object v0

    iget-boolean v0, v0, Leac;->k:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ldzw;->d()Leac;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Leac;->k:Z

    invoke-virtual {p0}, Lead;->e()Ledi;

    move-result-object v0

    .line 11
    invoke-interface {v0}, Ledi;->c()V

    :cond_0
    return-void
.end method
