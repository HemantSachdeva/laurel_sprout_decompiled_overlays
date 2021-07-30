.class public final Lbte;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lcua;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/libraries/performance/primes/PrimesExecutors"

    invoke-static {v0}, Lcua;->a(Ljava/lang/String;)Lcua;

    move-result-object v0

    sput-object v0, Lbte;->a:Lcua;

    return-void
.end method

.method public static a(Lczu;)V
    .locals 2

    sget-object v0, Lbsz;->a:Lbsz;

    .line 1
    sget-object v1, Lczj;->a:Lczj;

    .line 2
    invoke-static {p0, v0, v1}, Ldab;->a(Lczu;Lczm;Ljava/util/concurrent/Executor;)V

    return-void
.end method
