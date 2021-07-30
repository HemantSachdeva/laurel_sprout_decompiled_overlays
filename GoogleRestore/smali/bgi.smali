.class final Lbgi;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lbhg;


# instance fields
.field public final a:Lben;

.field public final b:Lbfk;

.field public c:Ljava/util/Set;

.field public d:Z

.field final synthetic e:Lbgj;

.field public f:Lbik;


# direct methods
.method public constructor <init>(Lbgj;Lben;Lbfk;)V
    .locals 0

    iput-object p1, p0, Lbgi;->e:Lbgj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lbgi;->f:Lbik;

    iput-object p1, p0, Lbgi;->c:Ljava/util/Set;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lbgi;->d:Z

    iput-object p2, p0, Lbgi;->a:Lben;

    iput-object p3, p0, Lbgi;->b:Lbfk;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-boolean v0, p0, Lbgi;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbgi;->f:Lbik;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lbgi;->a:Lben;

    iget-object v2, p0, Lbgi;->c:Ljava/util/Set;

    .line 9
    invoke-interface {v1, v0, v2}, Lben;->a(Lbik;Ljava/util/Set;)V

    :cond_0
    return-void
.end method

.method public final a(Lbds;)V
    .locals 2

    iget-object v0, p0, Lbgi;->e:Lbgj;

    .line 1
    sget-object v1, Lbgj;->a:Lcom/google/android/gms/common/api/Status;

    .line 2
    iget-object v0, v0, Lbgj;->n:Landroid/os/Handler;

    new-instance v1, Lbgh;

    .line 1
    invoke-direct {v1, p0, p1}, Lbgh;-><init>(Lbgi;Lbds;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b(Lbds;)V
    .locals 7

    iget-object v0, p0, Lbgi;->e:Lbgj;

    .line 3
    sget-object v1, Lbgj;->a:Lcom/google/android/gms/common/api/Status;

    .line 4
    iget-object v0, v0, Lbgj;->k:Ljava/util/Map;

    iget-object v1, p0, Lbgi;->b:Lbfk;

    .line 3
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbgf;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lbgf;->i:Lbgj;

    .line 5
    iget-object v1, v1, Lbgj;->n:Landroid/os/Handler;

    .line 6
    invoke-static {v1}, Lbir;->a(Landroid/os/Handler;)V

    iget-object v1, v0, Lbgf;->b:Lben;

    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x19

    add-int/2addr v4, v5

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "onSignInFailed for "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lben;->a(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p1}, Lbgf;->a(Lbds;)V

    :cond_0
    return-void
.end method
