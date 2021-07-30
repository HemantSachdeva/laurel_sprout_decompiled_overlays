.class public final Ldeh;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lddk;


# instance fields
.field private final a:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldeh;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)Lbpi;
    .locals 2

    iget-object v0, p0, Ldeh;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Ldeg;

    .line 1
    invoke-direct {v1, p1}, Ldeg;-><init>(Landroid/content/Intent;)V

    invoke-static {v0, v1}, Lbqb;->a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lbpi;

    move-result-object p1

    return-object p1
.end method
