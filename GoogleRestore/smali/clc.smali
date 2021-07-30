.class public final Lclc;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lclc;

.field public static final b:Lclc;


# instance fields
.field public final c:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lclc;

    .line 1
    const-string v1, "SetupCompatServiceInvoker"

    const/16 v2, 0x32

    invoke-static {v1, v2}, Lclc;->a(Ljava/lang/String;I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {v0, v1}, Lclc;-><init>(Ljava/util/concurrent/Executor;)V

    sput-object v0, Lclc;->a:Lclc;

    new-instance v0, Lclc;

    .line 2
    const-string v1, "SetupBindbackServiceExecutor"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lclc;->a(Ljava/lang/String;I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {v0, v1}, Lclc;-><init>(Ljava/util/concurrent/Executor;)V

    sput-object v0, Lclc;->b:Lclc;

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lclc;->c:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static a(Ljava/lang/String;I)Ljava/util/concurrent/ExecutorService;
    .locals 9

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 3
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v6, p1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    new-instance v7, Lclb;

    invoke-direct {v7, p0}, Lclb;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-object v8
.end method
