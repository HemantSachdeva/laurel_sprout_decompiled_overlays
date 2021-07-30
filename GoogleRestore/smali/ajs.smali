.class public final Lajs;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final a:Laqd;


# instance fields
.field private final b:Landroid/os/ResultReceiver;

.field private final c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lacw;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "PlayFinalHoldRunnable"

    aput-object v3, v1, v2

    .line 1
    invoke-direct {v0, v1}, Lacw;-><init>([Ljava/lang/String;)V

    sput-object v0, Lajs;->a:Laqd;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/ResultReceiver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lajs;->c:Landroid/content/Context;

    iput-object p2, p0, Lajs;->b:Landroid/os/ResultReceiver;

    return-void
.end method

.method public static a()Landroid/os/ResultReceiver;
    .locals 3

    .line 2
    new-instance v0, Lajr;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lajr;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lajs;->c:Landroid/content/Context;

    .line 3
    new-instance v2, Laox;

    invoke-direct {v2, v1}, Laox;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Laox;->a()Laao;

    move-result-object v1

    sget-object v2, Lajs;->a:Laqd;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v4, "Calling %s for final hold"

    invoke-virtual {v2, v4, v3}, Laqd;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lajs;->b:Landroid/os/ResultReceiver;

    .line 5
    invoke-interface {v1, v2}, Laap;->b(Landroid/os/ResultReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_0
    sget-object v2, Lajs;->a:Laqd;

    new-array v0, v0, [Ljava/lang/Object;

    .line 6
    const-string v3, "Exception while performing final hold"

    invoke-virtual {v2, v3, v1, v0}, Laqd;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 7
    invoke-static {}, Lada;->a()Lada;

    move-result-object v0

    invoke-virtual {v0}, Lada;->e()V

    return-void
.end method
