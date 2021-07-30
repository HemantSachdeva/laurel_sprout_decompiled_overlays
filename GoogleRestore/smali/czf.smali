.class final Lczf;
.super Lczh;
.source "PG"


# instance fields
.field final synthetic a:Lczi;

.field private final c:Lczc;


# direct methods
.method public constructor <init>(Lczi;Lczc;Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Lczf;->a:Lczi;

    .line 1
    invoke-direct {p0, p1, p3}, Lczh;-><init>(Lczi;Ljava/util/concurrent/Executor;)V

    iput-object p2, p0, Lczf;->c:Lczc;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lczf;->c:Lczc;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lczu;

    iget-object v0, p0, Lczf;->a:Lczi;

    invoke-virtual {v0, p1}, Lcyr;->b(Lczu;)V

    return-void
.end method

.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lczf;->c:Lczc;

    invoke-interface {v0}, Lczc;->a()Lczu;

    move-result-object v0

    iget-object v1, p0, Lczf;->c:Lczc;

    const-string v2, "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s"

    invoke-static {v0, v2, v1}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
