.class public final Lbvv;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:D

.field private final f:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIIID)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lbvv;->f:I

    iput p2, p0, Lbvv;->a:I

    iput p3, p0, Lbvv;->b:I

    iput p4, p0, Lbvv;->c:I

    iput p5, p0, Lbvv;->d:I

    iput-wide p6, p0, Lbvv;->e:D

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lbvv;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 2
    check-cast p1, Lbvv;

    iget v1, p0, Lbvv;->f:I

    iget v3, p1, Lbvv;->f:I

    if-eqz v1, :cond_2

    if-ne v3, v0, :cond_1

    iget v1, p0, Lbvv;->a:I

    iget v3, p1, Lbvv;->a:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lbvv;->b:I

    iget v3, p1, Lbvv;->b:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lbvv;->c:I

    iget v3, p1, Lbvv;->c:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lbvv;->d:I

    iget v3, p1, Lbvv;->d:I

    if-ne v1, v3, :cond_1

    iget-wide v3, p0, Lbvv;->e:D

    .line 4
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    iget-wide v5, p1, Lbvv;->e:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-nez p1, :cond_1

    return v0

    :cond_1
    return v2

    :cond_2
    const/4 p1, 0x0

    .line 3
    throw p1

    :cond_3
    return v2
.end method

.method public final hashCode()I
    .locals 5

    iget v0, p0, Lbvv;->f:I

    .line 5
    invoke-static {v0}, Lbuo;->b(I)V

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    iget v2, p0, Lbvv;->a:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v2, p0, Lbvv;->b:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v2, p0, Lbvv;->c:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v2, p0, Lbvv;->d:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget-wide v1, p0, Lbvv;->e:D

    .line 6
    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    const/16 v3, 0x20

    ushr-long/2addr v1, v3

    iget-wide v3, p0, Lbvv;->e:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    xor-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    iget v0, p0, Lbvv;->f:I

    invoke-static {v0}, Lbuo;->a(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lbvv;->a:I

    iget v2, p0, Lbvv;->b:I

    iget v3, p0, Lbvv;->c:I

    iget v4, p0, Lbvv;->d:I

    iget-wide v5, p0, Lbvv;->e:D

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    add-int/lit16 v7, v7, 0xd3

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "CpuProfilingConfigurations{enablement="

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", maxBufferSizeBytes="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", sampleDurationMs="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", sampleDurationSkewMs="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", sampleFrequencyMicro="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", samplesPerEpoch="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
