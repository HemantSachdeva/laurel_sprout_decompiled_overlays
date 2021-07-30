.class public final Lagn;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lcsi;

.field public final b:Lcsi;

.field public final c:Lahe;

.field public final d:Lagw;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcsi;Lcsi;Lahe;Lagw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lagn;->a:Lcsi;

    iput-object p2, p0, Lagn;->b:Lcsi;

    iput-object p3, p0, Lagn;->c:Lahe;

    iput-object p4, p0, Lagn;->d:Lagw;

    return-void

    .line 0
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 1
    const-string p2, "Null apps"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Lcsi;Lcsi;Lahe;Lagw;)Lagn;
    .locals 1

    new-instance v0, Lagn;

    .line 12
    invoke-direct {v0, p0, p1, p2, p3}, Lagn;-><init>(Lcsi;Lcsi;Lahe;Lagw;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 2
    :cond_0
    instance-of v1, p1, Lagn;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 3
    check-cast p1, Lagn;

    iget-object v1, p0, Lagn;->a:Lcsi;

    iget-object v3, p1, Lagn;->a:Lcsi;

    .line 4
    invoke-static {v1, v3}, Lcsy;->a(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lagn;->b:Lcsi;

    if-nez v1, :cond_1

    iget-object v1, p1, Lagn;->b:Lcsi;

    if-nez v1, :cond_4

    goto :goto_0

    .line 6
    :cond_1
    iget-object v3, p1, Lagn;->b:Lcsi;

    .line 5
    invoke-static {v1, v3}, Lcsy;->a(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4
    :goto_0
    iget-object v1, p0, Lagn;->c:Lahe;

    if-nez v1, :cond_2

    iget-object v1, p1, Lagn;->c:Lahe;

    if-nez v1, :cond_4

    goto :goto_1

    .line 7
    :cond_2
    iget-object v3, p1, Lagn;->c:Lahe;

    .line 6
    invoke-virtual {v1, v3}, Lahe;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    .line 4
    :cond_3
    :goto_1
    iget-object v1, p0, Lagn;->d:Lagw;

    iget-object p1, p1, Lagn;->d:Lagw;

    .line 7
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v0

    .line 6
    :cond_4
    :goto_2
    return v2

    .line 5
    :cond_5
    return v2
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lagn;->a:Lcsi;

    .line 8
    invoke-virtual {v0}, Lcsi;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    iget-object v2, p0, Lagn;->b:Lcsi;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v2}, Lcsi;->hashCode()I

    move-result v2

    .line 8
    :goto_0
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget-object v2, p0, Lagn;->c:Lahe;

    if-nez v2, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v2}, Lahe;->hashCode()I

    move-result v3

    .line 8
    :goto_1
    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    iget-object v1, p0, Lagn;->d:Lagw;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lagn;->a:Lcsi;

    .line 11
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lagn;->b:Lcsi;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lagn;->c:Lahe;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lagn;->d:Lagw;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x49

    add-int/2addr v4, v5

    add-int/2addr v4, v6

    add-int/2addr v4, v7

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "DeviceBackupInfo{apps="

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", backupStats="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", contactsBackupInfo="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", g1BackupInfo="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
