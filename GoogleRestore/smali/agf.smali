.class public final Lagf;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/accounts/Account;

.field public final b:Z

.field public final c:J

.field public final d:Z

.field public final e:Z

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public final i:Z

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/accounts/Account;ZJZZZZZZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lagf;->a:Landroid/accounts/Account;

    iput-boolean p2, p0, Lagf;->b:Z

    iput-wide p3, p0, Lagf;->c:J

    iput-boolean p5, p0, Lagf;->d:Z

    iput-boolean p6, p0, Lagf;->e:Z

    iput-boolean p7, p0, Lagf;->f:Z

    iput-boolean p8, p0, Lagf;->g:Z

    iput-boolean p9, p0, Lagf;->h:Z

    iput-boolean p10, p0, Lagf;->i:Z

    iput-object p11, p0, Lagf;->j:Ljava/lang/String;

    iput-object p12, p0, Lagf;->k:Ljava/lang/String;

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
    instance-of v1, p1, Lagf;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 2
    check-cast p1, Lagf;

    iget-object v1, p0, Lagf;->a:Landroid/accounts/Account;

    iget-object v3, p1, Lagf;->a:Landroid/accounts/Account;

    .line 3
    invoke-virtual {v1, v3}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lagf;->b:Z

    iget-boolean v3, p1, Lagf;->b:Z

    if-ne v1, v3, :cond_4

    iget-wide v3, p0, Lagf;->c:J

    iget-wide v5, p1, Lagf;->c:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lagf;->d:Z

    iget-boolean v3, p1, Lagf;->d:Z

    if-ne v1, v3, :cond_4

    iget-boolean v1, p0, Lagf;->e:Z

    iget-boolean v3, p1, Lagf;->e:Z

    if-ne v1, v3, :cond_4

    iget-boolean v1, p0, Lagf;->f:Z

    iget-boolean v3, p1, Lagf;->f:Z

    if-ne v1, v3, :cond_4

    iget-boolean v1, p0, Lagf;->g:Z

    iget-boolean v3, p1, Lagf;->g:Z

    if-ne v1, v3, :cond_4

    iget-boolean v1, p0, Lagf;->h:Z

    iget-boolean v3, p1, Lagf;->h:Z

    if-ne v1, v3, :cond_4

    iget-boolean v1, p0, Lagf;->i:Z

    iget-boolean v3, p1, Lagf;->i:Z

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lagf;->j:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, p1, Lagf;->j:Ljava/lang/String;

    if-nez v1, :cond_4

    goto :goto_0

    .line 5
    :cond_1
    iget-object v3, p1, Lagf;->j:Ljava/lang/String;

    .line 4
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3
    :goto_0
    iget-object v1, p0, Lagf;->k:Ljava/lang/String;

    iget-object p1, p1, Lagf;->k:Ljava/lang/String;

    if-nez v1, :cond_2

    if-nez p1, :cond_4

    goto :goto_1

    .line 5
    :cond_2
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_2

    .line 3
    :cond_3
    :goto_1
    return v0

    .line 5
    :cond_4
    :goto_2
    return v2

    .line 4
    :cond_5
    return v2
.end method

.method public final hashCode()I
    .locals 10

    iget-object v0, p0, Lagf;->a:Landroid/accounts/Account;

    .line 6
    invoke-virtual {v0}, Landroid/accounts/Account;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    iget-boolean v2, p0, Lagf;->b:Z

    const/16 v3, 0x4d5

    const/16 v4, 0x4cf

    const/4 v5, 0x1

    if-eq v5, v2, :cond_0

    const/16 v2, 0x4d5

    goto :goto_0

    .line 7
    :cond_0
    const/16 v2, 0x4cf

    .line 6
    :goto_0
    iget-wide v6, p0, Lagf;->c:J

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    const/16 v2, 0x20

    ushr-long v8, v6, v2

    xor-long/2addr v6, v8

    long-to-int v2, v6

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget-boolean v2, p0, Lagf;->d:Z

    if-eq v5, v2, :cond_1

    const/16 v2, 0x4d5

    goto :goto_1

    .line 7
    :cond_1
    const/16 v2, 0x4cf

    .line 6
    :goto_1
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget-boolean v2, p0, Lagf;->e:Z

    if-eq v5, v2, :cond_2

    const/16 v2, 0x4d5

    goto :goto_2

    .line 7
    :cond_2
    const/16 v2, 0x4cf

    .line 6
    :goto_2
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget-boolean v2, p0, Lagf;->f:Z

    if-eq v5, v2, :cond_3

    const/16 v2, 0x4d5

    goto :goto_3

    .line 7
    :cond_3
    const/16 v2, 0x4cf

    .line 6
    :goto_3
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget-boolean v2, p0, Lagf;->g:Z

    if-eq v5, v2, :cond_4

    const/16 v2, 0x4d5

    goto :goto_4

    .line 7
    :cond_4
    const/16 v2, 0x4cf

    .line 6
    :goto_4
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget-boolean v2, p0, Lagf;->h:Z

    if-eq v5, v2, :cond_5

    const/16 v2, 0x4d5

    goto :goto_5

    .line 7
    :cond_5
    const/16 v2, 0x4cf

    .line 6
    :goto_5
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget-boolean v2, p0, Lagf;->i:Z

    if-eq v5, v2, :cond_6

    goto :goto_6

    .line 7
    :cond_6
    const/16 v3, 0x4cf

    .line 6
    :goto_6
    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    iget-object v2, p0, Lagf;->j:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_7

    const/4 v2, 0x0

    goto :goto_7

    .line 7
    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    .line 6
    :goto_7
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget-object v1, p0, Lagf;->k:Ljava/lang/String;

    if-nez v1, :cond_8

    goto :goto_8

    .line 8
    :cond_8
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    .line 6
    :goto_8
    xor-int/2addr v0, v3

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lagf;->a:Landroid/accounts/Account;

    .line 9
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lagf;->b:Z

    iget-wide v3, v0, Lagf;->c:J

    iget-boolean v5, v0, Lagf;->d:Z

    iget-boolean v6, v0, Lagf;->e:Z

    iget-boolean v7, v0, Lagf;->f:Z

    iget-boolean v8, v0, Lagf;->g:Z

    iget-boolean v9, v0, Lagf;->h:Z

    iget-boolean v10, v0, Lagf;->i:Z

    iget-object v11, v0, Lagf;->j:Ljava/lang/String;

    iget-object v12, v0, Lagf;->k:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    new-instance v0, Ljava/lang/StringBuilder;

    add-int/lit16 v13, v13, 0x14c

    add-int/2addr v13, v14

    add-int/2addr v13, v15

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v13, "CloudRestoreParams{account="

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isDeferred="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", preselectedRestoreToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", shouldCallSystemRestore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", shouldRunFinalHold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isEnterpriseFlow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isWorkProfileAppsOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isWorkProfileFullRestore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", shouldFetchDevicesWithNoBackup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", preselectedHashedRestoreToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", preselectedHashedParentId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
