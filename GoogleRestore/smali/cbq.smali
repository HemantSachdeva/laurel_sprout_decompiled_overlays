.class final synthetic Lcbq;
.super Ljava/lang/Object;

# interfaces
.implements Lbez;


# static fields
.field static final a:Lbez;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcbq;

    invoke-direct {v0}, Lcbq;-><init>()V

    sput-object v0, Lcbq;->a:Lbez;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lbey;)V
    .locals 6

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    sget-object v0, Lcbs;->a:Lcua;

    invoke-virtual {v0}, Lctx;->f()Lcup;

    move-result-object v0

    check-cast v0, Lctz;

    const-string v1, "com/google/android/libraries/performance/primes/transmitter/clearcut/ClearcutMetricTransmitter"

    const-string v2, "handleResult"

    const/16 v3, 0x9b

    const-string v4, "ClearcutMetricTransmitter.java"

    invoke-interface {v0, v1, v2, v3, v4}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->a()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v5, "handleResult, success: %b"

    invoke-interface {v0, v5, v3}, Lctz;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->a()Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcbs;->a:Lcua;

    invoke-virtual {p1}, Lctx;->d()Lcup;

    move-result-object p1

    check-cast p1, Lctz;

    const/16 v0, 0x9d

    invoke-interface {p1, v1, v2, v0, v4}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "Clearcut logging failed"

    invoke-interface {p1, v0}, Lctz;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
