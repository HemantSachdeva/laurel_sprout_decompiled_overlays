.class public final enum Lazm;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Ldkf;


# static fields
.field public static final enum a:Lazm;

.field public static final enum b:Lazm;

.field public static final enum c:Lazm;

.field public static final enum d:Lazm;

.field public static final enum e:Lazm;

.field public static final enum f:Lazm;

.field public static final enum g:Lazm;

.field public static final enum h:Lazm;

.field public static final enum i:Lazm;

.field public static final enum j:Lazm;

.field public static final enum k:Lazm;

.field public static final enum l:Lazm;

.field public static final enum m:Lazm;

.field public static final enum n:Lazm;

.field public static final enum o:Lazm;

.field public static final enum p:Lazm;

.field public static final enum q:Lazm;

.field public static final enum r:Lazm;

.field public static final enum s:Lazm;

.field private static final synthetic u:[Lazm;


# instance fields
.field private final t:I


# direct methods
.method static constructor <clinit>()V
    .locals 22

    new-instance v0, Lazm;

    .line 1
    const-string v1, "REQUEST_ERROR_TYPE_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lazm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lazm;->a:Lazm;

    new-instance v1, Lazm;

    .line 2
    const-string v3, "NON_200_RESPONSE_CODE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lazm;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lazm;->b:Lazm;

    new-instance v3, Lazm;

    .line 3
    const-string v5, "NOT_SCHEDULED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lazm;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lazm;->c:Lazm;

    new-instance v5, Lazm;

    .line 4
    const-string v7, "NO_ACCOUNT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lazm;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lazm;->d:Lazm;

    new-instance v7, Lazm;

    .line 5
    const-string v9, "NO_AUTH_TOKEN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lazm;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lazm;->e:Lazm;

    new-instance v9, Lazm;

    .line 6
    const-string v11, "NO_ANDROID_ID"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lazm;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lazm;->f:Lazm;

    new-instance v11, Lazm;

    .line 7
    const-string v13, "ACCOUNT_EXCEPTION"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lazm;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lazm;->g:Lazm;

    new-instance v13, Lazm;

    .line 8
    const-string v15, "AUTH_EXCEPTION"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lazm;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lazm;->h:Lazm;

    new-instance v15, Lazm;

    .line 9
    const-string v14, "IO_EXCEPTION"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lazm;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lazm;->i:Lazm;

    new-instance v14, Lazm;

    .line 10
    const-string v12, "OPERATION_CANCELLED"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lazm;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lazm;->j:Lazm;

    new-instance v12, Lazm;

    .line 11
    const-string v10, "LOCAL_IO_EXCEPTION"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lazm;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lazm;->k:Lazm;

    new-instance v10, Lazm;

    .line 12
    const-string v8, "AUTH_TOKEN_IO_EXCEPTION"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lazm;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lazm;->l:Lazm;

    new-instance v8, Lazm;

    .line 13
    const-string v6, "SERVER_UNINITIALIZED"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v4}, Lazm;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lazm;->m:Lazm;

    new-instance v6, Lazm;

    .line 14
    const-string v4, "POLICY_EXCEPTION"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2, v2}, Lazm;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lazm;->n:Lazm;

    new-instance v4, Lazm;

    .line 15
    const-string v2, "SIZE_QUOTA_EXCEPTION"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6, v6}, Lazm;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lazm;->o:Lazm;

    new-instance v2, Lazm;

    .line 16
    const-string v6, "SCOTTY_UPLOAD_FAILED"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4, v4}, Lazm;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lazm;->p:Lazm;

    new-instance v6, Lazm;

    .line 17
    const-string v4, "RESPONSE_MISSING_DOC_ID"

    move-object/from16 v19, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2, v2}, Lazm;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lazm;->q:Lazm;

    new-instance v4, Lazm;

    .line 18
    const-string v2, "DISABLED"

    move-object/from16 v20, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6, v6}, Lazm;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lazm;->r:Lazm;

    new-instance v2, Lazm;

    .line 19
    const-string v6, "UNEXPECTED_UNENCRYPTED_BACKUP"

    move-object/from16 v21, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4, v4}, Lazm;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lazm;->s:Lazm;

    const/16 v6, 0x13

    new-array v6, v6, [Lazm;

    const/16 v16, 0x0

    aput-object v0, v6, v16

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    const/16 v0, 0xc

    aput-object v8, v6, v0

    const/16 v0, 0xd

    aput-object v17, v6, v0

    const/16 v0, 0xe

    aput-object v18, v6, v0

    const/16 v0, 0xf

    aput-object v19, v6, v0

    const/16 v0, 0x10

    aput-object v20, v6, v0

    const/16 v0, 0x11

    aput-object v21, v6, v0

    aput-object v2, v6, v4

    sput-object v6, Lazm;->u:[Lazm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lazm;->t:I

    return-void
.end method

.method public static a(I)Lazm;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lazm;->s:Lazm;

    return-object p0

    :pswitch_1
    sget-object p0, Lazm;->r:Lazm;

    return-object p0

    :pswitch_2
    sget-object p0, Lazm;->q:Lazm;

    return-object p0

    :pswitch_3
    sget-object p0, Lazm;->p:Lazm;

    return-object p0

    :pswitch_4
    sget-object p0, Lazm;->o:Lazm;

    return-object p0

    :pswitch_5
    sget-object p0, Lazm;->n:Lazm;

    return-object p0

    :pswitch_6
    sget-object p0, Lazm;->m:Lazm;

    return-object p0

    :pswitch_7
    sget-object p0, Lazm;->l:Lazm;

    return-object p0

    :pswitch_8
    sget-object p0, Lazm;->k:Lazm;

    return-object p0

    :pswitch_9
    sget-object p0, Lazm;->j:Lazm;

    return-object p0

    :pswitch_a
    sget-object p0, Lazm;->i:Lazm;

    return-object p0

    :pswitch_b
    sget-object p0, Lazm;->h:Lazm;

    return-object p0

    :pswitch_c
    sget-object p0, Lazm;->g:Lazm;

    return-object p0

    :pswitch_d
    sget-object p0, Lazm;->f:Lazm;

    return-object p0

    :pswitch_e
    sget-object p0, Lazm;->e:Lazm;

    return-object p0

    :pswitch_f
    sget-object p0, Lazm;->d:Lazm;

    return-object p0

    :pswitch_10
    sget-object p0, Lazm;->c:Lazm;

    return-object p0

    :pswitch_11
    sget-object p0, Lazm;->b:Lazm;

    return-object p0

    :pswitch_12
    sget-object p0, Lazm;->a:Lazm;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
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

    sget-object v0, Lazl;->a:Ldkh;

    return-object v0
.end method

.method public static values()[Lazm;
    .locals 1

    sget-object v0, Lazm;->u:[Lazm;

    .line 28
    invoke-virtual {v0}, [Lazm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lazm;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lazm;->t:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 23
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lazm;->t:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {p0}, Lazm;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
