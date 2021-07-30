.class final Lbup;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lcua;


# instance fields
.field public final b:Lbvl;

.field public final c:Leip;

.field public final d:Leip;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/libraries/performance/primes/metrics/battery/BatteryCapture"

    invoke-static {v0}, Lcua;->a(Ljava/lang/String;)Lcua;

    move-result-object v0

    sput-object v0, Lbup;->a:Lcua;

    return-void
.end method

.method public constructor <init>(Leip;Lbvl;Leip;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lbup;->b:Lbvl;

    iput-object p3, p0, Lbup;->d:Leip;

    iput-object p1, p0, Lbup;->c:Leip;

    return-void
.end method
