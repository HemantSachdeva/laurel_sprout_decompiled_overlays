.class public final Lczi;
.super Lcyx;
.source "PG"


# static fields
.field public static final synthetic d:I


# instance fields
.field public c:Lczh;


# direct methods
.method public constructor <init>(Lcsd;Ljava/util/concurrent/Executor;Lczc;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcyx;-><init>(Lcsd;Z)V

    new-instance p1, Lczf;

    .line 2
    invoke-direct {p1, p0, p3, p2}, Lczf;-><init>(Lczi;Lczc;Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lczi;->c:Lczh;

    .line 3
    invoke-virtual {p0}, Lcyx;->b()V

    return-void
.end method

.method public constructor <init>(Lcsd;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)V
    .locals 1

    .line 4
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcyx;-><init>(Lcsd;Z)V

    new-instance p1, Lczg;

    .line 5
    invoke-direct {p1, p0, p3, p2}, Lczg;-><init>(Lczi;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lczi;->c:Lczh;

    .line 6
    invoke-virtual {p0}, Lcyx;->b()V

    return-void
.end method


# virtual methods
.method public final a(Lcyw;)V
    .locals 2

    .line 9
    invoke-static {p1}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcyx;->a:Lcsd;

    .line 10
    sget-object v1, Lcyw;->a:Lcyw;

    if-ne p1, v1, :cond_0

    iput-object v0, p0, Lczi;->c:Lczh;

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lczi;->c:Lczh;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Lczh;->d()V

    :cond_0
    return-void
.end method

.method protected final d()V
    .locals 1

    iget-object v0, p0, Lczi;->c:Lczh;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Lczt;->e()V

    :cond_0
    return-void
.end method
