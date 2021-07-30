.class public final Ldvq;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private final a:Ldvb;

.field private final b:Ldvh;


# direct methods
.method public constructor <init>(Ldvb;Ldvh;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    const-string v0, "transportAttrs"

    invoke-static {p1, v0}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Ldvq;->a:Ldvb;

    .line 2
    const-string p1, "callOptions"

    invoke-static {p2, p1}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, Ldvq;->b:Ldvh;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .line 3
    invoke-static {p0}, Lcqt;->a(Ljava/lang/Object;)Lcqs;

    move-result-object v0

    iget-object v1, p0, Ldvq;->a:Ldvb;

    .line 4
    const-string v2, "transportAttrs"

    invoke-virtual {v0, v2, v1}, Lcqs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Ldvq;->b:Ldvh;

    .line 5
    const-string v2, "callOptions"

    invoke-virtual {v0, v2, v1}, Lcqs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    invoke-virtual {v0}, Lcqs;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
