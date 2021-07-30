.class final Lefp;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Leen;

.field final synthetic b:Leae;


# direct methods
.method public constructor <init>(Leae;Leen;)V
    .locals 0

    iput-object p1, p0, Lefp;->b:Leae;

    iput-object p2, p0, Lefp;->a:Leen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lefp;->b:Leae;

    iget-object v0, v0, Leae;->i:Lefs;

    .line 1
    sget-object v1, Lefs;->a:Ljava/util/logging/Logger;

    .line 2
    iget-object v0, v0, Lefs;->B:Ldwn;

    iget-object v1, p0, Lefp;->a:Leen;

    iget-object v0, v0, Ldwn;->c:Ljava/util/concurrent/ConcurrentMap;

    .line 3
    invoke-static {v0, v1}, Ldwn;->a(Ljava/util/Map;Ldwo;)V

    iget-object v0, p0, Lefp;->b:Leae;

    iget-object v0, v0, Leae;->i:Lefs;

    .line 4
    iget-object v0, v0, Lefs;->s:Ljava/util/Set;

    iget-object v1, p0, Lefp;->a:Leen;

    .line 5
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
