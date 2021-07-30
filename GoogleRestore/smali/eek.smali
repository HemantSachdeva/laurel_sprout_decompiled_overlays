.class public final Leek;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Leel;


# direct methods
.method public constructor <init>(Leel;)V
    .locals 0

    iput-object p1, p0, Leek;->a:Leel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Leek;->a:Leel;

    iget-object v1, v0, Leel;->c:Leen;

    iget-object v1, v1, Leen;->l:Ljava/util/Collection;

    iget-object v0, v0, Leel;->a:Lebm;

    .line 1
    invoke-interface {v1, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Leek;->a:Leel;

    iget-object v0, v0, Leel;->c:Leen;

    iget-object v0, v0, Leen;->p:Ldvy;

    iget-object v0, v0, Ldvy;->a:Ldvx;

    sget-object v1, Ldvx;->e:Ldvx;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Leek;->a:Leel;

    iget-object v0, v0, Leel;->c:Leen;

    iget-object v0, v0, Leen;->l:Ljava/util/Collection;

    .line 2
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Leek;->a:Leel;

    iget-object v0, v0, Leel;->c:Leen;

    .line 3
    invoke-virtual {v0}, Leen;->d()V

    :cond_0
    return-void
.end method
