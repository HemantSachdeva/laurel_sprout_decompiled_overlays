.class public abstract Ldxf;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ldva;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final b:Ldva;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "io.grpc.LoadBalancer.loadBalancingConfig"

    invoke-static {v0}, Ldva;->a(Ljava/lang/String;)Ldva;

    move-result-object v0

    sput-object v0, Ldxf;->a:Ldva;

    .line 2
    const-string v0, "health-checking-config"

    invoke-static {v0}, Ldva;->a(Ljava/lang/String;)Ldva;

    move-result-object v0

    sput-object v0, Ldxf;->b:Ldva;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public a(Ldxc;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public abstract a(Ldyv;)V
.end method
