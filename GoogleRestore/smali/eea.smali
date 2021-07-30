.class final Leea;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ldyv;

.field final synthetic b:Leen;


# direct methods
.method public constructor <init>(Leen;Ldyv;)V
    .locals 0

    iput-object p1, p0, Leea;->b:Leen;

    iput-object p2, p0, Leea;->a:Ldyv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Leea;->b:Leen;

    iget-object v0, v0, Leen;->p:Ldvy;

    iget-object v0, v0, Ldvy;->a:Ldvx;

    sget-object v1, Ldvx;->e:Ldvx;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Leea;->b:Leen;

    iget-object v1, p0, Leea;->a:Ldyv;

    iput-object v1, v0, Leen;->q:Ldyv;

    iget-object v0, v0, Leen;->o:Lefy;

    iget-object v1, p0, Leea;->b:Leen;

    iget-object v2, v1, Leen;->n:Lebm;

    const/4 v3, 0x0

    iput-object v3, v1, Leen;->o:Lefy;

    iget-object v1, p0, Leea;->b:Leen;

    .line 1
    invoke-static {v1}, Leen;->a(Leen;)V

    iget-object v1, p0, Leea;->b:Leen;

    sget-object v4, Ldvx;->e:Ldvx;

    .line 2
    invoke-virtual {v1, v4}, Leen;->a(Ldvx;)V

    iget-object v1, p0, Leea;->b:Leen;

    iget-object v1, v1, Leen;->f:Leeh;

    .line 3
    invoke-virtual {v1}, Leeh;->a()V

    iget-object v1, p0, Leea;->b:Leen;

    iget-object v1, v1, Leen;->l:Ljava/util/Collection;

    .line 4
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Leea;->b:Leen;

    .line 5
    invoke-virtual {v1}, Leen;->d()V

    :cond_1
    iget-object v1, p0, Leea;->b:Leen;

    iget-object v4, v1, Leen;->e:Ldzb;

    .line 6
    invoke-virtual {v4}, Ldzb;->b()V

    iget-object v4, v1, Leen;->i:Ldza;

    if-eqz v4, :cond_2

    .line 7
    invoke-virtual {v4}, Ldza;->a()V

    iput-object v3, v1, Leen;->i:Ldza;

    iput-object v3, v1, Leen;->r:Ledb;

    :cond_2
    iget-object v1, p0, Leea;->b:Leen;

    iget-object v1, v1, Leen;->j:Ldza;

    if-eqz v1, :cond_3

    .line 8
    invoke-virtual {v1}, Ldza;->a()V

    iget-object v1, p0, Leea;->b:Leen;

    iget-object v1, v1, Leen;->k:Lefy;

    iget-object v4, p0, Leea;->a:Ldyv;

    .line 9
    invoke-interface {v1, v4}, Lefy;->a(Ldyv;)V

    iget-object v1, p0, Leea;->b:Leen;

    iput-object v3, v1, Leen;->j:Ldza;

    iput-object v3, v1, Leen;->k:Lefy;

    :cond_3
    if-eqz v0, :cond_4

    iget-object v1, p0, Leea;->a:Ldyv;

    .line 10
    invoke-interface {v0, v1}, Lefy;->a(Ldyv;)V

    :cond_4
    if-eqz v2, :cond_5

    iget-object v0, p0, Leea;->a:Ldyv;

    .line 11
    invoke-interface {v2, v0}, Lebm;->a(Ldyv;)V

    :cond_5
    return-void
.end method
