.class public final Ldzj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lebh;


# instance fields
.field public final a:Ljava/util/concurrent/ScheduledExecutorService;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:I

.field public final d:Ldzk;

.field public final e:Leib;


# direct methods
.method public constructor <init>(Ldzk;Ljava/util/concurrent/Executor;ILeib;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    sget-object p3, Ledp;->l:Lehq;

    invoke-static {p3}, Lehr;->a(Lehq;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p3, p0, Ldzj;->a:Ljava/util/concurrent/ScheduledExecutorService;

    const/high16 p3, 0x400000

    iput p3, p0, Ldzj;->c:I

    iput-object p1, p0, Ldzj;->d:Ldzk;

    .line 2
    const-string p1, "executor"

    invoke-static {p2, p1}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, Ldzj;->b:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Ldzj;->e:Leib;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final close()V
    .locals 2

    .line 3
    sget-object v0, Ledp;->l:Lehq;

    iget-object v1, p0, Ldzj;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v0, v1}, Lehr;->b(Lehq;Ljava/lang/Object;)V

    return-void
.end method
