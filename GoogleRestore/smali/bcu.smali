.class public final enum Lbcu;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Ldkf;


# static fields
.field public static final enum a:Lbcu;

.field public static final enum b:Lbcu;

.field public static final enum c:Lbcu;

.field public static final enum d:Lbcu;

.field public static final enum e:Lbcu;

.field public static final enum f:Lbcu;

.field public static final enum g:Lbcu;

.field public static final enum h:Lbcu;

.field public static final enum i:Lbcu;

.field public static final enum j:Lbcu;

.field public static final enum k:Lbcu;

.field public static final enum l:Lbcu;

.field public static final enum m:Lbcu;

.field public static final enum n:Lbcu;

.field public static final enum o:Lbcu;

.field public static final enum p:Lbcu;

.field private static final synthetic r:[Lbcu;


# instance fields
.field public final q:I


# direct methods
.method static constructor <clinit>()V
    .locals 19

    new-instance v0, Lbcu;

    .line 1
    const-string v1, "UNKNOWN_TRIGGER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lbcu;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbcu;->a:Lbcu;

    new-instance v1, Lbcu;

    .line 2
    const-string v3, "BACK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lbcu;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lbcu;->b:Lbcu;

    new-instance v3, Lbcu;

    .line 3
    const-string v5, "DONT_COPY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lbcu;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lbcu;->c:Lbcu;

    new-instance v5, Lbcu;

    .line 4
    const-string v7, "USB_RESTORE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lbcu;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lbcu;->d:Lbcu;

    new-instance v7, Lbcu;

    .line 5
    const-string v9, "RESTORE_ANOTHER_WAY"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lbcu;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lbcu;->e:Lbcu;

    new-instance v9, Lbcu;

    .line 6
    const-string v11, "DEMO_MODE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lbcu;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lbcu;->f:Lbcu;

    new-instance v11, Lbcu;

    .line 7
    const-string v13, "EXIT_USB_RESTORE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lbcu;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lbcu;->g:Lbcu;

    new-instance v13, Lbcu;

    .line 8
    const-string v15, "CLOUD_RESTORE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lbcu;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lbcu;->h:Lbcu;

    new-instance v15, Lbcu;

    .line 9
    const-string v14, "ADD_ACCOUNT"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lbcu;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lbcu;->i:Lbcu;

    new-instance v14, Lbcu;

    .line 10
    const-string v12, "SMART_SETUP"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lbcu;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lbcu;->j:Lbcu;

    new-instance v12, Lbcu;

    .line 11
    const-string v10, "RESTORE_WITH_IOS"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lbcu;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lbcu;->k:Lbcu;

    new-instance v10, Lbcu;

    .line 12
    const-string v8, "DPM_USER_COMPLETE"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lbcu;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lbcu;->l:Lbcu;

    new-instance v8, Lbcu;

    .line 13
    const-string v6, "COMPLETE_WITH_WORK_PROFILE"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v4}, Lbcu;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lbcu;->m:Lbcu;

    new-instance v6, Lbcu;

    .line 14
    const-string v4, "EXIT_WIFI_RESTORE"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2, v2}, Lbcu;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lbcu;->n:Lbcu;

    new-instance v4, Lbcu;

    .line 15
    const-string v2, "DONT_COPY_WITH_ESIM"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6, v6}, Lbcu;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lbcu;->o:Lbcu;

    new-instance v2, Lbcu;

    .line 16
    const-string v6, "OEM_RESTORE"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4, v4}, Lbcu;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lbcu;->p:Lbcu;

    const/16 v6, 0x10

    new-array v6, v6, [Lbcu;

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

    aput-object v2, v6, v4

    sput-object v6, Lbcu;->r:[Lbcu;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lbcu;->q:I

    return-void
.end method

.method public static a(I)Lbcu;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lbcu;->p:Lbcu;

    return-object p0

    :pswitch_1
    sget-object p0, Lbcu;->o:Lbcu;

    return-object p0

    :pswitch_2
    sget-object p0, Lbcu;->n:Lbcu;

    return-object p0

    :pswitch_3
    sget-object p0, Lbcu;->m:Lbcu;

    return-object p0

    :pswitch_4
    sget-object p0, Lbcu;->l:Lbcu;

    return-object p0

    :pswitch_5
    sget-object p0, Lbcu;->k:Lbcu;

    return-object p0

    :pswitch_6
    sget-object p0, Lbcu;->j:Lbcu;

    return-object p0

    :pswitch_7
    sget-object p0, Lbcu;->i:Lbcu;

    return-object p0

    :pswitch_8
    sget-object p0, Lbcu;->h:Lbcu;

    return-object p0

    :pswitch_9
    sget-object p0, Lbcu;->g:Lbcu;

    return-object p0

    :pswitch_a
    sget-object p0, Lbcu;->f:Lbcu;

    return-object p0

    :pswitch_b
    sget-object p0, Lbcu;->e:Lbcu;

    return-object p0

    :pswitch_c
    sget-object p0, Lbcu;->d:Lbcu;

    return-object p0

    :pswitch_d
    sget-object p0, Lbcu;->c:Lbcu;

    return-object p0

    :pswitch_e
    sget-object p0, Lbcu;->b:Lbcu;

    return-object p0

    :pswitch_f
    sget-object p0, Lbcu;->a:Lbcu;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

    sget-object v0, Lbct;->a:Ldkh;

    return-object v0
.end method

.method public static values()[Lbcu;
    .locals 1

    sget-object v0, Lbcu;->r:[Lbcu;

    .line 25
    invoke-virtual {v0}, [Lbcu;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbcu;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lbcu;->q:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lbcu;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {p0}, Lbcu;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
