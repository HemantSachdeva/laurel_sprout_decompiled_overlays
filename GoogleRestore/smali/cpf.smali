.class final Lcpf;
.super Lcpc;
.source "PG"

# interfaces
.implements Lcpg;


# static fields
.field static final a:Lcpd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcpd;

    .line 1
    invoke-direct {v0}, Lcpd;-><init>()V

    sput-object v0, Lcpf;->a:Lcpd;

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .line 2
    sget-object v0, Lcpe;->a:Lcpe;

    .line 3
    invoke-virtual {v0}, Lcpe;->a()J

    move-result-wide v1

    .line 4
    invoke-virtual {v0}, Lcpe;->a()J

    move-result-wide v3

    new-instance v5, Ljava/util/UUID;

    iget-object v6, v0, Lcpe;->b:Ljava/util/UUID;

    .line 5
    invoke-virtual {v6}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v6

    const-wide/32 v8, -0xf001

    and-long/2addr v1, v8

    xor-long/2addr v1, v6

    iget-object v0, v0, Lcpe;->b:Ljava/util/UUID;

    .line 6
    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v6

    const/4 v0, 0x2

    ushr-long/2addr v3, v0

    xor-long/2addr v3, v6

    invoke-direct {v5, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    .line 2
    invoke-direct {p0}, Lcpc;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
