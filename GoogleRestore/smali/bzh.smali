.class public final Lbzh;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lcua;

.field public static final b:Lbzh;


# instance fields
.field public volatile c:Z

.field public volatile d:J

.field public volatile e:J

.field public volatile f:J

.field public volatile g:J

.field public volatile h:Lbry;

.field public final i:Lbzg;

.field public final j:Lbzc;

.field public final k:Lbzc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/libraries/performance/primes/metrics/startup/StartupMeasure"

    invoke-static {v0}, Lcua;->a(Ljava/lang/String;)Lcua;

    move-result-object v0

    sput-object v0, Lbzh;->a:Lcua;

    new-instance v0, Lbzh;

    .line 1
    invoke-direct {v0}, Lbzh;-><init>()V

    sput-object v0, Lbzh;->b:Lbzh;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbzg;

    invoke-direct {v0}, Lbzg;-><init>()V

    iput-object v0, p0, Lbzh;->i:Lbzg;

    new-instance v0, Lbzc;

    invoke-direct {v0}, Lbzc;-><init>()V

    iput-object v0, p0, Lbzh;->j:Lbzc;

    new-instance v0, Lbzc;

    invoke-direct {v0}, Lbzc;-><init>()V

    iput-object v0, p0, Lbzh;->k:Lbzc;

    return-void
.end method
