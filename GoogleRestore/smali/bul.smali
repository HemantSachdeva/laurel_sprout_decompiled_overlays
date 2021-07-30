.class public final Lbul;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lcua;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/libraries/performance/primes/flags/PrimesShutdown"

    invoke-static {v0}, Lcua;->a(Ljava/lang/String;)Lcua;

    move-result-object v0

    sput-object v0, Lbul;->a:Lcua;

    return-void
.end method
