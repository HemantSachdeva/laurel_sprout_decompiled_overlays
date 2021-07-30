.class public final Lbtg;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldst;


# instance fields
.field private final a:Leip;


# direct methods
.method public constructor <init>(Leip;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbtg;->a:Leip;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lbtg;->a:Leip;

    invoke-interface {v0}, Leip;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbtp;

    iget v0, v0, Lbtp;->b:I

    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v2, Lbtd;

    const-string v3, "Primes"

    invoke-direct {v2, v3, v0}, Lbtd;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lbta;

    invoke-direct {v3}, Lbta;-><init>()V

    invoke-direct {v1, v0, v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setMaximumPoolSize(I)V

    invoke-static {v1}, Ldab;->a(Ljava/util/concurrent/ScheduledExecutorService;)Lczw;

    move-result-object v0

    new-instance v1, Lbtl;

    sget-object v2, Lbsz;->a:Lbsz;

    invoke-direct {v1, v0, v2}, Lbtl;-><init>(Lczw;Lbsz;)V

    return-object v1
.end method
