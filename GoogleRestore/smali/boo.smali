.class final Lboo;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lbpj;


# instance fields
.field public final a:Lbom;

.field public final b:Lbpp;

.field private final c:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lbom;Lbpp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lboo;->c:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lboo;->a:Lbom;

    iput-object p3, p0, Lboo;->b:Lbpp;

    return-void
.end method


# virtual methods
.method public final a(Lbpi;)V
    .locals 2

    iget-object v0, p0, Lboo;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Lbon;

    .line 1
    invoke-direct {v1, p0, p1}, Lbon;-><init>(Lboo;Lbpi;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
