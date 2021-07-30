.class final Leai;
.super Ldxe;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ldxe;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ldwz;
    .locals 1

    .line 1
    sget-object v0, Ldwz;->a:Ldwz;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-class v0, Leai;

    .line 2
    invoke-static {v0}, Lcqt;->a(Ljava/lang/Class;)Lcqs;

    move-result-object v0

    invoke-virtual {v0}, Lcqs;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
