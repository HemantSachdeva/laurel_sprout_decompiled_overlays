.class final Legz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Leha;


# direct methods
.method public constructor <init>(Leha;)V
    .locals 0

    iput-object p1, p0, Legz;->a:Leha;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Legz;->a:Leha;

    .line 1
    iget-object v1, v0, Leha;->b:Ljava/util/concurrent/Executor;

    new-instance v2, Legy;

    .line 2
    invoke-direct {v2, v0}, Legy;-><init>(Leha;)V

    .line 3
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
