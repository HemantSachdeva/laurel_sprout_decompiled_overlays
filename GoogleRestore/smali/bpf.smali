.class final Lbpf;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lbpj;
.implements Lbpd;
.implements Lbpa;
.implements Lbou;


# instance fields
.field public final a:Lbph;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Lbpp;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lbph;Lbpp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbpf;->b:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lbpf;->a:Lbph;

    iput-object p3, p0, Lbpf;->c:Lbpp;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lbpf;->c:Lbpp;

    .line 1
    invoke-virtual {v0}, Lbpp;->h()V

    return-void
.end method

.method public final a(Lbpi;)V
    .locals 2

    iget-object v0, p0, Lbpf;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lbpe;

    .line 2
    invoke-direct {v1, p0, p1}, Lbpe;-><init>(Lbpf;Lbpi;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lbpf;->c:Lbpp;

    .line 3
    invoke-virtual {v0, p1}, Lbpp;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lbpf;->c:Lbpp;

    .line 4
    invoke-virtual {v0, p1}, Lbpp;->a(Ljava/lang/Object;)V

    return-void
.end method
