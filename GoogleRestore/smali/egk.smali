.class final Legk;
.super Ldxe;
.source "PG"


# instance fields
.field private final a:Ldwz;


# direct methods
.method public constructor <init>(Ldwz;)V
    .locals 1

    invoke-direct {p0}, Ldxe;-><init>()V

    .line 1
    const-string v0, "result"

    invoke-static {p1, v0}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Legk;->a:Ldwz;

    return-void
.end method


# virtual methods
.method public final a()Ldwz;
    .locals 1

    iget-object v0, p0, Legk;->a:Ldwz;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const-class v0, Legk;

    .line 2
    invoke-static {v0}, Lcqt;->a(Ljava/lang/Class;)Lcqs;

    move-result-object v0

    iget-object v1, p0, Legk;->a:Ldwz;

    .line 3
    const-string v2, "result"

    invoke-virtual {v0, v2, v1}, Lcqs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    invoke-virtual {v0}, Lcqs;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
