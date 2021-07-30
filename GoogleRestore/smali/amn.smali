.class public final enum Lamn;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum a:Lamn;

.field public static final enum b:Lamn;

.field public static final enum c:Lamn;

.field public static final enum d:Lamn;

.field public static final enum e:Lamn;

.field public static final enum f:Lamn;

.field public static final enum g:Lamn;

.field public static final enum h:Lamn;

.field public static final enum i:Lamn;

.field public static final enum j:Lamn;

.field public static final enum k:Lamn;

.field public static final enum l:Lamn;

.field public static final enum m:Lamn;

.field public static final enum n:Lamn;

.field public static final enum o:Lamn;

.field public static final r:Landroid/util/SparseArray;

.field private static final synthetic s:[Lamn;


# instance fields
.field public final p:I

.field public final q:Lbcu;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    new-instance v0, Lamn;

    .line 1
    sget-object v1, Lbcu;->b:Lbcu;

    const-string v2, "CANCEL_FLOW"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v3, v1}, Lamn;-><init>(Ljava/lang/String;IILbcu;)V

    sput-object v0, Lamn;->a:Lamn;

    new-instance v1, Lamn;

    sget-object v2, Lbcu;->g:Lbcu;

    .line 2
    const-string v4, "USB_MIGRATION_DEFAULT"

    const/4 v5, 0x1

    const/16 v6, 0x65

    invoke-direct {v1, v4, v5, v6, v2}, Lamn;-><init>(Ljava/lang/String;IILbcu;)V

    sput-object v1, Lamn;->b:Lamn;

    new-instance v2, Lamn;

    sget-object v4, Lbcu;->e:Lbcu;

    .line 3
    const-string v7, "OTHER_WAYS_TO_RESTORE"

    const/4 v8, 0x2

    const/16 v9, 0x66

    invoke-direct {v2, v7, v8, v9, v4}, Lamn;-><init>(Ljava/lang/String;IILbcu;)V

    sput-object v2, Lamn;->c:Lamn;

    new-instance v4, Lamn;

    sget-object v7, Lbcu;->i:Lbcu;

    .line 4
    const-string v9, "USB_MIGRATION_ADD_ACCOUNT"

    const/4 v10, 0x3

    const/16 v11, 0x67

    invoke-direct {v4, v9, v10, v11, v7}, Lamn;-><init>(Ljava/lang/String;IILbcu;)V

    sput-object v4, Lamn;->d:Lamn;

    new-instance v7, Lamn;

    sget-object v9, Lbcu;->c:Lbcu;

    .line 5
    const-string v11, "SET_UP_AS_NEW"

    const/4 v12, 0x4

    const/16 v13, 0x68

    invoke-direct {v7, v11, v12, v13, v9}, Lamn;-><init>(Ljava/lang/String;IILbcu;)V

    sput-object v7, Lamn;->e:Lamn;

    new-instance v9, Lamn;

    sget-object v11, Lbcu;->o:Lbcu;

    .line 6
    const-string v13, "SET_UP_AS_NEW_WITH_ESIM"

    const/4 v14, 0x5

    const/16 v15, 0x70

    invoke-direct {v9, v13, v14, v15, v11}, Lamn;-><init>(Ljava/lang/String;IILbcu;)V

    sput-object v9, Lamn;->f:Lamn;

    new-instance v11, Lamn;

    sget-object v13, Lbcu;->j:Lbcu;

    .line 7
    const-string v15, "RESTORE_WITH_DEVICE"

    const/4 v14, 0x6

    const/16 v12, 0x69

    invoke-direct {v11, v15, v14, v12, v13}, Lamn;-><init>(Ljava/lang/String;IILbcu;)V

    sput-object v11, Lamn;->g:Lamn;

    new-instance v12, Lamn;

    sget-object v13, Lbcu;->k:Lbcu;

    .line 8
    const-string v15, "RESTORE_WITH_IOS"

    const/4 v14, 0x7

    const/16 v10, 0x6a

    invoke-direct {v12, v15, v14, v10, v13}, Lamn;-><init>(Ljava/lang/String;IILbcu;)V

    sput-object v12, Lamn;->h:Lamn;

    new-instance v10, Lamn;

    sget-object v13, Lbcu;->h:Lbcu;

    .line 9
    const-string v15, "CLOUD_RESTORE"

    const/16 v14, 0x8

    const/16 v8, 0x6b

    invoke-direct {v10, v15, v14, v8, v13}, Lamn;-><init>(Ljava/lang/String;IILbcu;)V

    sput-object v10, Lamn;->i:Lamn;

    new-instance v8, Lamn;

    sget-object v13, Lbcu;->f:Lbcu;

    .line 10
    const-string v15, "DEMO_MODE"

    const/16 v14, 0x9

    const/16 v5, 0x6c

    invoke-direct {v8, v15, v14, v5, v13}, Lamn;-><init>(Ljava/lang/String;IILbcu;)V

    sput-object v8, Lamn;->j:Lamn;

    new-instance v5, Lamn;

    sget-object v13, Lbcu;->l:Lbcu;

    .line 11
    const-string v15, "DPM_USER_COMPLETE"

    const/16 v14, 0xa

    const/16 v3, 0x6d

    invoke-direct {v5, v15, v14, v3, v13}, Lamn;-><init>(Ljava/lang/String;IILbcu;)V

    sput-object v5, Lamn;->k:Lamn;

    new-instance v3, Lamn;

    sget-object v13, Lbcu;->m:Lbcu;

    .line 12
    const-string v15, "COMPLETE_WITH_WORK_PROFILE"

    const/16 v14, 0xb

    const/16 v6, 0x6e

    invoke-direct {v3, v15, v14, v6, v13}, Lamn;-><init>(Ljava/lang/String;IILbcu;)V

    sput-object v3, Lamn;->l:Lamn;

    new-instance v6, Lamn;

    sget-object v13, Lbcu;->i:Lbcu;

    .line 13
    const-string v15, "WIFI_MIGRATION_ADD_ACCOUNT"

    const/16 v14, 0xc

    move-object/from16 v16, v3

    const/16 v3, 0x6f

    invoke-direct {v6, v15, v14, v3, v13}, Lamn;-><init>(Ljava/lang/String;IILbcu;)V

    sput-object v6, Lamn;->m:Lamn;

    new-instance v3, Lamn;

    sget-object v13, Lbcu;->n:Lbcu;

    .line 14
    const-string v15, "WIFI_MIGRATION_DEFAULT"

    const/16 v14, 0xd

    move-object/from16 v17, v6

    const/16 v6, 0x65

    invoke-direct {v3, v15, v14, v6, v13}, Lamn;-><init>(Ljava/lang/String;IILbcu;)V

    sput-object v3, Lamn;->n:Lamn;

    new-instance v6, Lamn;

    sget-object v13, Lbcu;->p:Lbcu;

    .line 15
    const-string v15, "OEM_RESTORE"

    const/16 v14, 0xe

    move-object/from16 v18, v3

    const/16 v3, 0x71

    invoke-direct {v6, v15, v14, v3, v13}, Lamn;-><init>(Ljava/lang/String;IILbcu;)V

    sput-object v6, Lamn;->o:Lamn;

    const/16 v3, 0xf

    new-array v3, v3, [Lamn;

    const/4 v13, 0x0

    aput-object v0, v3, v13

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    const/4 v0, 0x3

    aput-object v4, v3, v0

    const/4 v0, 0x4

    aput-object v7, v3, v0

    const/4 v0, 0x5

    aput-object v9, v3, v0

    const/4 v0, 0x6

    aput-object v11, v3, v0

    const/4 v0, 0x7

    aput-object v12, v3, v0

    const/16 v0, 0x8

    aput-object v10, v3, v0

    const/16 v0, 0x9

    aput-object v8, v3, v0

    const/16 v0, 0xa

    aput-object v5, v3, v0

    const/16 v0, 0xb

    aput-object v16, v3, v0

    const/16 v0, 0xc

    aput-object v17, v3, v0

    const/16 v0, 0xd

    aput-object v18, v3, v0

    aput-object v6, v3, v14

    sput-object v3, Lamn;->s:[Lamn;

    new-instance v0, Landroid/util/SparseArray;

    .line 16
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lamn;->r:Landroid/util/SparseArray;

    .line 17
    sget-object v0, Lbzh;->b:Lbzh;

    .line 18
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 19
    invoke-static {}, Lcqt;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-wide v3, v0, Lbzh;->d:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_1

    .line 20
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    cmp-long v7, v1, v3

    if-gtz v7, :cond_1

    iget-object v3, v0, Lbzh;->j:Lbzc;

    iget-object v3, v3, Lbzc;->b:Ljava/lang/Long;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lbzh;->j:Lbzc;

    iget-object v3, v3, Lbzc;->b:Ljava/lang/Long;

    .line 21
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v7, v1, v3

    if-gtz v7, :cond_1

    :cond_0
    iget-wide v3, v0, Lbzh;->f:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    iput-wide v1, v0, Lbzh;->f:J

    iget-object v0, v0, Lbzh;->i:Lbzg;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lbzg;->c:Z

    .line 22
    :cond_1
    invoke-static {}, Lamn;->values()[Lamn;

    move-result-object v0

    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v2, v0, v3

    sget-object v4, Lamn;->r:Landroid/util/SparseArray;

    .line 23
    iget v5, v2, Lamn;->p:I

    invoke-virtual {v4, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILbcu;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lamn;->p:I

    iput-object p4, p0, Lamn;->q:Lbcu;

    return-void
.end method

.method public static values()[Lamn;
    .locals 1

    sget-object v0, Lamn;->s:[Lamn;

    .line 25
    invoke-virtual {v0}, [Lamn;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lamn;

    return-object v0
.end method
