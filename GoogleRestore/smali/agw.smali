.class public final Lagw;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lagw;


# instance fields
.field public final b:Z

.field public final c:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 4
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lagw;->a(ZJ)Lagw;

    move-result-object v0

    sput-object v0, Lagw;->a:Lagw;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lagw;->b:Z

    iput-wide p2, p0, Lagw;->c:J

    return-void
.end method

.method public static a(ZJ)Lagw;
    .locals 1

    new-instance v0, Lagw;

    .line 5
    invoke-direct {v0, p0, p1, p2}, Lagw;-><init>(ZJ)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lagw;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Lagw;

    iget-boolean v1, p0, Lagw;->b:Z

    iget-boolean v3, p1, Lagw;->b:Z

    if-ne v1, v3, :cond_1

    iget-wide v3, p0, Lagw;->c:J

    iget-wide v5, p1, Lagw;->c:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 5

    iget-boolean v0, p0, Lagw;->b:Z

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    const/16 v0, 0x4d5

    goto :goto_0

    :cond_0
    const/16 v0, 0x4cf

    :goto_0
    iget-wide v1, p0, Lagw;->c:J

    const v3, 0xf4243

    xor-int/2addr v0, v3

    mul-int v0, v0, v3

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    xor-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-boolean v0, p0, Lagw;->b:Z

    iget-wide v1, p0, Lagw;->c:J

    new-instance v3, Ljava/lang/StringBuilder;

    .line 3
    const/16 v4, 0x4b

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "G1BackupInfo{isUserEligible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mmsBackupSizeBytes="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
