.class final Lczg;
.super Lczh;
.source "PG"


# instance fields
.field final synthetic a:Lczi;

.field private final c:Ljava/util/concurrent/Callable;


# direct methods
.method public constructor <init>(Lczi;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Lczg;->a:Lczi;

    .line 1
    invoke-direct {p0, p1, p3}, Lczh;-><init>(Lczi;Ljava/util/concurrent/Executor;)V

    iput-object p2, p0, Lczg;->c:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lczg;->c:Ljava/util/concurrent/Callable;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lczg;->a:Lczi;

    .line 2
    invoke-virtual {v0, p1}, Lcyr;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
