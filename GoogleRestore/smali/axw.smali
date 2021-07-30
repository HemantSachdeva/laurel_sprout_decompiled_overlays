.class public final enum Laxw;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Ldkf;


# static fields
.field public static final enum a:Laxw;

.field public static final enum b:Laxw;

.field public static final enum c:Laxw;

.field public static final enum d:Laxw;

.field public static final enum e:Laxw;

.field public static final enum f:Laxw;

.field public static final enum g:Laxw;

.field public static final enum h:Laxw;

.field public static final enum i:Laxw;

.field public static final enum j:Laxw;

.field public static final enum k:Laxw;

.field public static final enum l:Laxw;

.field public static final enum m:Laxw;

.field public static final enum n:Laxw;

.field public static final enum o:Laxw;

.field private static final synthetic q:[Laxw;


# instance fields
.field private final p:I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    new-instance v0, Laxw;

    .line 1
    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Laxw;-><init>(Ljava/lang/String;II)V

    sput-object v0, Laxw;->a:Laxw;

    new-instance v1, Laxw;

    .line 2
    const-string v3, "FINISHED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Laxw;-><init>(Ljava/lang/String;II)V

    sput-object v1, Laxw;->b:Laxw;

    new-instance v3, Laxw;

    .line 3
    const-string v5, "CANCELLED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Laxw;-><init>(Ljava/lang/String;II)V

    sput-object v3, Laxw;->c:Laxw;

    new-instance v5, Laxw;

    .line 4
    const-string v7, "TRANSFER_FAILURE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Laxw;-><init>(Ljava/lang/String;II)V

    sput-object v5, Laxw;->d:Laxw;

    new-instance v7, Laxw;

    .line 5
    const-string v9, "QUOTA_EXCEEDED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Laxw;-><init>(Ljava/lang/String;II)V

    sput-object v7, Laxw;->e:Laxw;

    new-instance v9, Laxw;

    .line 6
    const-string v11, "PREFLIGHT_QUOTA_EXCEEDED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Laxw;-><init>(Ljava/lang/String;II)V

    sput-object v9, Laxw;->f:Laxw;

    new-instance v11, Laxw;

    .line 7
    const-string v13, "DOLLY_CONSENT_FAILURE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Laxw;-><init>(Ljava/lang/String;II)V

    sput-object v11, Laxw;->g:Laxw;

    new-instance v13, Laxw;

    .line 8
    const-string v15, "PACKAGE_CONSENT_FAILURE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Laxw;-><init>(Ljava/lang/String;II)V

    sput-object v13, Laxw;->h:Laxw;

    new-instance v15, Laxw;

    .line 9
    const-string v14, "OTHER_ELIGIBILITY_FAILURE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Laxw;-><init>(Ljava/lang/String;II)V

    sput-object v15, Laxw;->i:Laxw;

    new-instance v14, Laxw;

    .line 10
    const-string v12, "IN_BACKOFF_FAILURE"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Laxw;-><init>(Ljava/lang/String;II)V

    sput-object v14, Laxw;->j:Laxw;

    new-instance v12, Laxw;

    .line 11
    const-string v10, "ESTIMATED_SIZE_ZERO_BYTES"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Laxw;-><init>(Ljava/lang/String;II)V

    sput-object v12, Laxw;->k:Laxw;

    new-instance v10, Laxw;

    .line 12
    const-string v8, "QUOTA_EXCEEDED_PREVIOUSLY"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Laxw;-><init>(Ljava/lang/String;II)V

    sput-object v10, Laxw;->l:Laxw;

    new-instance v8, Laxw;

    .line 13
    const-string v6, "DIFF_STREAM_CREATION_IO_EXCEPTION"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v4}, Laxw;-><init>(Ljava/lang/String;II)V

    sput-object v8, Laxw;->m:Laxw;

    new-instance v6, Laxw;

    .line 14
    const-string v4, "UNEXPECTED_UNENCRYPTED_BACKUP"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2, v2}, Laxw;-><init>(Ljava/lang/String;II)V

    sput-object v6, Laxw;->n:Laxw;

    new-instance v4, Laxw;

    .line 15
    const-string v2, "BACKUP_UNCHANGED"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6, v6}, Laxw;-><init>(Ljava/lang/String;II)V

    sput-object v4, Laxw;->o:Laxw;

    const/16 v2, 0xf

    new-array v2, v2, [Laxw;

    const/16 v16, 0x0

    aput-object v0, v2, v16

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v8, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    aput-object v4, v2, v6

    sput-object v2, Laxw;->q:[Laxw;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Laxw;->p:I

    return-void
.end method

.method public static a(I)Laxw;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Laxw;->o:Laxw;

    return-object p0

    :pswitch_1
    sget-object p0, Laxw;->n:Laxw;

    return-object p0

    :pswitch_2
    sget-object p0, Laxw;->m:Laxw;

    return-object p0

    :pswitch_3
    sget-object p0, Laxw;->l:Laxw;

    return-object p0

    :pswitch_4
    sget-object p0, Laxw;->k:Laxw;

    return-object p0

    :pswitch_5
    sget-object p0, Laxw;->j:Laxw;

    return-object p0

    :pswitch_6
    sget-object p0, Laxw;->i:Laxw;

    return-object p0

    :pswitch_7
    sget-object p0, Laxw;->h:Laxw;

    return-object p0

    :pswitch_8
    sget-object p0, Laxw;->g:Laxw;

    return-object p0

    :pswitch_9
    sget-object p0, Laxw;->f:Laxw;

    return-object p0

    :pswitch_a
    sget-object p0, Laxw;->e:Laxw;

    return-object p0

    :pswitch_b
    sget-object p0, Laxw;->d:Laxw;

    return-object p0

    :pswitch_c
    sget-object p0, Laxw;->c:Laxw;

    return-object p0

    :pswitch_d
    sget-object p0, Laxw;->b:Laxw;

    return-object p0

    :pswitch_e
    sget-object p0, Laxw;->a:Laxw;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b()Ldkh;
    .locals 1

    sget-object v0, Laxv;->a:Ldkh;

    return-object v0
.end method

.method public static values()[Laxw;
    .locals 1

    sget-object v0, Laxw;->q:[Laxw;

    .line 24
    invoke-virtual {v0}, [Laxw;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Laxw;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Laxw;->p:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Laxw;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {p0}, Laxw;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
