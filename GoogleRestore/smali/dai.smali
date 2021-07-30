.class final Ldai;
.super Lczt;
.source "PG"


# instance fields
.field final synthetic a:Ldak;

.field private final b:Lczc;


# direct methods
.method public constructor <init>(Ldak;Lczc;)V
    .locals 0

    iput-object p1, p0, Ldai;->a:Ldak;

    .line 1
    invoke-direct {p0}, Lczt;-><init>()V

    .line 2
    invoke-static {p2}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Ldai;->b:Lczc;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ldai;->b:Lczc;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    check-cast p1, Lczu;

    if-nez p2, :cond_0

    iget-object p2, p0, Ldai;->a:Ldak;

    invoke-virtual {p2, p1}, Lcyr;->b(Lczu;)V

    return-void

    :cond_0
    iget-object p1, p0, Ldai;->a:Ldak;

    invoke-virtual {p1, p2}, Lcyr;->a(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Ldai;->b:Lczc;

    invoke-interface {v0}, Lczc;->a()Lczu;

    move-result-object v0

    iget-object v1, p0, Ldai;->b:Lczc;

    const-string v2, "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s"

    invoke-static {v0, v2, v1}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Ldai;->a:Ldak;

    .line 3
    invoke-virtual {v0}, Lcyr;->isDone()Z

    move-result v0

    return v0
.end method
