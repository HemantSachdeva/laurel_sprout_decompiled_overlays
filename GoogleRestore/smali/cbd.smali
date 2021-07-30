.class public final Lcbd;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lcua;


# instance fields
.field public final b:Landroid/app/Application;

.field public final c:Leip;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/libraries/performance/primes/sampling/PersistentRateLimiting"

    invoke-static {v0}, Lcua;->a(Ljava/lang/String;)Lcua;

    move-result-object v0

    sput-object v0, Lcbd;->a:Lcua;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Leip;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcbd;->b:Landroid/app/Application;

    iput-object p2, p0, Lcbd;->c:Leip;

    return-void
.end method
