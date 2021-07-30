.class public final Lant;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Laqd;

.field private static d:Lant;


# instance fields
.field public final b:Lany;

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lacw;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "PauseAppUpdatesHelper"

    aput-object v3, v1, v2

    .line 1
    invoke-direct {v0, v1}, Lacw;-><init>([Ljava/lang/String;)V

    sput-object v0, Lant;->a:Laqd;

    return-void
.end method

.method private constructor <init>(Lany;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lant;->c:Z

    iput-object p1, p0, Lant;->b:Lany;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lant;
    .locals 4

    sget-object v0, Lant;->d:Lant;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lant;

    new-instance v1, Lany;

    const/4 v2, 0x1

    const/16 v3, 0xa

    .line 2
    invoke-static {v2, v3}, Laqr;->a(II)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lany;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lant;-><init>(Lany;)V

    sput-object v0, Lant;->d:Lant;

    return-object v0
.end method
