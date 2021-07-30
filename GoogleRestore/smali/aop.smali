.class public final Laop;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/util/Comparator;

.field private static final n:Laqd;


# instance fields
.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:J

.field public g:Landroid/os/Bundle;

.field public h:Landroid/accounts/Account;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:I

.field public l:Z

.field public m:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lacw;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "AppDetails"

    aput-object v3, v1, v2

    .line 1
    invoke-direct {v0, v1}, Lacw;-><init>([Ljava/lang/String;)V

    sput-object v0, Laop;->n:Laqd;

    .line 2
    new-instance v0, Laoo;

    invoke-direct {v0}, Laoo;-><init>()V

    sput-object v0, Laop;->a:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {}, Lcsi;->f()Lcsi;

    .line 5
    invoke-static {}, Lcsi;->f()Lcsi;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;Landroid/accounts/Account;Ljava/lang/String;IZI)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v3, "install_size"

    const-string v4, "permissions"

    const-string v5, "title"

    const-string v6, "has_purchases"

    const-string v7, "has_runtime_permissions"

    const-string v8, "developer_name"

    const/4 v9, 0x0

    if-eqz p5, :cond_a

    .line 40
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Laop;->c:Ljava/lang/String;

    .line 41
    const-string v5, "package"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Laop;->e:Ljava/lang/String;

    iput v9, v1, Laop;->m:I

    iget-object v10, v1, Laop;->c:Ljava/lang/String;

    if-eqz v10, :cond_9

    if-eqz v5, :cond_9

    .line 42
    nop

    .line 43
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v1, Laop;->f:J

    .line 44
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 45
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Laop;->d:Ljava/lang/String;

    :cond_0
    nop

    .line 46
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 47
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    :cond_1
    nop

    .line 48
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 49
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    if-nez v3, :cond_2

    .line 50
    invoke-static {}, Lcsi;->f()Lcsi;

    goto :goto_1

    .line 65
    :cond_2
    array-length v4, v3

    .line 51
    invoke-static {}, Lcsi;->h()Lcsf;

    move-result-object v5

    :goto_0
    if-ge v9, v4, :cond_4

    .line 52
    aget-object v7, v3, v9

    .line 53
    check-cast v7, Landroid/os/Bundle;

    .line 54
    const-string v8, "permission_title"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 55
    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcsf;->b(Ljava/lang/Object;)V

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 56
    :cond_4
    invoke-virtual {v5}, Lcsf;->a()Lcsi;

    goto :goto_1

    .line 57
    :cond_5
    invoke-static {}, Lcsi;->f()Lcsi;

    .line 58
    :goto_1
    invoke-static {}, Lcsi;->f()Lcsi;

    .line 59
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 60
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    :cond_6
    nop

    .line 61
    const-string v3, "icon"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 62
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Laop;->i:Ljava/lang/String;

    :cond_7
    nop

    .line 63
    const-string v3, "doc"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    if-eqz v3, :cond_8

    .line 64
    :try_start_0
    invoke-static {}, Ldjr;->b()Ldjr;

    move-result-object v4

    sget-object v5, Laus;->a:Laus;

    .line 65
    invoke-static {v5, v3, v4}, Ldkd;->a(Ldkd;[BLdjr;)Ldkd;

    move-result-object v3

    check-cast v3, Laus;
    :try_end_0
    .catch Ldkn; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 28
    :catch_0
    move-exception v0

    new-instance v2, Laoy;

    .line 66
    invoke-direct {v2, v0}, Laoy;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 65
    :cond_8
    :goto_2
    iput-object v2, v1, Laop;->h:Landroid/accounts/Account;

    iput-object v0, v1, Laop;->g:Landroid/os/Bundle;

    return-void

    .line 41
    :cond_9
    new-instance v0, Laoy;

    .line 42
    invoke-direct {v0}, Laoy;-><init>()V

    throw v0

    .line 57
    :cond_a
    nop

    .line 6
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Laop;->c:Ljava/lang/String;

    .line 7
    const-string v10, "package_name"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Laop;->e:Ljava/lang/String;

    move/from16 v11, p6

    iput v11, v1, Laop;->m:I

    iget-object v11, v1, Laop;->c:Ljava/lang/String;

    if-eqz v11, :cond_18

    if-eqz v10, :cond_18

    .line 8
    nop

    .line 9
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v1, Laop;->f:J

    .line 10
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 11
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Laop;->d:Ljava/lang/String;

    :cond_b
    nop

    .line 12
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 13
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    :cond_c
    nop

    .line 14
    const-string v3, "permission_buckets"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 15
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    if-nez v3, :cond_d

    .line 16
    invoke-static {}, Lcsi;->f()Lcsi;

    .line 17
    invoke-static {}, Lcsi;->f()Lcsi;

    goto :goto_6

    .line 39
    :cond_d
    array-length v7, v3

    .line 18
    invoke-static {}, Lcsi;->h()Lcsf;

    move-result-object v8

    .line 19
    invoke-static {}, Lcsi;->h()Lcsf;

    move-result-object v10

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v7, :cond_10

    .line 20
    aget-object v12, v3, v11

    .line 21
    check-cast v12, Landroid/os/Bundle;

    .line 22
    invoke-virtual {v12, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcsf;->b(Ljava/lang/Object;)V

    .line 23
    invoke-virtual {v12, v4}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v12

    if-nez v12, :cond_f

    :cond_e
    goto :goto_5

    :cond_f
    array-length v13, v12

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v13, :cond_e

    .line 24
    aget-object v15, v12, v14

    .line 25
    check-cast v15, Landroid/os/Bundle;

    .line 26
    const-string v9, "name"

    invoke-virtual {v15, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcsf;->b(Ljava/lang/Object;)V

    add-int/lit8 v14, v14, 0x1

    const/4 v9, 0x0

    goto :goto_4

    .line 23
    :goto_5
    add-int/lit8 v11, v11, 0x1

    const/4 v9, 0x0

    goto :goto_3

    .line 27
    :cond_10
    invoke-virtual {v8}, Lcsf;->a()Lcsi;

    .line 28
    invoke-virtual {v10}, Lcsf;->a()Lcsi;

    goto :goto_6

    .line 29
    :cond_11
    invoke-static {}, Lcsi;->f()Lcsi;

    .line 30
    invoke-static {}, Lcsi;->f()Lcsi;

    .line 17
    :goto_6
    nop

    .line 31
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 32
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    :cond_12
    nop

    .line 33
    const-string v3, "icon_url"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 34
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Laop;->i:Ljava/lang/String;

    :cond_13
    nop

    .line 35
    const-string v3, "availability"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 36
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_14

    const/16 v4, 0x18

    if-le v3, v4, :cond_15

    :cond_14
    sget-object v4, Laop;->n:Laqd;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 37
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const-string v3, "Unknown availability restriction %d"

    invoke-virtual {v4, v3, v5}, Laqd;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, -0x1

    :cond_15
    iput v3, v1, Laop;->b:I

    .line 38
    :cond_16
    sget-object v3, Land;->ab:Lccv;

    invoke-virtual {v3}, Lccv;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 39
    const-string v3, "is_required"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v1, Laop;->l:Z

    :cond_17
    iput-object v2, v1, Laop;->h:Landroid/accounts/Account;

    iput-object v0, v1, Laop;->g:Landroid/os/Bundle;

    move-object/from16 v0, p3

    iput-object v0, v1, Laop;->j:Ljava/lang/String;

    move/from16 v0, p4

    iput v0, v1, Laop;->k:I

    return-void

    .line 7
    :cond_18
    new-instance v0, Laoy;

    .line 8
    invoke-direct {v0}, Laoy;-><init>()V

    goto :goto_8

    :goto_7
    throw v0

    :goto_8
    goto :goto_7
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 67
    instance-of v0, p1, Laop;

    if-eqz v0, :cond_1

    iget-object v0, p0, Laop;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 68
    check-cast p1, Laop;

    iget-object p1, p1, Laop;->e:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 69
    :cond_0
    check-cast p1, Laop;

    const/4 p1, 0x0

    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Laop;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0

    .line 0
    :cond_0
    const/4 v0, 0x0

    .line 71
    throw v0
.end method
