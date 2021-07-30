.class public final Lcbi;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lcua;

.field public static final b:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "com/google/android/libraries/performance/primes/tracing/Tracer"

    invoke-static {v0}, Lcua;->a(Ljava/lang/String;)Lcua;

    move-result-object v0

    sput-object v0, Lcbi;->a:Lcua;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 1
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcbi;->b:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method
