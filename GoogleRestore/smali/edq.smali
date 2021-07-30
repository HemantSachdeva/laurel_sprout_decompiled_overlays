.class final Ledq;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field static final b:Ledq;


# instance fields
.field final a:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ledq;

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ledq;-><init>(Ljava/util/Set;)V

    sput-object v0, Ledq;->b:Ledq;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcsn;->a(Ljava/util/Collection;)Lcsn;

    move-result-object p1

    iput-object p1, p0, Ledq;->a:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    check-cast p1, Ledq;

    iget-object v2, p0, Ledq;->a:Ljava/util/Set;

    iget-object p1, p1, Ledq;->a:Ljava/util/Set;

    .line 5
    invoke-static {v2, p1}, Lcqt;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v1

    .line 3
    :cond_3
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 6
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Ledq;->a:Ljava/util/Set;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 7
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 8
    invoke-static {p0}, Lcqt;->a(Ljava/lang/Object;)Lcqs;

    move-result-object v0

    .line 9
    const-string v1, "maxAttempts"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcqs;->a(Ljava/lang/String;I)V

    .line 10
    const-string v1, "hedgingDelayNanos"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcqs;->a(Ljava/lang/String;J)V

    iget-object v1, p0, Ledq;->a:Ljava/util/Set;

    .line 11
    const-string v2, "nonFatalStatusCodes"

    invoke-virtual {v0, v2, v1}, Lcqs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    invoke-virtual {v0}, Lcqs;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
