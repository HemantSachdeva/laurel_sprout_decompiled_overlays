.class final Lehe;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field static final f:Lehe;


# instance fields
.field final a:I

.field final b:J

.field final c:J

.field final d:D

.field final e:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lehe;

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Lehe;-><init>(Ljava/util/Set;)V

    sput-object v0, Lehe;->f:Lehe;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lehe;->a:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lehe;->b:J

    iput-wide v0, p0, Lehe;->c:J

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lehe;->d:D

    .line 2
    invoke-static {p1}, Lcsn;->a(Ljava/util/Collection;)Lcsn;

    move-result-object p1

    iput-object p1, p0, Lehe;->e:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 3
    instance-of v0, p1, Lehe;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4
    :cond_0
    check-cast p1, Lehe;

    .line 5
    iget v0, p1, Lehe;->a:I

    iget-wide v2, p1, Lehe;->b:J

    iget-wide v2, p1, Lehe;->c:J

    iget-wide v2, p1, Lehe;->d:D

    .line 6
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lehe;->e:Ljava/util/Set;

    iget-object p1, p1, Lehe;->e:Ljava/util/Set;

    .line 7
    invoke-static {v0, p1}, Lcqt;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 8
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 9
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v2, v0, v1

    .line 10
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lehe;->e:Ljava/util/Set;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 11
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 12
    invoke-static {p0}, Lcqt;->a(Ljava/lang/Object;)Lcqs;

    move-result-object v0

    .line 13
    const-string v1, "maxAttempts"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcqs;->a(Ljava/lang/String;I)V

    .line 14
    const-string v1, "initialBackoffNanos"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcqs;->a(Ljava/lang/String;J)V

    .line 15
    const-string v1, "maxBackoffNanos"

    invoke-virtual {v0, v1, v2, v3}, Lcqs;->a(Ljava/lang/String;J)V

    .line 16
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    const-string v2, "backoffMultiplier"

    invoke-virtual {v0, v2, v1}, Lcqs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lehe;->e:Ljava/util/Set;

    .line 17
    const-string v2, "retryableStatusCodes"

    invoke-virtual {v0, v2, v1}, Lcqs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    invoke-virtual {v0}, Lcqs;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
