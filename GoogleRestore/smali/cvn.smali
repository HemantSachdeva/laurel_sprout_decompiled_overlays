.class public final Lcvn;
.super Lcvl;
.source "PG"


# instance fields
.field private final a:Lcvy;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcvl;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcvy;

    .line 2
    const-string v1, ""

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, v2, v2}, Lcvy;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcvn;->a:Lcvy;

    return-void
.end method


# virtual methods
.method public final a(Lcuy;)V
    .locals 1

    iget-object v0, p0, Lcvn;->a:Lcvy;

    .line 3
    invoke-virtual {v0, p1}, Lcvy;->a(Lcuy;)V

    return-void
.end method

.method public final a(Ljava/util/logging/Level;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
