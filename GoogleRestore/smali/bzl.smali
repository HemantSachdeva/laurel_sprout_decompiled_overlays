.class public final Lbzl;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lcua;


# instance fields
.field public final b:Lbvq;

.field private final c:Lcbh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/libraries/performance/primes/metrics/startup/StartupMetricRecordingService"

    invoke-static {v0}, Lcua;->a(Ljava/lang/String;)Lcua;

    move-result-object v0

    sput-object v0, Lbzl;->a:Lcua;

    return-void
.end method

.method public constructor <init>(Lbvr;Leip;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    invoke-static {}, Lcbh;->a()Lcbh;

    move-result-object v0

    iput-object v0, p0, Lbzl;->c:Lcbh;

    .line 2
    invoke-interface {p2}, Leip;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p2, v0}, Lbvr;->a(Ljava/util/concurrent/Executor;Lcbh;)Lbvq;

    move-result-object p1

    iput-object p1, p0, Lbzl;->b:Lbvq;

    return-void
.end method
