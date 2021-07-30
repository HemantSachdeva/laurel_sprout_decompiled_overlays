.class final Leeb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Leen;


# direct methods
.method public constructor <init>(Leen;)V
    .locals 0

    iput-object p1, p0, Leeb;->a:Leen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Leeb;->a:Leen;

    iget-object v0, v0, Leen;->d:Ldvj;

    .line 1
    const/4 v1, 0x2

    const-string v2, "Terminated"

    invoke-virtual {v0, v1, v2}, Ldvj;->a(ILjava/lang/String;)V

    iget-object v0, p0, Leeb;->a:Leen;

    iget-object v1, v0, Leen;->a:Leeg;

    check-cast v1, Lefn;

    iget-object v2, v1, Lefn;->b:Leae;

    iget-object v2, v2, Leae;->i:Lefs;

    .line 2
    sget-object v3, Lefs;->a:Ljava/util/logging/Logger;

    .line 3
    iget-object v2, v2, Lefs;->s:Ljava/util/Set;

    .line 2
    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v2, v1, Lefn;->b:Leae;

    iget-object v2, v2, Leae;->i:Lefs;

    .line 4
    iget-object v2, v2, Lefs;->B:Ldwn;

    iget-object v2, v2, Ldwn;->c:Ljava/util/concurrent/ConcurrentMap;

    .line 5
    invoke-static {v2, v0}, Ldwn;->b(Ljava/util/Map;Ldwo;)V

    iget-object v0, v1, Lefn;->b:Leae;

    iget-object v0, v0, Leae;->i:Lefs;

    .line 6
    invoke-virtual {v0}, Lefs;->i()V

    return-void
.end method
