.class public final Leei;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Leel;


# direct methods
.method public constructor <init>(Leel;)V
    .locals 0

    iput-object p1, p0, Leei;->a:Leel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Leei;->a:Leel;

    iget-object v1, v0, Leel;->c:Leen;

    const/4 v2, 0x0

    iput-object v2, v1, Leen;->r:Ledb;

    iget-object v2, v1, Leen;->q:Ldyv;

    if-eqz v2, :cond_1

    iget-object v0, v1, Leen;->o:Lefy;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 2
    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    const-string v1, "Unexpected non-null activeTransport"

    invoke-static {v0, v1}, Lcrj;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Leei;->a:Leel;

    iget-object v1, v0, Leel;->a:Lebm;

    iget-object v0, v0, Leel;->c:Leen;

    iget-object v0, v0, Leen;->q:Ldyv;

    .line 2
    invoke-interface {v1, v0}, Lebm;->a(Ldyv;)V

    return-void

    :cond_1
    iget-object v2, v1, Leen;->n:Lebm;

    iget-object v0, v0, Leel;->a:Lebm;

    if-ne v2, v0, :cond_2

    iput-object v0, v1, Leen;->o:Lefy;

    iget-object v0, p0, Leei;->a:Leel;

    iget-object v0, v0, Leel;->c:Leen;

    .line 3
    invoke-static {v0}, Leen;->a(Leen;)V

    iget-object v0, p0, Leei;->a:Leel;

    iget-object v0, v0, Leel;->c:Leen;

    .line 4
    sget-object v1, Ldvx;->b:Ldvx;

    .line 5
    invoke-virtual {v0, v1}, Leen;->a(Ldvx;)V

    :cond_2
    return-void
.end method
