.class public final Lagg;
.super La;
.source "PG"


# static fields
.field public static final d:Lacw;


# instance fields
.field public final e:Ljava/util/concurrent/ExecutorService;

.field public f:Lagf;

.field public g:Ls;

.field public h:Ls;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lacw;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "CloudRestoreViewModel"

    aput-object v3, v1, v2

    .line 1
    invoke-direct {v0, v1}, Lacw;-><init>([Ljava/lang/String;)V

    sput-object v0, Lagg;->d:Lacw;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    .line 2
    invoke-static {}, Laqq;->b()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    .line 3
    invoke-direct {p0, p1}, La;-><init>(Landroid/app/Application;)V

    iput-object v0, p0, Lagg;->e:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1

    iget-object v0, p0, Lagg;->e:Ljava/util/concurrent/ExecutorService;

    .line 4
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lagg;->g:Ls;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
